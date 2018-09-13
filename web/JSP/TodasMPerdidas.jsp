<%@page import="Model.MascotaBus"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
         <title>AYUDANOS A ENCONTRARLOS</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
         <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="../JavaScript/BuscaTOdo.js"></script>
        <link rel="stylesheet" href="../DocumentosCSS/BuscaT.css">
       

    </head>
    <body>
        <!--BOTON FLOTANTE-->
         <div class="fixed-action-btn">
             <a href="../PaginaPrincipal/index.jsp">
              <i class="large material-icons">home</i>
            </a>  
          </div>
       
       <!--Carrusel-->
       <div class="slider">
    <ul class="slides">
      <li>
          <img src="../Resourses/Images/ALEMAN.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>MASCOTAS PERDIDAS</h3>
          <h5 class="light grey-text text-lighten-3">PetPetition</h5>
        </div>
      </li>
      <li>
          <img src="../Resourses/Images/Images.jpg" style="height: 500px"> <!-- random image -->
        <div class="caption right-align">
          <h3>PEQUEÑAS ACCIONES QUE CAMBIAN VIDAS</h3>
          <h5 class="light grey-text text-lighten-3">PetPetition</h5>
        </div>
      </li>
      <li>
          <img src="../Resourses/Images/tutuga.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>¿LOS HAS VISTO?</h3>
          <h5 class="light grey-text text-lighten-3">PetPetition</h5>
        </div>
      </li>
      <li>
          <img src="../Resourses/Images/otr.jpg" > <!-- random image -->
        <div class="caption left-align">
          <h3>BUSCANDO HUELLITAS</h3>
          <h5 class="light grey-text text-lighten-3">PetPetition</h5>
        </div>
      </li>
    </ul>
  </div>
       <div class="aquivaTodo">
                   <center><div class="AquiVanMascotas">
                <%
                   ArrayList<MascotaBus> mascotit = (ArrayList) request.getAttribute("mascotas"); 
                 %>
                 <%
                    for(MascotaBus mascota : mascotit) 
                  {%> 
                  <div class="aquivaunamascota">
                  <image src="../Resourses/Images/MP/Mascota-Perdida.png">
                  <img src='../data/<%=mascota.getImg()%>'  class='ABC'><h2><%=mascota.getNombre()%> </h2>
                  <p>Es un <%=mascota.getTipo()%> de raza <%=mascota.getRaza()%> de <%=mascota.getEdad()%> meses de edad.</p> 
                  <p><%=mascota.getDescripcion()%></p> 
                  <p>Perdida en <%=mascota.getDireccion()%></p>
                  <p>El dia <%=mascota.getFhExtravio()%></p>
                  <div class="RECOMPENSA">
                  <p>RECOMPENSA</p
                  <hr>
                  <%=mascota.getRecompensa()%>
                  </div>
                  <div class="duenio">
                      Si lo has visto contactate con:
                      <p>Nombre: <%=mascota.getNombrePersona()%> <%=mascota.getApellidoPersona()%></p>
                      <p>Correo: <%=mascota.getCorreo()%></p>
                      <p>Teléfono: <%=mascota.getNumero()%></p>
                  </div>
                  </div>
                  <hr>
                   <%}%>
                 
               </div></center>
       </div> 
    </body>
</html>
