package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import MyClasses.MyUtils;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class dugma_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background: lightgrey\">\n");
      out.write("        <h2>Please enter UserName and Password (press SEND to insert into DB):</h2>\n");
      out.write("        <form action=\"insertToDB.jsp\" method=\"get\">\n");
      out.write("            User name: <input type=\"text\" name=\"un\" /><br/>\n");
      out.write("            Password : <input type=\"text\" name=\"pw\" />\n");
      out.write("            <input type=\"submit\" value=\"send\" />\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        ");

            Connection con = MyUtils.getSiteDBconnection(application, "db\\siteDB.mdb");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM users");
        
      out.write("\n");
      out.write("        \n");
      out.write("        <hr>\n");
      out.write("        <h2>DB Users Table:</h2>\n");
      out.write("        <table border=\"1\" >\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>User Name</th>\n");
      out.write("                    <th>Password</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                ");

                    while(rs.next())
                    {
                        out.print("<tr>");
                        out.print("<td>" + rs.getString("un") + "</td><td>" + rs.getString("pw") + "</td>");
                        out.print("</tr>");
                    }
                    stmt.close();
                    con.close();
                
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("        <h1></h1>\n");
      out.write("\n");
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
