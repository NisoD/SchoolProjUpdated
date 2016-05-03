<%--
    Document   : updateUserToDb
    Created on : 19/01/2016, 21:46:16
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
        <script type="text/javascript">
            
        </script>
    </head>
    <body dir="rtl">
        <center>
            <br><br><br>
        <%
            request.setCharacterEncoding("UTF-8");  //o קידוד לעברית
            String idNum = request.getParameter("idNum");
            String gender = request.getParameter("gender");

            //out.println("Hello <b>"+un+"</b><br/> your password is "+ pw+"</b><br/> your city is "+ct+"<br/>");

            Connection con = MyUtils.getSiteDBconnection(application, "db\\siteDB.mdb");
            Statement stmt = con.createStatement();
            ResultSet rs = null;



            if(cbsport==null)
                cbsport= " ";
            if(cbreading==null)
                cbreading= " ";
            if(cbcomputer==null)
                cbcomputer= " ";
            if(cbcooking==null)
                cbcooking=" ";


            String sqlStr = "UPDATE users SET firstName='"+ firstName +"',lastName='"+ lastName +"',duel='"+ duel +"',city='"+ city +"',gender='"+ gender +"',phonNum='"+ phonNum + "',kidomet='"+ kidomet + "',cbsport='"+ cbsport + "',cbreading='"+ cbreading + "',cbcomputer='"+ cbcomputer + "',cbcooking='"+ cbcooking + "' WHERE idNum='"+ idNum +"'";
            stmt.executeUpdate(sqlStr);

             stmt.close();
             con.close();

            out.print("<center><h3>"+"המשתמש: " +firstName+" "+lastName+ " "+"<br/>עודכן בהצלחה"+"</h3></center>");
            out.print("<br>"+"<a href='index.jsp'>חזרה לתפריט מנהל</a>"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                    +"<a href='updateUser.jsp'>חזרה לטופס עידכון</a>");
        %>
        <br><br><br><br><br><br>
        </center>
    </body>
</html>
