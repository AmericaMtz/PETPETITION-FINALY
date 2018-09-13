<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.Servicio" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servicios</title>
         <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../../DocumentosCSS/ESerPersona.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="../../JavaScript/Ereg.js"></script>
    </head>
    <body>
        <header>
           <nav>
               <ul>     
                   <li id="Letras"><a href="../../PaginaPrincipal/index.jsp">Inicio</a></li>
                  
                
               </ul> 
               <img id="logo" src="../../Resourses/Images/Servicios.png" >
               
               <ul>     
                   <li id="Letras"><a href="../../BuscaServicio/Busca.html">Regresar</a></li>
               </ul> 
           </nav> 
           
        </header>
            <section id="banner">
           
        </section>
        <section id="body">
            <div id="Atras">
                
                <div id="Ser">
                    
                    <%
                            ArrayList<Servicio> servicio2 = (ArrayList) request.getAttribute("servicios");
                         %>
                     
                         <%
                            for(Servicio servicio : servicio2)  
                         {%> 
                     
                         <div class="NombreM"><%=servicio.getNomServicio()%> </div>
                            <p id="des"><%=servicio.getDescServicio()%></p>
                            <p> <ins> Veterinaria: </ins> <br><%=servicio.getDescVeterinaria()%></p>
                            <p> <ins> Paseo: </ins> <br><%=servicio.getDescPaseo()%></p>
                            <p> <ins> Estetica: </ins> <br><%=servicio.getDescEstetica()%></p>
                            <p> <ins> Para mayores informes contactate con: </ins> <br><%=servicio.getNomPerso()%> <%=servicio.getApePat()%> <%=servicio.getApeMat()%> 
                            al numero <%=servicio.getTel()%> o bien al correo electronico <%=servicio.getCorreo()%>
                            <br>
                            </div>
                            <%}%>
                        
                      </div>
                </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
