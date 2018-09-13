<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MENU</title>
        <title>Menu</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="UTF-8">
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../DocumentosCSS/menu.css">
        
        <script Language="JavaScript">
            
                function atras(){
                    window.location.hash="no-back-button";
                    window.location.hash="Again-No-back-button" //chrome
                    window.onhashchange=function(){window.location.hash="no-back-button";}
                }
            
        </script>  
        
    </head>
    <body onload="atras()">
        <header>
           <nav>
              <ul>
                   <%
                    String nombre = session.getAttribute("persona").toString();
                    out.print("<li id='persona'><a href='../menu/menu.jsp'>"+nombre+"</a><li>");
                  %>
                   <li><a href="../Quejas/Quejas.html">CONTÁCTANOS</a></li>
                   <li><a href="/Actualiza">CONFIGURACIÓN</a></li>
                   <li><a href="../JSP/cerrar.jsp">CERRAR SESIÓN</a></li>
               </ul> 
           </nav> 
        </header>
        <div id="uno">
            <div class="texto"><a href="/MAdopta">DA EN ADOPCIÓN</a></div>
            <img class="logo" src="../Resourses/Images/logoMAdopta.png"></img>
        </div>
        <div id="dos">
            <div class="texto"><a href="../MBuscaServlet">REPORTA EXTRAVÍO</a></div>
            <img class="logo" src="../Resourses/Images/buscar.png"></img>
        </div>
        <div id="tres">
            <div class="texto"><a href="../JSP/ServicioPersona.jsp">OFRECE SERVICIO</a></div>
            <img class="logo" src="../Resourses/Images/vete.png"></img>
        </div>
    </body>
</html>