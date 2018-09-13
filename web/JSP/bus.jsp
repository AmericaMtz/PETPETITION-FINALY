<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="GET" action="../JPS/RMascota.jsp" id="madopta">
            <input type="submit" style="display:none;">
        </form>
        <%
                        
            Connection con = null;
            Statement sta = null;
            ResultSet r = null;
            
            HttpSession sesion = request.getSession();
            String dueño = sesion.getAttribute("persona").toString();
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/PP","root","n0m3l0");
                sta = con.createStatement();
            }
            catch(SQLException error) {
                out.print(error.toString());
            }
            try{
                String nombre = request.getParameter("nommas");
                int cuenta = 0;
                r = sta.executeQuery("select count(*) from Mascotas where Nom_Mascota='"+nombre+"' and dueño='"+dueño+"';");
                if(r.next()){
                    cuenta = r.getInt(1);
                }
            }
            catch(SQLException error) {
                out.print(error.toString());
            }
        %>
    </body>
</html>
