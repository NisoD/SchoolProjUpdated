package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import MyClasses.MyUtils;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class homePage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>basic form</title>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("           .btn {font: 10px Tahoma; font-weight: bold; color: red; background: #ccc; border: 1px solid darkgray; padding: 5px}\n");
      out.write("           .btn:hover {border: 1px solid black; background: yellow}\n");
      out.write("           .menuText\n");
      out.write("            {\n");
      out.write("                height: 5px;\n");
      out.write("                color: brown;\n");
      out.write("                opacity:0.6;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-weight: bold;\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("            .menuText:hover\n");
      out.write("            {\n");
      out.write("                height: 5px;\n");
      out.write("                color:orange;\n");
      out.write("                opacity:1.5;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                font-weight: bold;\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("    </style>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("            var imageIndex = 1;\n");
      out.write("            function setImage()\n");
      out.write("            {\n");
      out.write("                slideShow.src = \"img/slideShow/\" + imageIndex + \".jpg\";\n");
      out.write("                imageIndex++;\n");
      out.write("                if(imageIndex >= 4)\n");
      out.write("                    imageIndex = 1;\n");
      out.write("            }\n");
      out.write("            function startInterval()\n");
      out.write("            {\n");
      out.write("                var intrev = setInterval('setImage()', 2000);\n");
      out.write("            }\n");
      out.write("            function startTime()\n");
      out.write("            {\n");
      out.write("                var today=new Date();\n");
      out.write("                var h=today.getHours();\n");
      out.write("                var s=today.getSeconds();\n");
      out.write("                var m=today.getMinutes();\n");
      out.write("                m=checkTime(m);\n");
      out.write("                s=checkTime(s);\n");
      out.write("                document.getElementById('txt').innerHTML=h+\":\"+m+\":\"+s;\n");
      out.write("                t=setTimeout(function(){startTime(),500});\n");
      out.write("            }\n");
      out.write("            function checkTime(i)\n");
      out.write("            {\n");
      out.write("               if(i<10)\n");
      out.write("                   {\n");
      out.write("                       i=\"0\"+i;\n");
      out.write("                   }\n");
      out.write("                   return i;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("  </head>\n");
      out.write("  <body dir=\"rtl\" bgcolor=\"blanchedalmond\" onload=\"startTime()\">\n");
      out.write("        ");

                   int i = Integer.parseInt(application.getAttribute("siteCounter").toString());
                   i++;
                   application.setAttribute("siteCounter", i);
                   out.print("<h4>מונה מבקרים "+i+"</h4>");
            
      out.write(" \n");
      out.write("        <div class=\"black\" id=\"txt\" align=\"left\"></div>\n");
      out.write("        <script type=\"text/javascript\" >startInterval();</script>\n");
      out.write("        <center>\n");
      out.write("\n");
      out.write("              <table border=\"1\" align=\"center\" width=\"650\" style=\"text-align: center;\">\n");
      out.write("                  <tr>\n");
      out.write("            <td>\n");
      out.write("               <img width=\"150\" style=\"\" height=\"125\" src=\"img/nespic.png\" alt=\"\">\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("               <table border=\"2\" align=\"center\"  width=\"650\" style=\"text-align: center;\">\n");
      out.write("                <tr style=\"color:blanchedalmond; font-size: 20px;\">\n");
      out.write("                  <td> <a href=\"index.jsp\" class=\"menuText\">ראשי</a></td>\n");
      out.write("                  <td> <a href=\"about.jsp\" class=\"menuText\">אודות</a></td>\n");
      out.write("                  <td> <a href=\"insertUser.jsp\"class=\"menuText\">רישום לאתר</a></td>\n");
      out.write("                  <td> <a href=\"gallery.jsp\" class=\"menuText\">גלריית תמונות</a></td>\n");
      out.write("                  <td> <a href=\"trivia.jsp\" class=\"menuText\">טריוויה</a></td>\n");
      out.write("                  <td> <a href=\"contactUser.jsp\" class=\"menuText\">צור קשר</a></td>\n");
      out.write("                  <td> <a href=\"userPage.jsp\" class=\"menuText\">מבצעים</a></td>\n");
      out.write("                 </tr>\n");
      out.write("                </table>\n");
      out.write("             </td>\n");
      out.write("            </tr>\n");
      out.write("          </table>\n");
      out.write("           \n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"admin.jsp\"><h4><u><b>כניסת מנהל</b></u></h4></a>\n");
      out.write("                    </td>\n");
      out.write("                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"adminLogout.jsp\"><h4><u><b>התנתקות מנהל</b></u></h4></a>\n");
      out.write("                    </td>\n");
      out.write("                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"adminMenu.jsp\"><h4><u><b>תפריט מנהל</b></u></h4></a>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            <table>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"float: right;margin-right: 35px;\">\n");
      out.write("                    <br>\n");
      out.write("                    <img style=\"margin-right: 35px;\" id=\"slideShow\" src=\"img/slideShow/3.jpg\" width=\"250\" height=\"250\"/>\n");
      out.write("                </td>\n");
      out.write("                <td><center style=\"margin-right: 30px;margin-bottom: 160px;\">\n");
      out.write("                    <br>\n");
      out.write("            ");
      out.write("\n");
      out.write("                    <iframe width=\"250\" height=\"250\" src=\"https://www.youtube.com/embed/f5QdLFip8iU\" frameborder=\"0\" allowfullscreen></iframe>\n");
      out.write("                          \n");
      out.write("                </center></td>\n");
      out.write("            </tr>\n");
      out.write("        </table> \n");
      out.write("                    \n");
      out.write("        \n");
      out.write("            \n");
      out.write("        </center> \n");
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
