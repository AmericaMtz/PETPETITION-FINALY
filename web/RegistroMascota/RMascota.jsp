<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>Registra Mascota</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK REL=StyleSheet HREF="../DocumentosCSS/ERMascota.css" TYPE="text/css" MEDIA=screen> 
        <script src="../JavaScript/oculta.js"></script>   

           <script >
           var dato;
                 function numeros()
             {
                 if(event.keyCode < 48 || event.keyCode >57)
                    event.returnValue = false;
            }
           </script>
           
           <script>
            function click(){
                if(event.button==2){
                   alert('No es posible realizar esta acción');
                }
            }
            document.onmousedown = click
        </script>
        
        
        <script type="text/javascript">
            function disbaleCopyPaste(elm){
                // Deshabilitar los eventos cut/copy/paste
                elm.onkeydown = interceptKeys
                elm.oncontextmenu = function(){
                        return false
                }
                    }

            function interceptKeys(evt) {
                evt = evt||window.event // IE support
                var c = evt.keyCode
                var ctrlDown = evt.ctrlKey||evt.metaKey // Mac
                if (ctrlDown && evt.altKey) return true
                // Verifica los ctrl + c, v y x
                else if (ctrlDown && c==67) return false // c
                else if (ctrlDown && c==86) return false // v
                else if (ctrlDown && c==88) return false // x

                return true
            }

        </script>
    </head>
    
    
    <body onchange="">
        <center><div class="contenedor">
            <form method="post" action="/RMascota" enctype="multipart/form-data">
                <p class="titulo"> REGISTRA A TU MASCOTA </p>
                <input type="text" id="nommas" name="nommas" placeholder="Nombre de tu mascota"
                       onfocus = " return disbaleCopyPaste(elm)" 
                       autocomplete="off" 
                       onkeypress="nojaks(this)"
                       onkeydown = "return interceptKeys(event)"
                       required>
                <input type="text" id="edadmas" name="edadmas" onkeypress="numeros()" placeholder="Meses de nacido" maxlength="3"
                       onfocus = " return disbaleCopyPaste(elm)" 
                       autocomplete="off" 
                       onkeypress="nojaks(this)"
                       onkeydown = "return interceptKeys(event)"
                       required>
                <br><br>
                
                 <%
                            ArrayList<Model.Razas> razas = (ArrayList<Model.Razas>) request.getAttribute("razas");
                            ArrayList<Model.TiposM> tiposm = (ArrayList<Model.TiposM>) request.getAttribute("tiposm");
                            
                        %>
                    <select id='tipom' name='tipom' onchange="getRazas(this)">
                        <option>Seleccione Mascota</option>    
                        <%for(Model.TiposM tipo : tiposm) {
                        out.println("<option value='"+tipo.getNom_Tipo()+"' required onclick='getRazas(`"+tipo.getId_Tipos()+"`)')>"+tipo.getNom_Tipo()+"</option>");
                        }%>
                    </select>
                <select id='razas' name='razas' required="">
                            
                        </select>    
                    <br><br>
                <input id='Hombre' type="radio" name="sexo" value="Macho" required=""/>Macho
                <input id='Mujer' type="radio" name="sexo" value="Hembra" required="" />Hembra
                <br><br>
                <textarea name="Descripcion" id="Descripcion" placeholder="Realiza una breve descripción acerca de tu mascota"  maxlength="25" 
                       onfocus = " return disbaleCopyPaste(elm)" 
                       autocomplete="off" 
                       onkeypress="nojaks(this)"
                       onkeydown = "return interceptKeys(event)"
                       required></textarea>
                <br>
                <input id="imagen" type="file" accept="image/*" name="data" required/>
                <p align="right">
                    <input type="submit" class="boton" value="Registra" id="botreg" />
                </p>
            </form>
        </div></center>
        <script>
        function getRazas(tipoId) {
            console.log(tipoId.selectedIndex+1)
            let razas = [<%for(Model.Razas raza : razas) {
                                out.println("{id: "+raza.getiDRaza()+", nombre: '"+raza.getNom_Raza()+"', Tipos: '"+raza.getId_Tipo()+"'},");
                            }%>]
            let razasFiltradas = []
            let select = document.getElementById("razas") 
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for(let raza of razas) {
                console.log(raza)
                console.log(tipoId.selectedIndex+1)
                if(raza.Tipos == tipoId.selectedIndex) {
                    console.log('YES')
                    razasFiltradas.push(raza)
                    let option = document.createElement("option")
                    option.text = raza.nombre
                    option.value = raza.nombre
                    select.add(option)
                }
            }
             console.log(razasFiltradas)
        }
    </script>
    </body>
</html>
