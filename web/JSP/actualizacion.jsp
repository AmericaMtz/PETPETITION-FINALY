<%@page import="java.sql.Types"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.CallableStatement"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Registro</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
    </head>
    <body>
        <%
            String correo = request.getParameter("correo");
            String cel = request.getParameter("celu");
            String contra = request.getParameter("contra");
            String colo = request.getParameter("colonias");
            String dele = request.getParameter("delegacion");
            
            if (correo.length()==0){
                correo = null;
            }
            if (contra.length()==0){
                contra = null;
            }
            if (cel.length()==0){
                cel = null;
            }
            
            /*out.print(correo+"<br>");
            out.print(cel+"<br>");
            out.print(contra+"<br>");
            out.print(colo+"<br>");
            out.print(dele+"<br>");*/
            
            
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
                    
                HttpSession sesion = request.getSession();
                String dueño = sesion.getAttribute("persona").toString();    
                
                CallableStatement ps = con.prepareCall("{call CambiosP(?,?,?,?,?,?)}");
                    ps.setString(1, dueño);//nick
                    ps.setString(2, contra);//contraseña
                    ps.setString(3, correo);//correo
                    ps.setString(4, cel);//celular
                    ps.setString(5, colo);//colonia
                    ps.setString(6, dele);//delegacion
                    ps.execute();
                    ps.close();
                 }catch(SQLException error) {
                    out.print(error.toString());
                }
                out.print("<script> alert('SI'); </script>");
                out.print("<META HTTP-EQUIV='refresh' content='0.0000001;url=/Actualiza'>");
        %>
    </body>
</html>

