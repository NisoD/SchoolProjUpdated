<%-- 
    Document   : index
    Created on : 05/08/2010, 21:19:49
    Author     : IP
--%>

<%@page import="MyClasses.MyUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: lightgrey">
        <h2>Please enter UserName and Password (press SEND to insert into DB):</h2>
        <form action="insertToDB.jsp" method="get">
            User name: <input type="text" name="un" /><br/>
            Password : <input type="text" name="pw" />
            <input type="submit" value="send" />
        </form>

        <%
            Connection con = MyUtils.getSiteDBconnection(application, "db\\siteDB.mdb");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM users");
        %>
        
        <hr>
        <h2>DB Users Table:</h2>
        <table border="1" >
            <thead>
                <tr>
                    <th>User Name</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while(rs.next())
                    {
                        out.print("<tr>");
                        out.print("<td>" + rs.getString("un") + "</td><td>" + rs.getString("pw") + "</td>");
                        out.print("</tr>");
                    }
                    stmt.close();
                    con.close();
                %>
            </tbody>
        </table>
        <h1></h1>

    </body>
</html>
