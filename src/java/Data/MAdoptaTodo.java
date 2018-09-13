/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import DB.DataBase;
import Model.Mascota;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
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
@WebServlet(name = "MAdoptaTodo", urlPatterns = {"/MAdoptaTodo"})
public class MAdoptaTodo extends HttpServlet {

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
        ArrayList<Mascota> mascotas = new ArrayList<>();
        try {
            db.connect();
            ResultSet rs =db.query ("SELECT Nom_Mascota,Tipo_Registro,Edad,Descripcion,cat_colonias.Nom_Colonia,cat_delegaciones.Nom_Delegacion,Imagen,dueño,Nom_Raza,Nom_Tipo,NickName,Nom_Persona,Ap_Pat,Ap_Mat,Correo,Num_Telefonico \n" + 
		"from Mascotas \n" +
                "INNER JOIN cat_razas ON Mascotas.Id_Raza = Cat_Razas.Id_Raza \n" +
                "INNER JOIN Cat_Tipos ON cat_razas.Id_Tipo = Cat_Tipos.Id_Tipo  \n" + 
		"INNER JOIN personas on personas.NickName=mascotas.dueño    \n" +
		"inner join cat_delegaciones on cat_delegaciones.Id_Delegacion= personas.Id_Delegacion\n" +
                "inner join cat_colonias on cat_colonias.Id_Colonia=personas.Id_Colonia;");
            while(rs.next()) {
                if((rs.getString("Tipo_Registro")).equals("Adopta")){
                    mascotas.add(new Mascota(rs.getString("Nom_Mascota"), 
                    rs.getString("Tipo_Registro"), 
                    rs.getInt("Edad"),
                    rs.getString("Descripcion"), 
                    rs.getString("cat_colonias.Nom_Colonia"), 
                    rs.getString("cat_delegaciones.Nom_Delegacion"), 
                    rs.getString("Imagen"), 
                    rs.getString("dueño"), 
                    rs.getString("Nom_Raza"), 
                    rs.getString("Nom_Tipo"),
                    rs.getString("NickName"),
                    rs.getString("Nom_Persona"),
                    rs.getString("Ap_Pat"),
                    rs.getString("Ap_Mat"),
                    rs.getString("Correo"),
                    rs.getString("Num_Telefonico")));
                }
            }
            for(Mascota m : mascotas) {
                System.out.println(m.getImagen());
            }
            db.closeConnection();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("mascotas", mascotas);
        getServletContext().getRequestDispatcher("/JSP/MAdoptaTodo.jsp").forward(request, response);
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