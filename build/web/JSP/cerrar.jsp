<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="GET" action="../InicioDeSesion/InicioDeSesion.html" id="cierra">
            <input type="submit" style="display:none;">
        </form>
        <%HttpSession sesion = request.getSession();
        sesion.invalidate();
        //out.println("<script>alert('Sesión cerrada.');</script>");
        out.print("<script>document.getElementById('cierra').submit(); </script>");%>
    </body>
</html>
