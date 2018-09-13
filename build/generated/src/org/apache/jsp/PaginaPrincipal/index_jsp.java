package org.apache.jsp.PaginaPrincipal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Pet Petition</title>\r\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/png\" href=\"../Resourses/Images/logoPP.png\"/>\r\n");
      out.write("        <meta charset=\"ISO-8859-1\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../DocumentosCSS/PPrincipal.css\">\r\n");
      out.write("      \r\n");
      out.write("           \r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("    <body onload=\"atras()\">\r\n");
      out.write("        <div id=\"contenedor_carga\">\r\n");
      out.write("            <div id=\"contereal\">\r\n");
      out.write("            <div id=\"preloader_1\">\r\n");
      out.write("                <img src=\"../Resourses/Images/logoPP.png\" id=\"loguito\">\r\n");
      out.write("            </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>\r\n");
      out.write("            <div id=\"cabecera\">\r\n");
      out.write("            <div id=\"menu\">\r\n");
      out.write("        \r\n");
      out.write("      \r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li>ADOPCIÓN\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><a href=\"/MAdoptaTodo\">Adopta</a></li>\r\n");
      out.write("                            <li>Dar en Adopción\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"../InicioDeSesion/InicioDeSesion.html\">Inicia Sesión</a></li>\r\n");
      out.write("                                    <li><a href=\"/RegistroPersona\">Regístrate</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>CUIDADO<ul>\r\n");
      out.write("\r\n");
      out.write("                            <li><a href=\"http://localhost:8084/BuscaServicio/Busca.html\">Busca Servicios</a></li>\r\n");
      out.write("                            <li>Ofrece Servicio\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"../InicioDeSesion/InicioDeSesion.html\">Inicia Sesión</a></li>\r\n");
      out.write("                                    <li><a href=\"/RegistroPersona\">Regístrate</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li><A href=\"/TodasLasMascotasPerdidas\"> MASCOTAS PERDIDAS</A> </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><a href=\"../Quejas/Quejas.html\">CONTÁCTANOS</a></li>\r\n");
      out.write("                    <li><a href=\"../AmigoIdeal/Ideal.html\">MASCOTA IDEAL</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <a href=\"../Empresa/Empresa.html\"><img class=\"logo\" src=\"../Resourses/Images/logoPP.png\" id=\"logo\"></a>\r\n");
      out.write("        <p class=\"tit\"><a href=\"../Empresa/INTRO.mp4\">PetPetition</a></p>\r\n");
      out.write("        <div class=\"contel-all\" id=\"carrucel\">\r\n");
      out.write("            <div class=\"contel-carrusel\">\r\n");
      out.write("                <a href=\"#one\"><figure ><img src=\"../Resourses/Images/img_carrucel/uno.jpg\"></figure></a>\r\n");
      out.write("               \r\n");
      out.write("                <figure a ng-href=\"#two\"><img src=\"../Resourses/Images/img_carrucel/dos.jpg\"></figure>\r\n");
      out.write("                <figure a href=\"#three\"><img src=\"../Resourses/Images/img_carrucel/tres.jpg\"></figure>\r\n");
      out.write("                <figure a href=\"#four\"><img src=\"../Resourses/Images/img_carrucel/cuatro.jpg\"></figure>\r\n");
      out.write("                <figure a href=\"#five\"><img src=\"../Resourses/Images/img_carrucel/cinco.jpg\"></figure>\r\n");
      out.write("                <figure a href=\"#six\"><img src=\"../Resourses/Images/img_carrucel/seis.jpg\"></figure>\r\n");
      out.write("                <figure a href=\"#seven\"><img src=\"../Resourses/Images/img_carrucel/siete.jpg\"></figure>\r\n");
      out.write("                <figure a href=\"#eight\"><img src=\"../Resourses/Images/img_carrucel/ocho.jpg\"></figure>\r\n");
      out.write("                <figure a href=\"#nine\"> <img src=\"../Resourses/Images/img_carrucel/nueve.jpg\"></figure>\r\n");
      out.write("                <figure a href=\"#twelve\"><img src=\"../Resourses/Images/img_carrucel/diez.jpg\"></figure>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"one\" class=\"algo\">\r\n");
      out.write("                <div>\r\n");
      out.write("                    <a href=\"#close\" title=\"Close\" class=\"close\" onclick=\"close();\"><div style=\"float: left\"></div><div class=\"tache\"><img src=\"../Resourses/Images/close.svg\" width=30 height=20></div></a> \r\n");
      out.write("                   \r\n");
      out.write("                    <img src=\"../Resourses/Images/img_carrucel/uno.jpg\"  class=\"imagenesModales\" >\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("        \r\n");
      out.write("        <script>\r\n");
      out.write("            var contenedor=document.getElementById('contenedor_carga');\r\n");
      out.write("            window.onload=function(){\r\n");
      out.write("                contenedor.style.visivility='hidden';\r\n");
      out.write("                contenedor.style.opacity='0';\r\n");
      out.write("                setTimeout(uno,1400);\r\n");
      out.write("                \r\n");
      out.write("                window.location.hash=\"no-back-button\";\r\n");
      out.write("                window.location.hash=\"Again-No-back-button\" //chrome\r\n");
      out.write("                window.onhashchange=function(){window.location.hash=\"no-back-button\";}\r\n");
      out.write("            }\r\n");
      out.write("            function uno(){\r\n");
      out.write("                contenedor.style.display='none';\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("        </script>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
