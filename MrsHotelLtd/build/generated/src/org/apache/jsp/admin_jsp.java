package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>MRS Hotel Ltd</title>\n");
      out.write("        <link href=\"resources/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"resources/css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"resources/css/registration.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"resources/css/reservation.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"resources/css/admin.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"resources/css/adminOparation.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"resources/css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"resources/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"resources/js/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js\"></script>\n");
      out.write("        <script src=\"//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js\"></script>\n");
      out.write("        <script src=\"resources/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"resources/js/myJquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"resources/js/adminAngularJs.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body ng-app=\"hotelAdminApp\" ng-controller=\"hotelAdminCtrl\">\n");
      out.write("        <!--................Header, manubar............-->\n");
      out.write("        <div id=\"app1\" style=\"width: 100%; height: auto;\">\n");
      out.write("            <!--..............Header............-->\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <img src=\"resources/images/Untitled-2.png\" alt=\"logo\"/>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"sitename\">\n");
      out.write("                    <h1>MRS Hotel Bangladesh</h1>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"login\">\n");
      out.write("                    <a href=\"http://www.facebook.com\" target=\"_blank\"> <i class=\"fa fa-facebook-square\" style=\"font-size:70px;\"></i></a>\n");
      out.write("                    <a href=\"http://www.google.com\" target=\"_blank\"> <i class=\"fa fa-google-plus-square\" style=\"font-size:70px;\"></i></a>\n");
      out.write("                    <a href=\"http://www.twitter.com\" target=\"_blank\"> <i class=\"fa fa-twitter-square\" style=\"font-size:70px;\"></i></a>\n");
      out.write("                    <a href=\"http://www.youtube.com\" target=\"_blank\"> <i class=\"fa fa-youtube-square\" style=\"font-size:70px;\"></i></a>\n");
      out.write("                    <a href=\"http://www.linkedin.com\" target=\"_blank\"> <i class=\"fa fa-linkedin-square\" style=\"font-size:70px;\"></i></a>\n");
      out.write("                    <a href=\"index.jsp\"> <i class=\"glyphicon glyphicon-log-out\" style=\"font-size:60px;\"></i></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <!--................Manubar.............-->\n");
      out.write("\n");
      out.write("            <div style=\"width: 100%; height: auto;\">\n");
      out.write("                <nav class=\"navbar navbar-inverse\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("\n");
      out.write("                        <ul class=\"nav navbar-nav\">\n");
      out.write("                            <li id=\"adminhome\"><a href=\"#/\"><span class=\"glyphicon glyphicon-info-sign\"></span>Information</a></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li><a href=\"#adminChackIn\"><span class=\"fa fa-bed\"></span> Check In</a></li>\n");
      out.write("                            <li><a href=\"#adminchackout\"><span class=\"glyphicon glyphicon-check\"></span> Check Out</a></li>\n");
      out.write("                            <li><a href=\"#adminmembership\"><span class=\"glyphicon glyphicon-user\"></span> Membership</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("            <div ng-view style=\"width: 100%; height: auto; float: left;\"></div>\n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <!--............nav plugin.............-->\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <!--.............footer..............-->\n");
      out.write("\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"footer-left\">\n");
      out.write("                <p style=\"color: #23527C; text-align: center; font-size: 20px;\">Copyright<i class=\"fa fa-copyright\"></i> MRS Hotel Bangladesh</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-middel\">\n");
      out.write("                <a href=\"http://www.facebook.com\" target=\"_blank\"> <i class=\"fa fa-facebook-square\" style=\"font-size:30px;\"></i></a>\n");
      out.write("                <a href=\"http://www.google.com\" target=\"_blank\"> <i class=\"fa fa-google-plus-square\" style=\"font-size:30px;\"></i></a>\n");
      out.write("                <a href=\"http://www.twitter.com\" target=\"_blank\"> <i class=\"fa fa-twitter-square\" style=\"font-size:30px;\"></i></a>\n");
      out.write("                <a href=\"http://www.youtube.com\" target=\"_blank\"> <i class=\"fa fa-youtube-square\" style=\"font-size:30px;\"></i></a>\n");
      out.write("                <a href=\"http://www.linkedin.com\" target=\"_blank\"> <i class=\"fa fa-linkedin-square\" style=\"font-size:30px;\"></i></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-right\">\n");
      out.write("                <a href=\"#\" style=\"font-size: 20px; color: #23527C;\">Tram & Condition</a> | \n");
      out.write("                <a href=\"#\" style=\"font-size: 20px; color: #23527C;\">Privacy Policy</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
