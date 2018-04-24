package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class banner_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<div id=\"mynav\" style=\"width: 100%; height: auto;\">\n");
      out.write("    <div class=\"banner\">\n");
      out.write("        <img src=\"resources/images/hotel.jpg\" alt=\"hotel\" />\n");
      out.write("    </div>\n");
      out.write("    <div class=\"carrosol\">\n");
      out.write("\n");
      out.write("        <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("            <!-- Indicators -->\n");
      out.write("            <ol class=\"carousel-indicators\">\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\n");
      out.write("            </ol>\n");
      out.write("\n");
      out.write("            <!-- Wrapper for slides -->\n");
      out.write("            <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("                <div class=\"item active\">\n");
      out.write("                    <div style=\"width: 50%; height: 350px; float: left; padding:  50px 5%;\">\n");
      out.write("                        <img class=\"img img-rounded\" src=\"resources/images/caro1.jpg\" alt=\"caro1\" style=\"height: 100%; width: 100%;\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"width: 50%; height: 350px; float: left; padding:  100px 10%;\">\n");
      out.write("                        <h2 style=\"background-color: red; color: white; text-align: center;\">SUMMER EARLY<br/>BOOKING </h2>\n");
      out.write("                        <h4 style=\"background-color: red; color: white; text-align: center;\">15% DISCOUNT </h4>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\" style=\"height: 350px;\">\n");
      out.write("                            <div class=\"col-md-4\" style=\"padding-top: 130px;\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <a href=\"/w3images/lights.jpg\" target=\"_blank\">\n");
      out.write("                                        <img src=\"resources/images/subanner1.jpg\" alt=\"Pulpit Rock\" style=\"width:100%; height: 80%;\">\n");
      out.write("                                        <div class=\"caption\">\n");
      out.write("                                            <p>Big confarrance holl for office metting.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\" style=\"padding-top: 90px;\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <a href=\"/w3images/nature.jpg\" target=\"_blank\">\n");
      out.write("                                        <img src=\"resources/images/subanner2.jpg\" alt=\"Moustiers Sainte Marie\" style=\"width:100%; height: 80%;\">\n");
      out.write("                                        <div class=\"caption\">\n");
      out.write("                                            <p>Luxarious bad room with big aria.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\" style=\"padding-top: 30px;\">\n");
      out.write("                                <div class=\"thumbnail\">\n");
      out.write("                                    <a href=\"/w3images/fjords.jpg\" target=\"_blank\">\n");
      out.write("                                        <img src=\"resources/images/subanner3.jpg\" alt=\"Cinque Terre\" style=\"width:100%; height: 80%;\">\n");
      out.write("                                        <div class=\"caption\">\n");
      out.write("                                            <p>Comfortable mitting holl.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <div style=\"width: 33%; height: 350px; float: left; padding:  80px 5%;\">\n");
      out.write("                        <h1 style=\"text-align: center;\"><i class=\"fa fa-fax\" style=\"font-size:30px;color:red\"></i></h1>\n");
      out.write("                        <h1 style=\"text-align: center;\"><i style=\"font-size:30px;color:red\">+1442542534444</i></h1>\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"width: 33%; height: 350px; float: left; padding:  70px 1%;\">\n");
      out.write("                        <img class=\"img img-rounded\" src=\"resources/images/subbanner4.jpg\" alt=\"caro1\" style=\"height: 100%; width: 100%;\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"width: 33%; height: 350px; float: left; padding:  80px 5%;\">\n");
      out.write("                        <h1 style=\"text-align: center;\"><i class=\"fa fa-phone\" style=\"font-size:30px;color:red\"></i></h1>\n");
      out.write("                        <h1 style=\"text-align: center;\"><i style=\"font-size:30px;color:red\">789254789</i></h1>\n");
      out.write("                        <h1 style=\"text-align: center;\"><i style=\"font-size:30px;color:red\">+8801725400435</i></h1>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <div style=\"width: 50%; height: 350px; float: left; padding:  130px 5%;\">\n");
      out.write("                        <h2 style=\"text-align: center; color: white; background-color: red;\">HAVE BATTER FOOD EXPERIENCE</h2>\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"width: 50%; height: 350px; float: left; padding:  50px 5%;\">\n");
      out.write("                        <img class=\"img img-circle\" src=\"resources/images/subbanner5.jpg\" alt=\"caro1\" style=\"height: 100%; width: 100%;\"/>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Left and right controls -->\n");
      out.write("            <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"sr-only\">Previous</span>\n");
      out.write("            </a>\n");
      out.write("            <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"sr-only\">Next</span>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
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
