<%@page import="Model.MascotaBus"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="Model.Mascota" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>ADOPTA</title>
         <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../DocumentosCSS/EMAdopta17.css">
        <script src="../JavaScript/MAdopta4.js"></script>
        <script src="../JavaScript/jquery-1.12.1.min.js" type="text/javascript"></script>
        <script src="../JavaScript/materialize.min.js" type="text/javascript"></script>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
         <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
         <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    </head>

    <body>
         <div class="fixed-action-btn">
            <a class="btn-floating btn-large red" href="/RMascota">
            <i class="material-icons">pets</i>
            </a>
          </div>
    
        <!--Todos Sus registros-->
        <div class="blocoPerros" style="height: 100%; width: 100%">
            <nav  >
                        <div class="Arriba" style="height: 100%; width: 100%" id="PERROS">
                          <a href="#" class="brand-logo" id="perritos">  <%
                          String nombre = session.getAttribute("persona").toString();
                          out.print("<a href='../menu/menu.jsp'>"+nombre+"</a>");
                          %> <center>ESTAS SON LAS MASCOTAS QUE HAS REGISTRADO</center></a>                  
                                            </div>             
                      </nav>
            
                <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color: transparent"> :</div>
                   <div class="ContienePerros">
                       <br>
                       <section id="body">
                        <%
                            ArrayList<Mascota> mascotit = (ArrayList) request.getAttribute("mascotas");
                         %>
                           <div id='conteframe' style='height: 80%; width: 80%;'>  
                         <%
                            for(Mascota mascota : mascotit)
                         {%> 
                         <%
                           if((mascota.getDueño().equals(nombre)))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='<%=mascota.getNombreMasc()%> esta esperando a que lo adopten' src='../data/<%=mascota.getImagen()%>'>
                            </figure> 
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='textoPerro'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombreMasc()%>
                                  </a>
                                </p>
                            </div>
                       </div>
                       <div id='<%=mascota.getDescripcion()%>'  class='algo'>
                          <div class="hola">
                            <a href='#close' title='Close' class='close' onclick='close();'>
                                <div style='float: left'>           
                                </div>
                                    <div class='tache'>
                                        <img src='../../../Resourses/Images/close.svg' width=30 height=20>
                                    </div>
                            </a>
                        <form method="post" action="/RMascota" enctype="multipart/form-data">
                        
                            <p class="NombreM1" >"<%=mascota.getNombreMasc()%>"</p> </b>
                        
                            <br> 
                            <img src='../data/<%=mascota.getImagen()%>'  class='ABC'>
                            <div class="subti">Información de la mascota:</div><br>
                            <input type="text" id="nommas" name="nommas" value="<%=mascota.getNombreMasc()%>" style="display: none;">
                            <input type="text" id="nomtipo" name="tipom" value="<%=mascota.getNomTipo()%>" style="display: none;">
                            <input type="text" id="nomraza" name="razas" value="<%=mascota.getNombreRaza()%>" style="display: none;">
                            Soy un <%=mascota.getNomTipo()%> <%=mascota.getNombreRaza()%><br>
                            Tengo <input type="text" id="edad" name="edadmas" value="<%=mascota.getEdad()%>"> meses
                            <textarea id="descripcion" name="Descripcion"><%=mascota.getDescripcion()%></textarea>
                            <input id="imagen" type="file" name="data" required>
                            <br>
                            <br>
                            <input type="submit" class="boton" value="MODIFICA" id="botreg"/>
                        </form>
                        <form method="post" action="JSP/EliminaMasco.jsp">
                            <input type="text" id="nommas" name="nommas" value="<%=mascota.getNombreMasc()%>" style="display: none;">
                            <INPUT type="submit" class="boton" name="boton" value="Eliminar Mascota" id="elicuenta" onclick="return confirm('Seguro que desea eliminar la mascota')" >
                        <form>
                      </div>
                    </div>
                   <%}%>
                 <%}%>
               </section>
              </div>
           </div>           
         </div>    
                
       <script src="../JavaScript/materialize.js" type="text/javascript"></script>
    </body>
</html>