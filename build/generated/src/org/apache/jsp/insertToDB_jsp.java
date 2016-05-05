package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import MyClasses.MyUtils;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class insertToDB_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");

    request.setCharacterEncoding("UTF-8");       //o קידוד לעברית
    
    // קבלת ערכי השדות מצד לקוח לצד שרת
            //String idNum = request.getParameter("idNum");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String gender = request.getParameter("gender");
            //O שלב שני - קישור למסד הנתונים
            Connection con = MyUtils.getSiteDBconnection(application, "db\\siteDB.mdb");
            Statement stmt = con.createStatement();
    
            //if(idNum==null)
            //idNum= "1";
            
             //o יצירת שאילתת בחירה למסד לצורך בדיקת קיום המשתמש
            //String sql = "SELECT * FROM users WHERE idNum='" + idNum + "'";
           // ResultSet rs = stmt.executeQuery(sql);

             //o בדיקה האם קיים משתמש
          //  if(rs.next())   
          //  {
           //    out.println("<center><h3>User already registred.</h3></center><br>");
          //  }
         //   else
         //   {
       
              String sql = "INSERT INTO users (username, email, password, gender)"
                      + " VALUES" + "('" + username +"','"+ email + "','"+ password +"','"+ gender + "');";
              
              stmt.executeUpdate(sql);
              
            //   stmt.execute(sql);
               
               out.print("<center><h3>"+"Registration of " + username + " "
                       +"<br/>was completed"+"</h3></center><br>");
               out.print("<br>"+"<a href='index.jsp'>חזרה לרישום</a>");
                
          //  }

            //O סגירת הקשר עם מסד הנתונים
            
            stmt.close();
            con.close();

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
