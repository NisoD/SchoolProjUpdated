package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class form_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("    \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>D.I.N Solutions</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/formCSS.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body dir=\"ltr\"  background=\"Pictures/Bank.jpg\">\n");
      out.write("        \n");
      out.write("        <!--navbar-->\n");
      out.write("        <div id=\"navBarWrapper\">\n");
      out.write("            <nav class=\"navbar navbar-inverse\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("              <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                  <span class=\"icon-bar\"></span>\n");
      out.write("                  <span class=\"icon-bar\"></span>\n");
      out.write("                  <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\">D.I.N Solutions</a>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("                        <ul class=\"nav navbar-nav\">\n");
      out.write("                            <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                            <li class=\"active\"><a href=\"form.jsp\">Registration Form</a></li>\n");
      out.write("                            <li><a href=\"#\">Page 2</a></li>\n");
      out.write("                            <li><a href=\"#\">Page 3</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li><a href=\"#\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li>\n");
      out.write("                            <li><a href=\"#\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"siteContent\">\n");
      out.write("            <h3 style=\" font-family:sans-serif\" align=\"center\"><u>Sign up form</u></h3><br><br>\n");
      out.write("            <form name=\"form\" action=\"register.jsp  \" method=\"post\" onsubmit=\"return checkForm()\" >\n");
      out.write("                <div>\n");
      out.write("                    <table dir=\"ltr\" align=\"center\" border=\"0\" >\n");
      out.write("                        <tr>\n");
      out.write("                            <td><font  face=\"cursive\">Full Name:</font></td>\n");
      out.write("                                <td><input type=\"text\" name=\"idNum\" maxlength=\"9\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><font  face=\"cursive\">Username:</font></td>\n");
      out.write("                            <td><input type=\"text\" name=\"userName\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><font  face=\"cursive\">Password<:/font></td>\n");
      out.write("                            <td><input type=\"password\" name=\"pwd\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><font  face=\"cursive\">Confirm:</font></td>\n");
      out.write("                            <td><input type=\"password\" name=\"pwdConfirm\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><font  face=\"cursive\">Mail:</font></td>\n");
      out.write("                            <td><input type=\"text\" name=\"email\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><font  face=\"cursive\">Phone:</font></td>\n");
      out.write("                            <td>\n");
      out.write("                                <font  face=\"cursive\"></font>\n");
      out.write("                                <select name=\"kidomet\">\n");
      out.write("                                    <option value=\"Choose\">Choose</option>\n");
      out.write("                                    <option value=\"+41\">+41</option>\n");
      out.write("                                    <option value=\"+42\">+42</option>\n");
      out.write("                                    <option value=\"+43\">+43</option>\n");
      out.write("                                    <option value=\"+44\">+44</option>\n");
      out.write("                                    <option value=\"+45\">+45</option>\n");
      out.write("                                    <option value=\"+46\">+46</option>\n");
      out.write("                                    <option value=\"+972\">+972</option>\n");
      out.write("                                    <option value=\"+994\">+994</option>\n");
      out.write("                                </select>\n");
      out.write("                                <input  type=\"text\" name=\"phoneNum\" maxlength=\"9\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><font  face=\"cursive\">Country</font></td>\n");
      out.write("                            <td><select name=\"country\">\n");
      out.write("                                    <option value=\"Choose a country\">--Choose a Country--</option>\n");
      out.write("                                    <option value=\"Switzerland\">Switzerland</option>\n");
      out.write("                                    <option value=\"Czech Republic\">Czech Republic</option>\n");
      out.write("                                    <option value=\"Austria\">Austria</option>\n");
      out.write("                                    <option value=\"United Kingdom\">United Kingdom</option>\n");
      out.write("                                    <option value=\"Denmark\">Denmark</option>\n");
      out.write("                                    <option value=\"Israel\">Israel</option>\n");
      out.write("                                    <option value=\"Sweden\">Sweden</option>\n");
      out.write("                                    <option value=\"Other\">Other</option>\n");
      out.write("                                </select></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><font  face=\"cursive\">Gender:</font></td>\n");
      out.write("                            <td><font  face=\"cursive\">Male</font>\n");
      out.write("                                <input type=\"radio\" name=\"gender\" value=\"Male\" >&nbsp&nbsp&nbsp\n");
      out.write("                                <font  face=\"cursive\">Female</font>\n");
      out.write("                                <input type=\"radio\" name=\"gender\" value=\"Female\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><a href=\"tou.jsp\"<font  face=\"cursive\">Terms Of Use:</font></a></td>\n");
      out.write("                            <td>\n");
      out.write("                                <input   type=\"checkbox\" name=\"cbterms\" value=\"terms\" />\n");
      out.write("                                \n");
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><font  face=\"cursive\">Notes:</font></td>\n");
      out.write("                            <td><textarea cols=\"30\" rows=\"5\"\n");
      out.write("                                          name=\"special\" placeholder=\"Please type anything you want to add\"></textarea></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr ><td> <br><br></td></tr>\n");
      out.write("                        <tr><td><input type=\"submit\" value=\"Send\"  /></td>\n");
      out.write("                            <td><input type=\"reset\" value=\"Clear\"/></td></tr>\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <script type=\"text/javascript\" src=\"JavaScript/formJS.js\" ></script>\n");
      out.write("        <!--must be included in every page for bootstrap-->\n");
      out.write("        <!-- jQuery library -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js\"></script>\n");
      out.write("        <!-- Latest compiled JavaScript -->\n");
      out.write("        <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
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
