<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Ofrece Servicio</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK REL=StyleSheet HREF="../DocumentosCSS/EServicioPersona.css" TYPE="text/css" MEDIA=screen>
        <script src="../JavaScript/Registro.js"></script>
    </head>
    <body>
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
        <div id="cabeza">
           <div id="nav">
              <ul>
                   <%
                    String nombre = session.getAttribute("persona").toString();
                    out.print("<li id='persona'><a href='../menu/menu.jsp'>"+nombre+"</a><li>");
                  %>
                   <li><a href="../RegistraServicio/RegistroServicio.jsp">REGISTRO/MODIFICACIÓN</a></li>
                   <li><a href="JSP/cerrar.jsp">CERRAR SESIÓN</a></li>
               </ul> 
           </id> 
        </div>
                   
        <div id="muestra">
            <%
                String NomSer = ""; 
                String DesSer = "";
                int Pase = 0;
                int Este = 0;
                int Vete = 0;
                String DesPase = "";
                String DesEste = "";
                String DesVete = ""; 
                
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
                    r = sta.executeQuery("select * from Servicios where Propietario = '"+nombre+"';");
                    if(r.next()){
                        NomSer = r.getString("NomServicio");
                        DesSer = r.getString("DescServicio");
                        Pase = r.getInt("Paseo");
                        Este = r.getInt("Estetica");
                        Vete = r.getInt("Veterinaria");
                        DesPase = r.getString("DescPaseo");
                        DesEste = r.getString("DescEstetica");
                        DesVete = r.getString("DescVeterinaria"); 
                    }
                }
                catch(SQLException error) {
                    out.print(error.toString());
                }
                if(NomSer.length()==0){
                    NomSer = "No hay servicio registrado";
                }
                if(DesSer.length()==0){
                    DesSer = "Cree un registro en la pestaña REGISTRO/MODIFICACIÓN";
                }
                if(DesPase.length()==0){
                    DesPase = "No hay servicio registrado";
                }
                if(DesEste.length()==0){
                    DesEste = "UNo hay servicio registrado";
                }
                if(DesVete.length()==0){
                    DesVete = "No hay servicio registrado";
                }
                out.print("<center><p id='titulo'>"+NomSer+"</p></center>");
                out.print("<br>");
                out.print("<center><p id='dser'>"+DesSer+"</p></center>");
                out.print("<div id='uno' class='cuadro'>PASEO</div>");
                out.print("<div id='unoo' class='cuadro2'><p class='texto'>"+DesPase+"</p></div>");
                out.print("<div id='dos' class='cuadro'>VETERINARIA</div>");
                out.print("<div id='doss' class='cuadro2'><p class='texto'>"+DesVete+"</p></div>");
                out.print("<div id='tres' class='cuadro'>ESTÉTICA</div>");
                out.print("<div id='tress' class='cuadro2'><p class='texto'>"+DesEste+"</p></div>");
                
            %>
        </div>
        <script>
            window.onload=function(){
               contenedor.style.visivility='hidden';
               contenedor.style.opacity='0';
               setTimeout(uno,1200);
           }
           function uno(){
               contenedor.style.display='none';
           }var contenedor=document.getElementById('contenedor_carga');
           window.onload=function(){
               contenedor.style.visivility='hidden';
               contenedor.style.opacity='0';
               setTimeout(uno,1200);
           }
           function uno(){
               contenedor.style.display='none';
           }    
        </script>
    </body>
    
</html>