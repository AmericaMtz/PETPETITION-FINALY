<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<html>
    <head>
        <title>Pet Petition</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../DocumentosCSS/PPrincipal.css">
      
           

        
    </head>
    
    <body onload="atras()">
        <div id="contenedor_carga">
            <div id="contereal">
            <div id="preloader_1">
                <img src="../Resourses/Images/logoPP.png" id="loguito">
            </div>
            </div>
        </div>
        <div>
            <div id="cabecera">
            <div id="menu">
        
      
                <ul>
                    <li>ADOPCIÓN
                        <ul>
                            <li><a href="/MAdoptaTodo">Adopta</a></li>
                            <li>Dar en Adopción
                                <ul>
                                    <li><a href="../InicioDeSesion/InicioDeSesion.html">Inicia Sesión</a></li>
                                    <li><a href="/RegistroPersona">Regístrate</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>CUIDADO<ul>

                            <li><a href="http://localhost:8084/BuscaServicio/Busca.html">Busca Servicios</a></li>
                            <li>Ofrece Servicio
                                <ul>
                                    <li><a href="../InicioDeSesion/InicioDeSesion.html">Inicia Sesión</a></li>
                                    <li><a href="/RegistroPersona">Regístrate</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><A href="/TodasLasMascotasPerdidas"> MASCOTAS PERDIDAS</A> </li>
                </ul>
                <ul>
                    <li><a href="../Quejas/Quejas.html">CONTÁCTANOS</a></li>
                    <li><a href="../AmigoIdeal/Ideal.html">MASCOTA IDEAL</a></li>
                </ul>
            </div>  
        </div>
        </div>
        <a href="../Empresa/Empresa.html"><img class="logo" src="../Resourses/Images/logoPP.png" id="logo"></a>
        <p class="tit"><a href="../Empresa/INTRO.mp4">PetPetition</a></p>
        <div class="contel-all" id="carrucel">
            <div class="contel-carrusel">
                <a href="#one"><figure ><img src="../Resourses/Images/img_carrucel/uno.jpg"></figure></a>
               
                <figure a ng-href="#two"><img src="../Resourses/Images/img_carrucel/dos.jpg"></figure>
                <figure a href="#three"><img src="../Resourses/Images/img_carrucel/tres.jpg"></figure>
                <figure a href="#four"><img src="../Resourses/Images/img_carrucel/cuatro.jpg"></figure>
                <figure a href="#five"><img src="../Resourses/Images/img_carrucel/cinco.jpg"></figure>
                <figure a href="#six"><img src="../Resourses/Images/img_carrucel/seis.jpg"></figure>
                <figure a href="#seven"><img src="../Resourses/Images/img_carrucel/siete.jpg"></figure>
                <figure a href="#eight"><img src="../Resourses/Images/img_carrucel/ocho.jpg"></figure>
                <figure a href="#nine"> <img src="../Resourses/Images/img_carrucel/nueve.jpg"></figure>
                <figure a href="#twelve"><img src="../Resourses/Images/img_carrucel/diez.jpg"></figure>
            </div>
            <div id="one" class="algo">
                <div>
                    <a href="#close" title="Close" class="close" onclick="close();"><div style="float: left"></div><div class="tache"><img src="../Resourses/Images/close.svg" width=30 height=20></div></a> 
                   
                    <img src="../Resourses/Images/img_carrucel/uno.jpg"  class="imagenesModales" >
            </div>
        </div>
    </div>
        
        <script>
            var contenedor=document.getElementById('contenedor_carga');
            window.onload=function(){
                contenedor.style.visivility='hidden';
                contenedor.style.opacity='0';
                setTimeout(uno,1400);
                
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