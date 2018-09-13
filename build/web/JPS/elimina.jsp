<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Elimina</title>
    </head>
    <body>
        <%
            Connection con=null;
            Statement sta= null;
            ResultSet r = null;
            String Id = "";
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
                r = sta.executeQuery("select Id_Persona from personas where NickName = '"+dueño+"';");
                if(r.next()){
                    Id = r.getString("Id_Persona");
                }
                sta.executeUpdate("delete from personas where Id_Persona = '"+Id+"';");
            }catch(SQLException error) {
                    out.print(error.toString());
            }
            out.print("<script> alert('YEP'); </script>");
            out.print("<META HTTP-EQUIV='refresh' content='0.0000001;url=../InicioDeSesion/InicioDeSesion.html'>");
         %>
    </body>
</html>
