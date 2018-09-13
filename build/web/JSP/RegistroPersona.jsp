<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Registro</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK REL=StyleSheet HREF="../DocumentosCSS/ERegPersona.css" TYPE="text/css" MEDIA=screen>
        <script src="../JavaScript/Registro.js"></script>
        
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
        <div class="contenedor">
            <form name="formulario" onSubmit="return validarPasswd()" method="post" action="JSP/Registro.jsp">
                <center>
                    <p class="titulo"> REGÍSTRATE </p>
                    <br><br>
                    <INPUT type="text" id="noms" name="nombre" placeholder="Nombre(s)" maxlength="25" onkeyup="mayus(this);" onkeypress="letras()" 
                           onfocus = " return disbaleCopyPaste(elm)"
                           autocomplete="off" 
                           onkeypress="nojaks(this)"
                           onkeydown = "return interceptKeys(event)"
                           required/> 
                    <INPUT type="text" id="appat" name="appat" placeholder="Apellido Paterno" maxlength="20" onkeyup="mayus(this);" onkeypress="letras()" 
                           onfocus = " return disbaleCopyPaste(elm)"
                           autocomplete="off" 
                           onkeypress="nojaks(this)"
                           onkeydown = "return interceptKeys(event)"
                           required/>
                    <INPUT type="text" id="apmat" name="apmat" placeholder="Apellido Materno" maxlength="20" onkeyup="mayus(this);" onkeypress="letras()"
                           onfocus = " return disbaleCopyPaste(elm)"
                           autocomplete="off" 
                           onkeypress="nojaks(this)"
                           onkeydown = "return interceptKeys(event)"
                           required/> 
                    <br><br>

                        <%
                            ArrayList<Model.Colonia> colonias = (ArrayList<Model.Colonia>) request.getAttribute("colonias");
                            ArrayList<Model.Delegacion> delegaciones = (ArrayList<Model.Delegacion>) request.getAttribute("delegaciones");
                            
                        %>
                        <select id='delegacion' name='delegacion' onchange="getColonias(this)">
                            <option>Seleccione Delegacion</option>
                            <%for(Model.Delegacion delegacion : delegaciones) {
                                out.println("<option value='"+delegacion.getNom_Delegacion()+"' onclick='getColonias(`"+delegacion.getIdDelegacion()+"`)')>"+delegacion.getNom_Delegacion()+"</option>");
                            }%>
                        </select>
                            
                        <select id='colonias' name='colonias'>
                            
                        </select>    
                    <br><br>
                    <INPUT type="email" id="correo" name="correo" placeholder="Correo Electrónico" maxlength="50" 
                           onfocus = " return disbaleCopyPaste(elm)"
                           autocomplete="off" 
                           onkeypress="nojaks(this)"
                           onkeydown = "return interceptKeys(event)"
                           required/>
                    <INPUT type="text" id="cel" name="celu" placeholder="Celular" maxlength="10" minlength="10" onkeypress="nume()" 
                           onfocus = " return disbaleCopyPaste(elm)"
                           autocomplete="off" 
                           onkeypress="nojaks(this)"
                           onkeydown = "return interceptKeys(event)"
                           required/>
                    <br><br>
                    <INPUT type="text" id="nina" name="nn" placeholder="Nick Name" maxlength="25" onkeyup="mayus(this);" 
                           onfocus = " return disbaleCopyPaste(elm)"
                           autocomplete="off" 
                           onkeypress="nojaks(this)"
                           onkeydown = "return interceptKeys(event)"
                           required/>
                    <INPUT type="password" id="con" name="contra" placeholder="Contraseña" maxlength="20"
                           onfocus = " return disbaleCopyPaste(elm)"
                           autocomplete="off" 
                           onkeypress="nojaks(this)"
                           onkeydown = "return interceptKeys(event)"
                           required/>
                    <INPUT type="password" id="concom" name="contracom" placeholder="Confirma Contraseña" maxlength="20" 
                           onfocus = " return disbaleCopyPaste(elm)"
                           autocomplete="off" 
                           onkeypress="nojaks(this)"
                           onkeydown = "return interceptKeys(event)"
                           required/>
                    <br><br><br>
                    <p align="right">
                        <INPUT type="submit" class="boton" name="bot" value="Registra" id="botreg">
                    </p>
                </center>
            </form>
        </div>
        <script>
        function getColonias(delegacionId) {
            console.log(delegacionId.selectedIndex+1)
            let colonias = [<%for(Model.Colonia colonia : colonias) {
                                out.println("{id: "+colonia.getIdColonia()+", nombre: '"+colonia.getNom_Colonia()+"', delegacion: '"+colonia.getIdDelegacion()+"'},");
                            }%>]
            let coloniasFiltradas = []
            let select = document.getElementById("colonias") 
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
            for(let colonia of colonias) {
                if(colonia.delegacion == delegacionId.selectedIndex) {/*Quitar el index aqui*/
                    console.log('YES')
                    coloniasFiltradas.push(colonia)
                    let option = document.createElement("option")
                    option.text = colonia.nombre
                    option.value = colonia.nombre
                    select.add(option)
                }
            }
             console.log(coloniasFiltradas)
        }
    </script>
    <script>
                var contenedor=document.getElementById('contenedor_carga');
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