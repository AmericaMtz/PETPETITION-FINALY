<%@page import="Model.MascotaBus"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="Model.Mascota" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>ADOPTA</title>
         <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../DocumentosCSS/EMAdoptaTodo.css">
        <script src="../JavaScript/MAdopta4.js"></script>
        <script src="../JavaScript/jquery-1.12.1.min.js" type="text/javascript"></script>
        <script src="../JavaScript/materialize.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>

    <body>
        <!-- Boton flotante -->
         <div class="fixed-action-btn">
            <a class="btn-floating btn-large red">
              <i class="large material-icons">pets</i>
            </a>
            <ul>
               <li> <a class="btn-floating red"  href="../PaginaPrincipal/index.jsp"><i class="material-icons">home</i></a></li>
               <li><a class="btn-floating orange" href="#PERROS"><img src="../Resourses/Images/perra.png" style="width: 40px;height: 40px;"></a></li>
               <li><a class="btn-floating pink" href="#GATOS"><img src="../Resourses/Images/gato.png" style="width: 40px;height: 40px;"></a></li>
               <li><a class="btn-floating purple"href="#AVES"><img src="../Resourses/Images/pajaro.png" style="width: 40px;height: 40px;"></a></li>
               <li><a class="btn-floating blue"href="#PECES"><img src="../Resourses/Images/pecesito.png" style="width: 40px;height: 40px;"></a></li>
               <li><a class="btn-floating red"href="#CONEJOS"><img src="../Resourses/Images/conejito.png" style="width: 35px;height: 35px;"></a></li>
            </ul>
          </div>
        <!--PERROS-->
        <div class="blocoPerros" style="height: 100%; width: 100%">
            <nav class="orange" >
                        <div class="nav-wrapper"style="height: 100%; width: 100%" id="PERROS">
                            <a href="#" class="brand-logo" id="perritos">PERROS</a>                      
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color: transparent"> :</div>
                     <div class="ContienePerros">
                       <section id="body">
                        <%
                            ArrayList<Mascota> mascotit = (ArrayList) request.getAttribute("mascotas");
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(Mascota mascota : mascotit)
                         {%> 
                         <%
                           if(mascota.getNomTipo().equals("Perro"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='¿Quieres adoptar a <%=mascota.getNombreMasc()%>?' src='../data/<%=mascota.getImagen()%>'>
                            </figure> 
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='textoPerro'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombreMasc()%>
                                  </a>
                                </p>
                            </div>
                       </div>
                       <div id='<%=mascota.getDescripcion()%>'  class='algo'>
                          <div>
                            <a href='#close' title='Close' class='close' onclick='close();'>
                                <div style='float: left'>           
                                </div>
                                    <div class='tache'>
                                        <img src='../../../Resourses/Images/close.svg' width=30 height=20>
                                    </div>
                            </a> 
                         <div >  
                            <b><div class="NombreM1" >Mi nombre es:"<%=mascota.getNombreMasc()%>"</div> </b>
                        </div>
                            <br> 
                            <img src='../data/<%=mascota.getImagen()%>'  class='ABC'>
                            <div class="subti">Información de la mascota:</div>
                            <p>Soy un <%=mascota.getNomTipo()%> de raza <%=mascota.getNombreRaza()%></p>
                            <br>
                            <div class="subti">Edad:</div>
                            <p> <%=mascota.getEdad()%> MESES </p> <br>
                            <div class="subti">Descripción:</div>
                            <p><%=mascota.getDescripcion()%></p>  
                            <div class="subti">Para mayor Información contáctate con: </div>
                            <p><%=mascota.getNomPerso()%> <%=mascota.getApePat()%></p>
                            <p>Correo: <%=mascota.getCorreo()%></p>
                            <p>Teléfono: <%=mascota.getTel()%></p>
                        </div>
                      </div>
                    </div>
                   <%}%>
                 <%}%>
               </section>
              </div>
             <div style="width: 20%; height:90%; float: left; display: table; color:transparent"> .</div>
           </div>           
         </div>    
               
               <!--Gatos-->
                <div class="blocoGatos" style="height: 100%; width: 100%" id="GATOS">
                    <nav class="pink" >
                        <div class="nav-wrapper"style="height: 100%; width: 100%">
                            <a href="#" class="brand-logo" >GATOS</a>    
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table"> .</div>
                     <div class="ContieneGatos">
                       <section id="body">
                        <%
                            ArrayList<Mascota> mascoti = (ArrayList) request.getAttribute("mascotas");
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(Mascota mascota : mascoti)
                         {%> 
                         <%
                           if(mascota.getNomTipo().equals("Gato"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='¿Quieres adoptar a <%=mascota.getNombreMasc()%>?' src='../data/<%=mascota.getImagen()%>'>
                            </figure> 
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='textoGato'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombreMasc()%>
                                  </a>
                                </p>
                            </div>
                       </div>
                       <div id='<%=mascota.getDescripcion()%>'  class='algo'>
                          <div>
                            <a href='#close' title='Close' class='close' onclick='close();'>
                                <div style='float: left'>           
                                </div>
                                    <div class='tache'>
                                        <img src='../../../Resourses/Images/close.svg' width=30 height=20>
                                    </div>
                            </a> 
                            <div >  
                                <b><div class="NombreM2" >Mi nombre es:"<%=mascota.getNombreMasc()%>"</div> </b>
                            </div>
                                <br> 
                                <img src='../data/<%=mascota.getImagen()%>'  class='ABC'>
                                <div class="subti">Información de la mascota:</div>
                                <p>Soy un <%=mascota.getNomTipo()%> de raza <%=mascota.getNombreRaza()%></p>
                                <br>
                                <div class="subti">Edad:</div>
                                <p> <%=mascota.getEdad()%> MESES </p> <br>
                                <div class="subti">Descripción:</div>
                                <p><%=mascota.getDescripcion()%></p>  
                                <div class="subti">Para mayor Información contáctate con: </div>
                                <p><%=mascota.getNomPerso()%> <%=mascota.getApePat()%></p>
                                <p>Correo: <%=mascota.getCorreo()%></p>
                                <p>Teléfono: <%=mascota.getTel()%></p>
                            </div>
                          </div>
                        </div>
                       <%}%>
                     <%}%>
               </section>
              </div>
             <div style="width: 20%; height:90%; float: left; display: table; color:purple"> .</div>
           </div>           
         </div>   
               <!--peces-->
                <div class="blocoPeces" style="height: 100%; width: 100%">
                    <nav class="blue" >
                        <div class="nav-wrapper"style="height: 100%; width: 100%" id="PECES">
                          <a href="#" class="brand-logo">PECES</a>  
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color: blue"> .</div>
                     <div class="ContienePeces">
                       <section id="body">
                        <%
                            ArrayList<Mascota> masco = (ArrayList) request.getAttribute("mascotas");
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(Mascota mascota : masco)
                         {%> 
                         <%
                           if(mascota.getNomTipo().equals("Pez"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='¿Quieres adoptar a <%=mascota.getNombreMasc()%>?' src='../data/<%=mascota.getImagen()%>'>
                            </figure> 
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='textoPez'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombreMasc()%>
                                  </a>
                                </p>
                            </div>
                       </div>
                       <div id='<%=mascota.getDescripcion()%>'  class='algo'>
                          <div>
                            <a href='#close' title='Close' class='close' onclick='close();'>
                                <div style='float: left'>           
                                </div>
                                    <div class='tache'>
                                        <img src='../../../Resourses/Images/close.svg' width=30 height=20>
                                    </div>
                            </a> 
                            <div >  
                                <b><div class="NombreM3" >Mi nombre es:"<%=mascota.getNombreMasc()%>"</div> </b>
                            </div>
                                <br> 
                                <img src='../data/<%=mascota.getImagen()%>'  class='ABC'>
                                <div class="subti">Información de la mascota:</div>
                                <p>Soy un <%=mascota.getNomTipo()%> de raza <%=mascota.getNombreRaza()%></p>
                                <br>
                                <div class="subti">Edad:</div>
                                <p> <%=mascota.getEdad()%> MESES </p> <br>
                                <div class="subti">Descripción:</div>
                                <p><%=mascota.getDescripcion()%></p>  
                                <div class="subti">Para mayor Información contáctate con: </div>
                                <p><%=mascota.getNomPerso()%> <%=mascota.getApePat()%></p>
                                <p>Correo: <%=mascota.getCorreo()%></p>
                                <p>Teléfono: <%=mascota.getTel()%></p>
                            </div>
                          </div>
                        </div>
                       <%}%>
                     <%}%>
               </section>
              </div>
             <div style="width: 20%; height:90%; float: left; display: table; color:blue"> .</div>
           </div>           
         </div>   
               
               <!--conejos-->
                <div class="blocoConejos" style="height: 100%; width: 100%">
                    <nav class="red" >
                        <div class="nav-wrapper"style="height: 100%; width: 100%" id="CONEJOS">
                          <a href="#" class="brand-logo">CONEJOS</a>
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color: red"> .</div>
                     <div class="CotieneConejos">
                       <section id="body">
                        <%
                            ArrayList<Mascota> mascotits = (ArrayList) request.getAttribute("mascotas");
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(Mascota mascota : mascotits)
                         {%> 
                         <%
                           if(mascota.getNomTipo().equals("Conejo"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='¿Quieres adoptar a <%=mascota.getNombreMasc()%>?' src='../data/<%=mascota.getImagen()%>'>
                            </figure> 
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='textoConejo'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombreMasc()%>
                                  </a>
                                </p>
                            </div>
                       </div>
                       <div id='<%=mascota.getDescripcion()%>'  class='algo'>
                          <div>
                            <a href='#close' title='Close' class='close' onclick='close();'>
                                <div style='float: left'>           
                                </div>
                                    <div class='tache'>
                                        <img src='../../../Resourses/Images/close.svg' width=30 height=20>
                                    </div>
                            </a> 
                            <div >  
                                <b><div class="NombreM4" >Mi nombre es:"<%=mascota.getNombreMasc()%>"</div> </b>
                            </div>
                                <br> 
                                <img src='../data/<%=mascota.getImagen()%>'  class='ABC'>
                                <div class="subti">Información de la mascota:</div>
                                <p>Soy un <%=mascota.getNomTipo()%> de raza <%=mascota.getNombreRaza()%></p>
                                <br>
                                <div class="subti">Edad:</div>
                                <p> <%=mascota.getEdad()%> MESES </p> <br>
                                <div class="subti">Descripción:</div>
                                <p><%=mascota.getDescripcion()%></p>  
                                <div class="subti">Para mayor Información contáctate con: </div>
                                <p><%=mascota.getNomPerso()%> <%=mascota.getApePat()%></p>
                                <p>Correo: <%=mascota.getCorreo()%></p>
                                <p>Teléfono: <%=mascota.getTel()%></p>
                            </div>
                          </div>
                        </div>
                       <%}%>
                     <%}%>
               </section>
              </div>
             <div style="width: 20%; height:90%; float: left; display: table; color:red"> .</div>
           </div>           
         </div>   
               
               <!--Aves-->
                <div class="blocoAves" style="height: 100%; width: 100%">
                    <nav class="purple">
                        <div class="nav-wrapper"style="height: 100%; width: 100%"  id="AVES">
                          <a href="#" class="brand-logo">Aves</a>
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color: red"> .</div>
                     <div class="CotieneAve">
                       <section id="body">
                        <%
                            ArrayList<Mascota> masc = (ArrayList) request.getAttribute("mascotas");
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(Mascota mascota : masc)
                         {%> 
                         <%
                           if(mascota.getNomTipo().equals("Ave"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='¿Quieres adoptar a <%=mascota.getNombreMasc()%>?' src='../data/<%=mascota.getImagen()%>'>
                            </figure> 
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='textoAve'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombreMasc()%>
                                  </a>
                                </p>
                            </div>
                       </div>
                       <div id='<%=mascota.getDescripcion()%>'  class='algo'>
                          <div>
                            <a href='#close' title='Close' class='close' onclick='close();'>
                                <div style='float: left'>           
                                </div>
                                    <div class='tache'>
                                        <img src='../../../Resourses/Images/close.svg' width=30 height=20>
                                    </div>
                            </a> 
                            <div >  
                                <b><div class="NombreM5" >Mi nombre es:"<%=mascota.getNombreMasc()%>"</div> </b>
                            </div>
                                <br> 
                                <img src='../data/<%=mascota.getImagen()%>'  class='ABC'>
                                <div class="subti">Información de la mascota:</div>
                                <p>Soy un <%=mascota.getNomTipo()%> de raza <%=mascota.getNombreRaza()%></p>
                                <br>
                                <div class="subti">Edad:</div>
                                <p> <%=mascota.getEdad()%> MESES </p> <br>
                                <div class="subti">Descripción:</div>
                                <p><%=mascota.getDescripcion()%></p>  
                                <div class="subti">Para mayor Información contáctate con: </div>
                                <p><%=mascota.getNomPerso()%> <%=mascota.getApePat()%></p>
                                <p>Correo: <%=mascota.getCorreo()%></p>
                                <p>Teléfono: <%=mascota.getTel()%></p>
                            </div>
                          </div>
                        </div>
                       <%}%>
                     <%}%>
               </section>
              </div>
             <div style="width: 20%; height:90%; float: left; display: table; color:red"> .</div>
           </div>           
         </div>   
               <!--Otros-->
                <div class="blocoOtros" style="height: 100%; width: 100%">
                    <nav class="green"  id="Aves">
                        <div class="nav-wrapper"style="height: 100%; width: 100%"  id="Aves">
                          <a href="#" class="brand-logo">Otros</a>
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color: red"> .</div>
                     <div class="CotieneOtros">
                       <section id="body">
                        <%
                            ArrayList<Mascota> mt = (ArrayList) request.getAttribute("mascotas");
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(Mascota mascota : mt)
                         {%> 
                         <%
                           if(mascota.getNomTipo().equals("Otro"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='¿Quieres adoptar a <%=mascota.getNombreMasc()%>?' src='../data/<%=mascota.getImagen()%>'>
                            </figure> 
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='textoOtro'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombreMasc()%>
                                  </a>
                                </p>
                            </div>
                       </div>
                       <div id='<%=mascota.getDescripcion()%>'  class='algo'>
                          <div>
                            <a href='#close' title='Close' class='close' onclick='close();'>
                                <div style='float: left'>           
                                </div>
                                    <div class='tache'>
                                        <img src='../../../Resourses/Images/close.svg' width=30 height=20>
                                    </div>
                            </a> 
                            <div >  
                                <b><div class="NombreM6" >Mi nombre es:"<%=mascota.getNombreMasc()%>"</div> </b>
                            </div>
                                <br> 
                                <img src='../data/<%=mascota.getImagen()%>'  class='ABC'>
                                <div class="subti">Información de la mascota:</div>
                                <p>Soy un <%=mascota.getNombreRaza()%></p>
                                <br>
                                <div class="subti">Edad:</div>
                                <p> <%=mascota.getEdad()%> MESES </p> <br>
                                <div class="subti">Descripción:</div>
                                <p><%=mascota.getDescripcion()%></p>  
                                <div class="subti">Para mayor Información contáctate con: </div>
                                <p><%=mascota.getNomPerso()%> <%=mascota.getApePat()%></p>
                                <p>Correo: <%=mascota.getCorreo()%></p>
                                <p>Teléfono: <%=mascota.getTel()%></p>
                            </div>
                          </div>
                        </div>
                       <%}%>
                     <%}%>
               </section>
              </div>
             <div style="width: 20%; height:90%; float: left; display: table; color:red"> .</div>
           </div>           
         </div>   
       <script src="../JavaScript/materialize.js" type="text/javascript"></script>
    </body>
</html>