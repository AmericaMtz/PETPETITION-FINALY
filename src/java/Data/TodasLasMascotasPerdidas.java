/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import DB.DataBase;
import Model.MascotaBus;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author America Esmeralda
 */
@WebServlet(name = "TodasLasMascotasPerdidas", urlPatterns = {"/TodasLasMascotasPerdidas"})
public class TodasLasMascotasPerdidas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
        ArrayList<MascotaBus> mascotas = new ArrayList<>();
        try {
            db.connect();
            ResultSet rs =db.query("SELECT *\n" +
"	from  MascotasPerdidas" +
"    INNER JOIN cat_razas ON MascotasPerdidas.idRaza = cat_razas.Id_Raza" +
"	 INNER JOIN cat_tipos ON cat_razas.Id_Tipo = cat_tipos.Id_Tipo" +
"    INNER JOIN personas ON personas.NickName = MascotasPerdidas.dueño;");
            int i =1;
            while(rs.next()) {
                    mascotas.add(new MascotaBus(rs.getString("nombre"),
                            rs.getString("descripcion"),
                            rs.getString("recompensa"),
                            rs.getInt("edad"),
                            rs.getString("sexo"),
                            rs.getString("dueño"),
                            rs.getString("Nom_Raza"),
                            rs.getString("Nom_Tipo"),
                            rs.getString("direccion"),
                            rs.getString("fechaExtravio"),
                            rs.getString("imgMascota"),
                            rs.getString("Correo"),
                            rs.getString("Num_Telefonico"),
                            rs.getString("Nom_Persona"),
                            rs.getString("Ap_Pat")));
            }
            for(MascotaBus m : mascotas) {
                System.out.println(m.getImg());
            }
            db.closeConnection();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("mascotas", mascotas);
        getServletContext().getRequestDispatcher("/JSP/TodasMPerdidas.jsp").forward(request, response);
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
        doGet(request, response);
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