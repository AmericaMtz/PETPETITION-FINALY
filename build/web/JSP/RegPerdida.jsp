<%@page import="java.sql.Types"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title></title>
    </head>
    <body>
        <%
           
            String nom = (request.getParameter("Nombre")).toUpperCase();
            String tip = (request.getParameter("Tipo")).toUpperCase();
            String regi= "Busca";
            String raza = (request.getParameter("Raza")).toUpperCase();
            String edad = (request.getParameter("Edad")).toUpperCase();
            String desc = (request.getParameter("Descripcion")).toUpperCase();
            String sex= (request.getParameter("Sexo")).toUpperCase();
            String img= (request.getParameter("Archivo")).toUpperCase()+" "+(new java.util.Date());
            String col=null;
            String idraz="";
            String idtip ="";
            
                Connection con=null;
                Statement sta= null;
                ResultSet r = null;

                try
                {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con= DriverManager.getConnection("jdbc:mysql://localhost/PP","root","n0m3l0");
                    sta= con.createStatement();
                }
                catch(SQLException error) {
                    out.print(error.toString());
                }
                try{
                    r = sta.executeQuery("select Id_Raza from cat_razas where Nom_Raza='"+raza+"';");
                    if(r.next()){
                        idraz = r.getString("Id_Raza");
                    }
                    r = sta.executeQuery("select Id_Tipo from cat_Tipos where Nom_Tipo='"+tip+"';");
                    if(r.next()){
                        idtip = r.getString("Id_Tipo");
                    }
                    
                
                CallableStatement ps = con.prepareCall("{call sp_Alta_Masc(?,?, ?,?, ?,?, ?, ?, ?,?)}");
                    ps.setInt(1, 0);
                    ps.setString(2, nom);
                    ps.setString(3, regi);
                    ps.setString(4, sex);
                    ps.setString(5, idraz);
                    
                    ps.setString(6, edad);
                    ps.setString(7, desc);
                    ps.setString(8, col);
                    ps.setString(9, img);

                    ps.registerOutParameter(10, Types.INTEGER);
                    ps.execute();
                    
                    
                    int resultado = ps.getInt(9);
                    ps.close();
                    if(resultado==1){
                        //out.print("<script> alert('La mascota ha sido agregada.'); </script>");
                    }
                    else
                        if(resultado==2){
                            out.print("<script> alert('La mascota ya había sido registrada.'); </script>");
                           
                        }
                     out.print("<META HTTP-EQUIV='REFRESH' CONTENT='0.00000001;URL=http://localhost:8084/MAdopta?#close'>");
                }catch(SQLException error) {
                    out.print(error.toString());
                }
        %>
    </body>
</html>
