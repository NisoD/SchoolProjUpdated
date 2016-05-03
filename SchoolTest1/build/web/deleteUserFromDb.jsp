<%--
    Document   : deleteUserFromDb
    Created on : 19/02/2016, 21:46:16
    Author     : idit russo
--%>

<%@page import="MyClasses.MyUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">

        </style>
        <script type="text/javascript">
            
        </script>
    </head>
    <body dir="rtl">
        <center>
            <br><br><br>
           
        <%
            request.setCharacterEncoding("UTF-8");  //o קידוד לעברית
            String idNum = request.getParameter("idNum");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String duel = request.getParameter("duel");
            String city = request.getParameter("city");
            String gender = request.getParameter("gender");
            String phonNum= request.getParameter("phonNum");
            String kidomet= request.getParameter("kidomet");
            String cbsport = request.getParameter("cbsport");
            String cbreading = request.getParameter("cbreading");
            String cbcomputer = request.getParameter("cbcomputer");
            String cbcooking = request.getParameter("cbcooking");
            //out.println("Hello <b>"+un+"</b><br/> your password is "+ pw+"</b><br/> your city is "+ct+"<br/>");

            Connection con = MyUtils.getSiteDBconnection(application, "db\\siteDB.mdb");
            Statement stmt = con.createStatement();
            ResultSet rs = null;

            String sqlStr = "DELETE FROM users WHERE idNum='" + idNum + "'";
            stmt.executeUpdate(sqlStr);
          //  out.print("<br><br><br>"+"<center><h2>"+"משתמש שמספרו: " +idNum+"<br/>נמחק בהצלחה"+"</h2></center>");
            out.print("<center><h2>"+"המשתמש: " + firstName+ " " + lastName+ " "+"שמספרו: "+idNum+"<br/>נמחק בהצלחה"+"</h2></center>");
            out.print("<br>"+"<a href='index.jsp'>חזרה לתפריט מנהל</a>"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                    +"<a href='deleteUser.jsp'>חזרה למחיקת משתמש</a>");
            stmt.close();
            con.close();
        %>
        
        <br><br><br><br><br><br><br><br><br><br>
         <table align="center" dir="rtl">
         <tr>
          <td>
           <font color="brown" size="5">
           <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="rtl" >כל הזכויות שמורות לעידית רוסו 2016</marquee>
           </font>
          </td>
         </tr>
        </table>

        </center>

    </body>
</html>
