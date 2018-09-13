/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import DB.DataBase;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
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

import Model.Servicio;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author angel
 */
@WebServlet(name = "RegistroServicioServlet", urlPatterns = {"/RegistroServicio"})
public class RegistroServicioServlet extends HttpServlet {


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
        ArrayList<Servicio> servicios = new ArrayList<>();
        try {
            db.connect();
            ResultSet rs = db.query("SELECT Propietario, NomServicio, DescServicio, Paseo, Estetica, Estetica, Veterinaria, DescPaseo, DescEstetica, DescVeterinaria, NickName, Nom_Persona, Ap_Pat, Ap_Mat, Correo, Num_Telefonico  from  Servicios  INNER JOIN personas ON personas.NickName = Servicios.Propietario;");
            while(rs.next()) {
                servicios.add(new Servicio(
                        rs.getString("Propietario"),
                        rs.getString("NomServicio"),
                        rs.getString("DescServicio"),
                        rs.getString("Paseo"),
                        rs.getString("Estetica"),
                        rs.getString("Veterinaria"),
                        rs.getString("DescPaseo"),
                        rs.getString("DescEstetica"),
                        rs.getString("DescVeterinaria"),
                        rs.getString("NickName"),
                        rs.getString("Nom_Persona"),
                        rs.getString("Ap_Pat"),
                        rs.getString("Ap_Mat"),
                        rs.getString("Correo"),
                        rs.getString("Num_Telefonico")
                ));
            }
            db.closeConnection();
        } catch(SQLException e) {
            e.printStackTrace();
        }
        /*System.out.println(servicios.get(0).getPropietario());*/
        request.setAttribute("servicios", servicios);
        getServletContext().getRequestDispatcher("/servicios/ServiciosRegistrados/ServiciosREg.jsp").forward(request, response);
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
            String NomSer = "";    
            String DesSer = "";
            String Pase = "";
            String Este = "";
            String Vete = "";
            String DesPase= "";
            String DesEste="";
            String DesVete="";
            int Pa = 0;
            int Es = 0;
            int Ve = 0;

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
                    if(fieldName.equals("nomser")) {
                        NomSer = item.getString();
                    }else if(fieldName.equals("Descripcion")) {
                        DesSer = item.getString();
                    }else if(fieldName.equals("v")) {
                        Vete = item.getString();
                    }else if(fieldName.equals("p")) {
                        Pase = item.getString();
                    }else if(fieldName.equals("e")) {
                        Este = item.getString();
                    }else if(fieldName.equals("DesVete")) {
                        DesVete = item.getString();
                    }else if(fieldName.equals("DesPas")) {
                        DesPase = item.getString();
                    }else if(fieldName.equals("DesEst")) {
                        DesEste = item.getString();
                    }
                    
                    
                    
                }
            }
            System.out.println("//////////////////////////////////////////////////////////////////OLA//////////////////////////////////////////////////");

//String img= (request.getParameter("Archivo")).toUpperCase()+" "+(new java.util.Date());
            
            //getServletContext().getRequestDispatcher("/JPS/exito.jsp").forward(request, response);
            
        } catch (FileUploadException e) {
                throw new ServletException(e);
        } catch (Exception e) {
            throw new ServletException(e);
        }
            
                try {
                    if(Vete.equals("Veterinaria")){
                        Ve = 1;
                    }
                    else{
                        DesVete = "No ofrece el servicio de Veterinaria.";
                    }
                    if(Pase.equals("Paseo")){
                        Pa = 1;
                    }
                    else{
                    DesPase = "No ofrece el servicio de Paseo.";
                    }
                    if(Este.equals("Estetica")){
                        Es = 1;
                    }
                    else
                    {
                        DesEste = "No ofrece el servicio de Estética.";
                    }
                    
                    DataBase db = new DataBase();
                    db.connect();
                 
                    HttpSession sesion = request.getSession();
                    String dueño = sesion.getAttribute("persona").toString();
                    CallableStatement call = db.procedure("{call Alta_Servicios(?,?,?,?,?,?,?,?,?,?)}");
                    
                    call.setInt(1, 0); //Id
                    call.setString(2, dueño);//Propietario
                    call.setString(3, NomSer);//NomServicio
                    call.setString(4, DesSer);//Descripcion del Servicio
                    call.setInt(5, Pa);//Paseo
                    call.setInt(6, Es);//Estetica
                    call.setInt(7, Ve);//Veterinaria
                    call.setString(8, DesPase);//Descripcion Paseo
                    call.setString(9, DesEste);//Descripcion Estetica
                    call.setString(10, DesVete);//Descripcion Veterinaria
                    
                    call.execute();
                    call.close();
                    request.setAttribute("exists", false);
                    db.closeConnection();
                    
                } catch (SQLException e) {
                    throw new ServletException(e);
                }
                //RequestDispatcher rd = request.getRequestDispatcher("../JPS/ServicioPersona.jsp");
                
                //rd.forward(request, response);
                getServletContext().getRequestDispatcher("/JSP/ServicioPersona.jsp").forward(request, response);
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
