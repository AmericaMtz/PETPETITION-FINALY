package Data;

import DB.DataBase;
import java.io.File;
import java.lang.NullPointerException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Types;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import Model.Razas;
import Model.TiposM;

/**
 *
 * @author angel
 */
@WebServlet(name = "RegistroMascotaServlet", urlPatterns = {"/RMascota"})
public class RegistroMascotaServlet extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DataBase db = new DataBase();
        ArrayList<TiposM> tiposm =new ArrayList<>();
        ArrayList<Razas> razas =new ArrayList<>();
        try{
            db.connect();
            ResultSet rs = db.query("SELECT * from cat_tipos;");
            while(rs.next()){
                tiposm.add(new TiposM(rs.getInt("Id_Tipo"),rs.getString("Nom_Tipo")));
                System.out.println(rs.getInt("Id_Tipo")+ " " + rs.getString("Nom_Tipo"));
            }
            System.out.println("///////////////////////////////////");
            rs = null;
            rs= db.query("SELECT * FROM cat_razas");
            while(rs.next()){
                razas.add(new Razas(rs.getInt("Id_Raza"),rs.getString("Nom_Raza"),rs.getInt("Id_Tipo")));
                System.out.println(rs.getInt("Id_Raza") + " " +rs.getString("Nom_Raza") + " " + rs.getInt("Id_Tipo"));     
            }
            db.closeConnection();
        }catch(SQLException e){
            e.printStackTrace();
        }
        request.setAttribute("tiposm", tiposm);
        request.setAttribute("razas", razas);
        getServletContext().getRequestDispatcher("/RegistroMascota/RMascota.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom = "";    
        String tip= "";
        String Regi="Adopta";
            String raza= "";
            String edad= "";
            String desc= "";
            String sex= "";
            String idraz="";
            String idtip ="";
            String filePath ="";
            String fileN = "";
            boolean exists = false;
            
            if(!ServletFileUpload.isMultipartContent(request)) {
                System.out.println("-----------------------PUESNO-------------------------");
            return ;
        }
        
        DiskFileItemFactory factory = new DiskFileItemFactory();
        
        factory.setSizeThreshold(2097152);
        
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        
        String uploadFolder = getServletContext().getRealPath("")
                + File.separator + "data";
        
        ServletFileUpload upload = new ServletFileUpload(factory);
        
        upload.setSizeMax(2097152);
        
        try {
            List files = upload.parseRequest(request);
            Iterator i = files.iterator();
            while(i.hasNext()) {
                FileItem item;
                item = (FileItem) i.next();
                
                if(!item.isFormField()) {
                    String fileName = System.currentTimeMillis()+".jpg";
                    fileN = fileName;
                    filePath = uploadFolder + File.separator + fileName;
                    File uploadedFile = new File(filePath);
                    System.out.println(filePath);
                    
                    /*
                    Aqui iria su conexion a la base de datos y el query que inserta los blobs dentro de la tabla
                    Solo hay que cambiar en la base de datos el tipo de dato Blob por un String
                    
                    DB db = new DB();
                    db.conectar()
                    db.consulta("INSERT INTO archivos (nombreArchivo) VALUES('"+ filePath +"');");
                    */
                    
                    
                    item.write(uploadedFile);
                    filePath = uploadedFile.getCanonicalPath();
                    System.out.println(fileName);

                    
                }else {
                    String fieldName = item.getFieldName();
                    if(fieldName.equals("nommas")) {
                        nom = item.getString().toUpperCase();
                    }else if(fieldName.equals("tipom")) {
                        tip = item.getString().toUpperCase();
                    }else if(fieldName.equals("razas")) {
                        raza = item.getString().toUpperCase();
                    }else if(fieldName.equals("edadmas")) {
                        edad = item.getString();
                    }else if(fieldName.equals("Descripcion")) {
                        desc = item.getString().toUpperCase();
                    }else if(fieldName.equals("sexo")) {
                        sex = item.getString().toUpperCase();
                    }
                }
            }
            System.out.println("//////////////////////////////////////////////////////////////////OLA//////////////////////////////////////////////////");
                //String img= (request.getParameter("Archivo")).toUpperCase()+" "+(new java.util.Date());
            
            //getServletContext().getRequestDispatcher("/JSP/exito.jsp").forward(request, response);
            
        } catch (FileUploadException e) {
                throw new ServletException(e);
        } catch (Exception e) {
            throw new ServletException(e);
        }
            
                try {
                    DataBase db = new DataBase();
                    db.connect();
                    ResultSet rs = db.query("select Id_Raza from cat_razas where Nom_Raza='"+raza+"';");
                    if(rs.next()){
                        idraz = rs.getString("Id_Raza");
                        System.out.println(idraz);
                    }
                    rs = db.query("select Id_Tipo from cat_Tipos where Nom_Tipo='"+tip+"';");
                    if(rs.next()){
                        idtip = rs.getString("Id_Tipo");
                        System.out.println(idtip);
                    }
                    HttpSession sesion = request.getSession();
                    String dueño = sesion.getAttribute("persona").toString();
                    
                    CallableStatement call = db.procedure("{call sp_Alta_Masc(?,?,?,?,?,?,?,?,?,?)}");
                    System.out.println(nom + " " + sex + " " + edad + " "+desc + " " + filePath);
                    call.setInt(1, 0);
                    call.setString(2, nom);//nombre
                    call.setString(3,Regi);//tipo de registro
                    call.setString(4, sex);//sexo
                    call.setInt(5, Integer.parseInt(idraz));//raza
                    call.setInt(6, Integer.parseInt(edad));//edad
                    call.setString(7, desc);//descripcion
                    call.setString(8, fileN);//imagen
                    call.setString(9, dueño);//dueño
                    
                    call.registerOutParameter(10, Types.INTEGER);
                    call.execute();
                    
                    int resultado = call.getInt(10);
                    System.out.println(resultado);
                    call.close();
                    if(resultado == 1) {
                        request.setAttribute("exists", false);
                    } else if(resultado == 2) {
                        request.setAttribute("exists", true);
                    }
                    db.closeConnection();
                } catch(Exception e) {
                    e.printStackTrace();
                }
                RequestDispatcher rd = request.getRequestDispatcher("MAdopta");
                rd.forward(request, response);
                //getServletContext().getRequestDispatcher("/JSP/MAdopta.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}