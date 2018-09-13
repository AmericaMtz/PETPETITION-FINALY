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
        <title>JSP Page</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
         <LINK REL=StyleSheet HREF="../DocumentosCSS/EstilosR.css" TYPE="text/css" MEDIA=screen>
         
         
         
    </head>
    <body >
        
        <div id="contenedor_carga"><div id="contereal">
                    <div id="preloader_1">
                        <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    </div>
                    </div>
            </div>
        
            <form method="GET" action="../menu/menu.jsp" id="madopta">
                <input type="submit" style="display:none;">
            </form>
        <% 
            String nick = request.getParameter("nomUsua");
            String contra = request.getParameter("contrasenia");
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
                CallableStatement ps = con.prepareCall("{call InicioP(?,?,?)}");
                    ps.setString(1, nick);//nick
                    ps.setString(2, contra);//nick
                    ps.registerOutParameter(3, Types.INTEGER);
                    ps.execute();
                    int resultado = ps.getInt(3);
                    ps.close();
                    if(resultado==3){
                        HttpSession sesion = request.getSession();
                        //out.print("<script>alert('Sesión iniciada');</script>");
                        sesion.setAttribute("persona",nick);
                        out.print("<script>document.getElementById('madopta').submit(); </script>");
                    }
                    else
                        if(resultado==4){
                            out.println("<div><a href='../InicioDeSesion/InicioDeSesion.html'><center>CONTRASEÑA INCORRECTA</center></a></div>");
                        }
                    else
                        if(resultado==5){
                            out.println("<div><a href='../InicioDeSesion/InicioDeSesion.html'><center>NOMBRE DE USUARIO INCORRECTO</center></a></div>");
                        }
                }catch(SQLException error) {
                    out.print(error.toString());
                }
        %>
        
        <script>
            
            var contenedor=document.getElementById('contenedor_carga');
                window.onload=function(){
                    contenedor.style.visivility='hidden';
                    contenedor.style.opacity='0';
                    setTimeout(uno,1200);
                    
                    window.location.hash="no-back-button";
                    window.location.hash="Again-No-back-button" //chrome
                    window.onhashchange=function(){window.location.hash="no-back-button";}
                }
                function uno(){
                    contenedor.style.display='none';
                }
            
        </script>
        
    </body>
</html>