<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>Registra Servicio</title>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK REL=StyleSheet HREF="../DocumentosCSS/ERegServ.css" TYPE="text/css" MEDIA=screen> 
        <script src="../JavaScript/REgServ.js"></script>
    </head>
    
    
    <body onchange="habilitar()">
        <center><div class="contenedor">
            <form method="post" action="/RegistroServicio" enctype="multipart/form-data">
                <p class="titulo"> REGISTRA TU SERVICIO </p>
                <%
                    HttpSession sesion = request.getSession();
                    String dueño = sesion.getAttribute("persona").toString();
                    
                    Connection con = null;
                    Statement sta = null;
                    ResultSet r = null;
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
                        int cuenta = 0;
                        /*
                        ResultSet rs  = stm.executeQuery("SELECT count(*) FROM personajes");
     // chequeo que el result set no sea vacío, moviendo el cursor a la 
     // primer fila. (El cursor inicia antes de la primer fila)
     if(rs.next()) {
       //Si hay resultados obtengo el valor. 
        n= rs.getInt(1);
     }
                        */
                        
                        r = sta.executeQuery("select count(*) from Servicios where Propietario='"+dueño+"'");
                        if(r.next()){
                            cuenta = r.getInt(1);
                        }
                            
                        if (cuenta == 0){
                            out.print("<input type='text' id='nomser' name='nomser'  maxlength='50' placeholder='Nombre del servicio' required> <br> <br>");
                            out.print("<textarea id='Descripcion' name='Descripcion' placeholder='Realiza una breve descripcion acerca de tu servicio'  maxlength='255' required></textarea><br> <br>");
                            out.print("<div id='checks1'>");
                            out.print("<input type='checkbox' name='v' value='Veterinaria'id='Vete'> Veterinaria <br>");

                            out.print("<textarea id='Desc1' name='DesVete' class='Descs' placeholder='Realiza una descripción del servicio de Veterinaria (Se recomienda incluir precios y zonas que manejan)' maxlength='255' disabled required></textarea>");


                            out.print("</div>");

                            out.print("<div id='checks2'>");
                            out.print("<input type='checkbox' name='p' value='Paseo' id='Pase'> Paseo <br>");

                            out.print("<textarea id='Desc2' name='DesPas' class='Descs' placeholder='Realiza una descripción acerca del servicio de Paseo (Se recomienda incluir precios y zonas que manejan)'  maxlength='255' disabled required></textarea>");
                            out.print("</div>");

                            out.print("<div id='checks3'>");

                            out.print("</div>");

                            out.print("<div id='checks3'>");
                            out.print("<input type='checkbox' name='e' value='Estetica' id='Este'> Estética <br>");
                            out.print("<textarea id='Desc3' name='DesEst' class='Descs' placeholder='Realiza una descripción acerca del servicio de Estética (Se recomienda incluir precios y zonas que manejan)'  maxlength='255' disabled></textarea>");

                            out.print("<p align='right'>");
                            out.print("<br>");
                            out.print("<input type='submit' class='boton' value='Registra' id='botreg' />");
                            out.print("</p>");
                            out.print("</div>");
                        }
                        else
                        {
                            String NomSer = "";
                            String DesSer = "";
                            int Pase = 0;
                            int Este = 0;
                            int Vete = 0;
                            String DesPa = "";
                            String DesEs = "";
                            String DesVe = "";
                            
                            r = sta.executeQuery("select * from Servicios where Propietario='"+dueño+"';");
                            if(r.next()){
                                 NomSer= r.getString("NomServicio");
                                 DesSer = r.getString("DescServicio");
                                 Pase = r.getInt("Paseo");
                                 Este = r.getInt("Estetica");
                                 Vete = r.getInt("Veterinaria");
                                 DesPa = r.getString("DescPaseo");
                                 DesEs = r.getString("DescEstetica");
                                 DesVe = r.getString("DescVeterinaria");
                            }
                            
                            out.print("<input type='text' id='nomser' name='nomser' value='"+NomSer+"' required> <br> <br>");
                            out.print("<textarea id='Descripcion' name='Descripcion' maxlength='255' required>"+DesSer+"</textarea><br> <br>");
                            out.print("<div id='checks1'>");
                            if(Vete == 1){
                                out.print("<input type='checkbox' name='v' value='Veterinaria'id='Vete' checked> Veterinaria <br>");
                                out.print("<textarea id='Desc1' name='DesVete' class='Descs' maxlength='255'>"+DesVe+"</textarea>");
                                out.print("</div>");
                            }else{
                                out.print("<input type='checkbox' name='v' value='Veterinaria'id='Vete'> Veterinaria <br>");

                                out.print("<textarea id='Desc1' name='DesVete' class='Descs' placeholder='Realiza una descripciÃ³n del servicio de Veterinaria (Se recomienda incluir precios y zonas que manejan)' maxlength='255' disabled required></textarea>");


                                out.print("</div>");
                            }
                            if(Pase == 1){
                                out.print("<div id='checks2'>");
                                out.print("<input type='checkbox' name='p' value='Paseo' id='Pase' checked> Paseo <br>");
                                out.print("<textarea id='Desc2' name='DesPas' class='Descs' maxlength='255'>"+DesPa+"</textarea>");
                                out.print("</div>");
                            }else{
                                out.print("<div id='checks2'>");
                                out.print("<input type='checkbox' name='p' value='Paseo' id='Pase'> Paseo <br>");
                                out.print("<textarea id='Desc2' name='DesPas' class='Descs' placeholder='Realiza una descripciÃ³n acerca del servicio de Paseo (Se recomienda incluir precios y zonas que manejan)'  maxlength='255' disabled required></textarea>");
                                out.print("</div>");
                            }
                            if(Este == 1){
                                out.print("<div id='checks3'>");
                                out.print("<input type='checkbox' name='e' value='Estetica' id='Este' checked>  Estética <br>");
                                out.print("<textarea id='Desc3' name='DesEst' class='Descs' maxlength='255'>"+DesEs+"</textarea>");
                                out.print("<p align='right'>");
                                out.print("<br>");
                                out.print("<input type='submit' class='boton' value='Registra' id='botreg' />");
                                out.print("</p>");
                                out.print("</div>");
                            }else{
                                out.print("<div id='checks3'>");
                                out.print("<input type='checkbox' name='e' value='Estetica' id='Este'> Estética <br>");
                                out.print("<textarea id='Desc3' name='DesEst' class='Descs' placeholder='Realiza una descripción acerca del servicio de Estética (Se recomienda incluir precios y zonas que manejan)'  maxlength='255' disabled></textarea>");

                                out.print("<p align='right'>");
                                out.print("<br>");
                                out.print("<input type='submit' class='boton' value='Registra' id='botreg' />");
                                out.print("</p>");
                                out.print("</div>");
                            }
                        }

                    }catch(Exception error) {
                        out.print(error.toString());
                    }
                %>
                <!--
                <input type="text" id="nomser" name="nomser" placeholder="Nombre del servicio." required> <br> <br>
                <textarea id="Descripcion" name="Descripcion" placeholder="Realiza una breve descripcion acerca de tu servicio."  maxlength="255" required></textarea>
                <br> <br>
                <div id="checks1">
               
                    <input type="checkbox" name="v" value="Veterinaria" id="Vete"> Veterinaria <br>
                 <textarea id="Desc1" name="DesVete" class="Descs" placeholder="Realiza una descripción del servicio de Veterinaria. (Se recomienda incluir precios y zonas que manejan.)"  maxlength="255" disabled></textarea>
                </div>

                <div id="checks2">
                
                    <input type="checkbox" name="p" value="Paseo" id="Pase"> Paseo <br>
                    <textarea id="Desc2" name="DesPas" class="Descs" placeholder="Realiza una descripción acerca del servicio de Paseo. (Se recomienda incluir precios y zonas que manejan.)"  maxlength="255" disabled></textarea>
                </div>
                
                <div id="checks3">
                
                    <input type="checkbox" name="e" value="Estetica" id="Este"> Estética <br>
                    <textarea id="Desc3" name="DesEst" class="Descs" placeholder="Realiza una descripción acerca del servicio de Estética. (Se recomienda incluir precios y zonas que manejan.)"  maxlength="255" disabled></textarea>
             
                <p align="right">
                    <input type="submit" class="boton" value="Registra" id="botreg" />
                </p>
                </div>
                -->
            </form>
        </div></center>
    </body>
</html>