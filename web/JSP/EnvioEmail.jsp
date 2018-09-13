

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="modelo.Email"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>CONFIRMACION DE ENVIO</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <LINK REL=StyleSheet HREF="../DocumentosCSS/EstilosR.css" TYPE="text/css" MEDIA=screen>
         
    </head>
    <body>
        <%
            
            Email email = new Email();
            
            String de = request.getParameter("de");
            String contra = request.getParameter("contra");
            String para = "aylinyepezgranados@gmail.com";
            String mensaje = request.getParameter("contenido");
            String asunto = request.getParameter("radio");
            
                boolean resultado = email.enviarCorreo(de, contra, para, mensaje, asunto);

                if(resultado){
                    out.println("<div><a href='../Quejas/Quejas.html'><center>Sugerencia Recibida, pronto nos pondremos en contacto contigo</center></a></div>");
                }
                else
                    out.println("<div><a href='../Quejas/Quejas.html'><center>Recuerda que la contraseña debe coincidir con la del correo</center></a></div>");
        %>
    </body>
</html>
