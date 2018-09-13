<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Actualiza</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK REL=StyleSheet HREF="../DocumentosCSS/EAct.css" TYPE="text/css" MEDIA=screen>
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
        <div id="cabeza">
           <div id="nav">
              <ul>
                   <%
                    String nombre = session.getAttribute("persona").toString();
                    out.print("<li id='persona'><a href='../menu/menu.jsp'>"+nombre+"</a><li>");
                  %>
                   <li><a href="../Quejas/Quejas.html">CONTÁCTANOS</a></li>
                   <li><a href="JSP/cerrar.jsp">CERRAR SESIÓN</a></li>
               </ul> 
           </id> 
        </div>
        <div class="contenedor">
            <form name="formulario" onSubmit="return validarPasswd()" method="post" action="JSP/actualizacion.jsp">
                <center>
                    <p class="titulo"> ACTUALIZA TUS DATOS </p>
                    <br><br>
                    <%
                        Connection con = null;
                        Statement sta = null;
                        ResultSet r = null;
                        
                        String Correo = "";
                        String Tele = "";
                        int Colo = 0;
                        int Dele = 0;
                        String Contra = "";
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            con = DriverManager.getConnection("jdbc:mysql://localhost/PP","root","n0m3l0");
                            sta = con.createStatement();
                        }
                        catch(SQLException error) {
                            out.print(error.toString());
                        }
                        try{

                            r = sta.executeQuery("select * from personas where NickName='"+nombre+"';");
                            if(r.next()){
                                 Correo = r.getString("Correo");
                                 Tele = r.getString("Num_Telefonico");
                                 Colo = r.getInt("Id_Colonia");
                                 Dele = r.getInt("Id_Delegacion");
                                 Contra = r.getString("Clave");
                            }
                            
                        }catch(Exception error) {
                            out.print(error.toString());
                        }
                        out.print("<INPUT type='email' id='correo' name='correo' value='"+Correo+"' maxlength='50' onfocus = ' return disbaleCopyPaste(elm)' autocomplete='off' onkeypress='nojaks(this)' onkeydown = 'return interceptKeys(event)' >");
                        out.print("<br><br>");
                        out.print("<INPUT type='text' id='cel' name='celu' value='"+Tele+"' maxlength='10' minlength='10' onkeypress='nume()' onfocus = ' return disbaleCopyPaste(elm)' onkeypress='nojaks(this)' autocomplete='off' onkeydown = 'return interceptKeys(event)'>");
                        out.print("<br><br>");
                        
                            ArrayList<Model.Colonia> colonias = (ArrayList<Model.Colonia>) request.getAttribute("colonias");
                            ArrayList<Model.Delegacion> delegaciones = (ArrayList<Model.Delegacion>) request.getAttribute("delegaciones");
                            
                        out.print("<select id='delegacion' name='delegacion' onchange='getColonias(this)'>");
                            for(Model.Delegacion delegacion : delegaciones) {
                                if(delegacion.getIdDelegacion() == Dele){
                                    out.println("<option selected value='"+delegacion.getNom_Delegacion()+"' onclick='getColonias(`"+delegacion.getIdDelegacion()+"`)')>"+delegacion.getNom_Delegacion()+"</option>");
                                }
                                out.println("<option value='"+delegacion.getNom_Delegacion()+"' onclick='getColonias(`"+delegacion.getIdDelegacion()+"`)')>"+delegacion.getNom_Delegacion()+"</option>");
                            }
                        out.print("</select>");
                        
                        out.print("<select id='colonias' name='colonias'>");
                            
                        out.print("</select>");    
                        out.print("<br><br>");
                        out.print("<INPUT type='password' onkeypress='nojaks(this)' id='con' name='contra' placeholder='Contraseña Nueva' maxlength='20' onfocus = ' return disbaleCopyPaste(elm)' autocomplete='off' onkeydown = 'return interceptKeys(event)'>");
                        out.print("<INPUT type='password' onkeypress='nojaks(this)' id='concom' name='contracom' placeholder='Confirma Contraseña' maxlength='20' onfocus = ' return disbaleCopyPaste(elm)' autocomplete='off' onkeydown = 'return interceptKeys(event)'>");
                        out.print("<br><br><br>");
                        out.print("<p align='right'>");
                            out.print("<INPUT type='submit' class='boton' name='bot' value='Cambia' id='botreg'>");
                        out.print("</p>");
                        
                    %>
                </center>
            </form>
            <form method="post" action="JSP/elimina.jsp">
                <INPUT type="submit" class="boton" name="boton" value="Eliminar Cuenta" id="elicuenta" onclick="return confirm('Seguro que desea eliminar la cuenta')" >
            <form>
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
                console.log(colonia)
                if(colonia.delegacion == delegacionId.selectedIndex+1) {
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