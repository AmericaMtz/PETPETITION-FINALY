<%@page import="Model.MascotaBus"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>EXTRAVIO</title>
         <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../DocumentosCSS/busca2.css">
        <script src="../JavaScript/MAdopta4.js"></script>
        <script src="../JavaScript/jquery-1.12.1.min.js" type="text/javascript"></script>
        <script src="../JavaScript/materialize.min.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
         <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>  
    
    </head>
    <body>
        <div class="head">
           <div class="navegador">
              <ul>
                   <%
                    String nombre = session.getAttribute("persona").toString();
                    out.print("<li id='persona'><a href='../menu/menu.jsp'>"+nombre+"</a><li>");
                  %>
               </ul> 
           </div> 
        </div>
        
         <div class="fixed-action-btn">
            <a class="btn-floating btn-large red">
              <i class="large material-icons">pets</i>
            </a>
            <ul>
               <li><a class="btn-floating orange" href="#PERROS"><img src="../Resourses/Images/perra.png" style="width: 40px;height: 40px;"></a></li>
               <li><a class="btn-floating pink" href="#GATOS"><img src="../Resourses/Images/gato.png" style="width: 40px;height: 40px;"></a></li>
               <li><a class="btn-floating purple"href="#AVES"><img src="../Resourses/Images/pajaro.png" style="width: 40px;height: 40px;"></a></li>
               <li><a class="btn-floating blue"href="#PECES"><img src="../Resourses/Images/pecesito.png" style="width: 40px;height: 40px;"></a></li>
               <li><a class="btn-floating red"href="#CONEJOS"><img src="../Resourses/Images/conejito.png" style="width: 35px;height: 35px;"></a></li>
               <li><a class="btn-floating red"href="#OTROS"><img src="../Resourses/Images/otros.png" style="width: 35px;height: 35px;"></a></li>
               <li> <a class="btn-floating red"  href="/RPerdida"><i class="material-icons">loyalty</i></a></li>
               
            </ul>
          </div>
       
               
               <br><br>
        <!--PERROS-->
        <div class="blocoPerros" style="height: 100%; width: 100%">
            <nav class="orange" id="PERROS">
                        <div class="nav-wrapper"style="height: 100%; width: 100%">
                          <a href="#" class="brand-logo">PERROS</a>
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color: transparent"> :</div>
                     <div class="ContienePerros">
                       <section id="body">
                        <%
                            ArrayList<MascotaBus> mascotit = (ArrayList) request.getAttribute("mascotas"); 
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(MascotaBus mascota : mascotit) 
                         {%> 
                         <%
                           if(mascota.getTipo().equals("Perro"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='¿Has visto a <%=mascota.getNombre()%>?' src='../data/<%=mascota.getImg()%>'>
                            </figure> 
                            <div style='height: 32px;width: 47px; float: left; display: table'>.</div>
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='texto'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombre()%>
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
                            <b><div class="NombreM" >Yo soy:"<%=mascota.getNombre()%>"</div> </b>
                        </div>
                        <div style="align-content:center">..Ayudame a regresar a casa...</div>
                            <br> 
                            <div class="subti">Información de la mascota:</div>
                            <p>Soy un <%=mascota.getTipo()%> de raza <%=mascota.getRaza()%></p> 
                            <br> 
                            <p>Tengo <%=mascota.getEdad()%> MESES </p> 
                            <br> 
                            <img src='../data/<%=mascota.getImg()%>'  class='ABC'> 
                            <br> 
                            <p><%=mascota.getDescripcion()%></p>  
                            <div class="subti">Lugar y fecha del extravio:</div>
                            <p><%=mascota.getFhExtravio()%></p>
                            <p><%=mascota.getDireccion()%></p>
                            <div class="subti">RECOMPENSA:</div>
                            <p><%=mascota.getRecompensa()%></p>
                            <div class="subti">Si lo has visto contactate con:</div>
                            <p>Nombre: <%=mascota.getNombrePersona()%> <%=mascota.getApellidoPersona()%></p>
                            <p>Correo: <%=mascota.getCorreo()%></p>
                            <p>Teléfono: <%=mascota.getNumero()%></p>
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
             <div class="blocoGatos" style="height: 100%; width: 100%">
                    <nav class="pink" id="GATOS">
                        <div class="nav-wrapper"style="height: 100%; width: 100%">
                          <a class="brand-logo">GATOS</a>
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color:transparent"> .</div>
                   <div class="ContieneGatos">
                       <section id="body">
                        <%
                            ArrayList<MascotaBus> mascotase = (ArrayList) request.getAttribute("mascotas"); 
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(MascotaBus mascota : mascotase) 
                         {%> 
                         <%
                           if(mascota.getTipo().equals("Gato"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='¿Has visto a <%=mascota.getNombre()%>?' src='../data/<%=mascota.getImg()%>'>
                            </figure> 
                            <div style='height: 32px;width: 47px; float: left; display: table'>.</div>
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='texto'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombre()%>
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
                            <b><div class="NombreM" >Yo soy:"<%=mascota.getNombre()%>"</div> </b>
                        </div>
                        <div style="align-content:center">..Ayudame a regresar a casa...</div>
                            <br> 
                            <div class="subti">Información de la mascota:</div>
                            <p>Soy un <%=mascota.getTipo()%> de raza <%=mascota.getRaza()%></p> 
                            <br> 
                            <p>Tengo <%=mascota.getEdad()%> MESES </p> 
                            <br> 
                            <img src='../data/<%=mascota.getImg()%>'  class='ABC'> 
                            <br> 
                            <p><%=mascota.getDescripcion()%></p>  
                            <div class="subti">Lugar y fecha del extravio:</div>
                            <p><%=mascota.getFhExtravio()%></p>
                            <p><%=mascota.getDireccion()%></p>
                            <div class="subti">RECOMPENSA:</div>
                            <p><%=mascota.getRecompensa()%></p>
                            <div class="subti">Si lo has visto contactate con:</div>
                            <p>Nombre: <%=mascota.getNombrePersona()%> <%=mascota.getApellidoPersona()%></p>
                            <p>Correo: <%=mascota.getCorreo()%></p>
                            <p>Teléfono: <%=mascota.getNumero()%></p>
                        </div>
                      </div>
                    </div>
                   <%}%>
                 <%}%>
               </section>
               </section>
              </div>
             <div style="width: 20%; height:90%; float: left; display: table; color:transparent"> .</div>
           </div>           
         </div>   
               <!--peces-->
                <div class="blocoPeces" style="height: 100%; width: 100%">
                    <nav class="blue" id="PECES">
                        <div class="nav-wrapper"style="height: 100%; width: 100%">
                          <a class="brand-logo">PECES</a>
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color:transparent"> .</div>
                   <div class="ContienePeces">
                       <section id="body">
                        <%
                            ArrayList<MascotaBus> masco = (ArrayList) request.getAttribute("mascotas"); 
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(MascotaBus mascota : masco) 
                         {%> 
                         <%
                           if(mascota.getTipo().equals("Pez"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='ï¿½Has visto a <%=mascota.getNombre()%>?' src='../data/<%=mascota.getImg()%>'>
                            </figure> 
                            <div style='height: 32px;width: 47px; float: left; display: table'>.</div>
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='texto'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombre()%>
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
                            <b><div class="NombreM" >Yo soy:"<%=mascota.getNombre()%>"</div> </b>
                        </div>
                        <div style="align-content:center">..Ayudame a regresar a casa...</div>
                            <br> 
                            <div class="subti">Información de la mascota:</div>
                            <p>Soy un <%=mascota.getTipo()%> de raza <%=mascota.getRaza()%></p> 
                            <br> 
                            <p>Tengo <%=mascota.getEdad()%> MESES </p> 
                            <br> 
                            <img src='../data/<%=mascota.getImg()%>'  class='ABC'> 
                            <br> 
                            <p><%=mascota.getDescripcion()%></p>  
                            <div class="subti">Lugar y fecha del extravio:</div>
                            <p><%=mascota.getFhExtravio()%></p>
                            <p><%=mascota.getDireccion()%></p>
                            <div class="subti">RECOMPENSA:</div>
                            <p><%=mascota.getRecompensa()%></p>
                            <div class="subti">Si lo has visto contactate con:</div>
                            <p>Nombre: <%=mascota.getNombrePersona()%> <%=mascota.getApellidoPersona()%></p>
                            <p>Correo: <%=mascota.getCorreo()%></p>
                            <p>Teléfono: <%=mascota.getNumero()%></p>
                        </div>
                      </div>
                    </div>
                   <%}%>
                 <%}%>
               </section>
               </section>
              </div>
             <div style="width: 20%; height:90%; float: left; display: table; color:transparent"> .</div>
           </div>           
         </div>   
               <!-- Aves -->
               <div class="blocoAves" style="height: 100%; width: 100%">
            <nav class="purple" id="AVES">
                        <div class="nav-wrapper"style="height: 100%; width: 100%">
                          <a class="brand-logo">AVES</a>
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color:transparent"> .</div>
                     <div class="ContieneAves">
                       <section id="body">
                        <%
                            ArrayList<MascotaBus> mad = (ArrayList) request.getAttribute("mascotas"); 
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(MascotaBus mascota : mad) 
                         {%> 
                         <%
                           if(mascota.getTipo().equals("Ave"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='Â¿Has visto a <%=mascota.getNombre()%>?' src='../data/<%=mascota.getImg()%>'>
                            </figure> 
                            <div style='height: 32px;width: 47px; float: left; display: table;color:transparent'>.</div>
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='texto'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombre()%>
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
                            <b><div class="NombreM" >Yo soy:"<%=mascota.getNombre()%>"</div> </b>
                        </div>
                        <div style="align-content:center">..Ayudame a regresar a casa...</div>
                            <br> 
                            <div class="subti">Información de la mascota:</div>
                            <p>Soy un <%=mascota.getTipo()%> de raza <%=mascota.getRaza()%></p> 
                            <br> 
                            <p>Tengo <%=mascota.getEdad()%> MESES </p> 
                            <br> 
                            <img src='../data/<%=mascota.getImg()%>'  class='ABC'> 
                            <br> 
                            <p><%=mascota.getDescripcion()%></p>  
                            <div class="subti">Lugar y fecha del extravio:</div>
                            <p><%=mascota.getFhExtravio()%></p>
                            <p><%=mascota.getDireccion()%></p>
                            <div class="subti">RECOMPENSA:</div>
                            <p><%=mascota.getRecompensa()%></p>
                            <div class="subti">Si lo has visto contactate con:</div>
                            <p>Nombre: <%=mascota.getNombrePersona()%> <%=mascota.getApellidoPersona()%></p>
                            <p>Correo: <%=mascota.getCorreo()%></p>
                            <p>Teléfono: <%=mascota.getNumero()%></p>
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
               <!-- Otros-->
               <div class="blocoOtros" style="height: 100%; width: 100%">
            <nav class="green" id="OTROS">
                        <div class="nav-wrapper"style="height: 100%; width: 100%">
                          <a class="brand-logo">OTROS</a>
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color:transparent"> :</div>
                     <div class="ContieneOtros">
                       <section id="body">
                        <%
                            ArrayList<MascotaBus> mascot = (ArrayList) request.getAttribute("mascotas"); 
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(MascotaBus mascota : mascot) 
                         {%> 
                         <%
                           if(mascota.getTipo().equals("Otro"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='Â¿Has visto a <%=mascota.getNombre()%>?' src='../data/<%=mascota.getImg()%>'>
                            </figure> 
                            <div style='height: 32px;width: 47px; float: left; display: table; color:transparent'>.</div>
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='texto'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombre()%>
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
                            <b><div class="NombreM" >Yo soy:"<%=mascota.getNombre()%>"</div> </b>
                        </div>
                        <div style="align-content:center">..Ayudame a regresar a casa...</div>
                            <br> 
                            <div class="subti">Información de la mascota:</div>
                            <p>Soy un(a) <%=mascota.getRaza()%></p> 
                            <br> 
                            <p>Tengo <%=mascota.getEdad()%> MESES </p> 
                            <br> 
                            <img src='../data/<%=mascota.getImg()%>'  class='ABC'> 
                            <br> 
                            <p><%=mascota.getDescripcion()%></p>  
                            <div class="subti">Lugar y fecha del extravio:</div>
                            <p><%=mascota.getFhExtravio()%></p>
                            <p><%=mascota.getDireccion()%></p>
                            <div class="subti">RECOMPENSA:</div>
                            <p><%=mascota.getRecompensa()%></p>
                            <div class="subti">Si lo has visto contactate con:</div>
                            <p>Nombre: <%=mascota.getNombrePersona()%> <%=mascota.getApellidoPersona()%></p>
                            <p>Correo: <%=mascota.getCorreo()%></p>
                            <p>Teléfono: <%=mascota.getNumero()%></p>
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
               <!--conejos-->

               <div class="blocoConejos" style="height: 100%; width: 100%">
            <nav class="red" id="CONEJOS">
                        <div class="nav-wrapper"style="height: 100%; width: 100%">
                          <a class="brand-logo">CONEJOS</a>
                        </div>             
                      </nav>
            
                 <div id="body" style="height:87%; width: 100%">
                   <div style="width: 10%; height:87%; float: left; display: table; color:transparent"> :</div>
                     <div class="ContieneConejos">
                       <section id="body">
                        <%
                            ArrayList<MascotaBus> mascotitasss = (ArrayList) request.getAttribute("mascotas"); 
                         %>
                           <div id='conteframe' style='height: 90%; width: 80%'>  
                         <%
                            for(MascotaBus mascota : mascotitasss) 
                         {%> 
                         <%
                           if(mascota.getTipo().equals("Conejo"))
                         {%>
                      <div>
                       <div style='height: 30%; width: 15%; float: left;display: table' class="Ubicacion_imagem">
                            <figure>
                                <img class='materialboxed' data-caption='¿Has visto a <%=mascota.getNombre()%>?' src='../data/<%=mascota.getImg()%>'>
                            </figure> 
                            <div style='height: 32px;width: 47px; float: left; display: table; color:transparent'>.</div>
                            <div style='height: 10%; width: 110px; float: left;display: table' class='boton'>
                             
                                <p class='texto'>
                                  <a href='#<%=mascota.getDescripcion()%>' class="Nombre"><%=mascota.getNombre()%>
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
                            <b><div class="NombreM" >Yo soy:"<%=mascota.getNombre()%>"</div> </b>
                        </div>
                        <div style="align-content:center">..Ayudame a regresar a casa...</div>
                            <br> 
                            <div class="subti">Información de la mascota:</div>
                            <p>Soy un <%=mascota.getTipo()%> de raza <%=mascota.getRaza()%></p> 
                            <br> 
                            <p>Tengo <%=mascota.getEdad()%> MESES </p> 
                            <br> 
                            <img src='../data/<%=mascota.getImg()%>'  class='ABC'> 
                            <br> 
                            <p><%=mascota.getDescripcion()%></p>  
                            <div class="subti">Lugar y fecha del extravio:</div>
                            <p><%=mascota.getFhExtravio()%></p>
                            <p><%=mascota.getDireccion()%></p>
                            <div class="subti">RECOMPENSA:</div>
                            <p><%=mascota.getRecompensa()%></p>
                            <div class="subti">Si lo has visto contactate con:</div>
                            <p>Nombre: <%=mascota.getNombrePersona()%> <%=mascota.getApellidoPersona()%></p>
                            <p>Correo: <%=mascota.getCorreo()%></p>
                            <p>Teléfono: <%=mascota.getNumero()%></p>
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
       <script src="../JavaScript/materialize.js" type="text/javascript"></script>
    </body>
</html>