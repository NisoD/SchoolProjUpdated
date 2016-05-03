<%-- 
    Document   : bdikatAdmin
    Created on : 14/04/2016, 23:20:57
    Author     : 
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
        <style type="text/css">
           .btn {font: 10px Tahoma; font-weight: bold; color: red; background: #ccc; border: 1px solid darkgray; padding: 5px}
           .btn:hover {border: 1px solid black; background: yellow}
           .menuText
            {
                height: 5px;
                color: brown;
                opacity:0.6;
                font-family: sans-serif;
                font-weight: bold;
                font-size: 20px;
            }
            .menuText:hover
            {
                height: 5px;
                color: orange;
                opacity:1.5;
                font-family: sans-serif;
                font-weight: bold;
                font-size: 20px;
            }
    </style>
     <script type="text/javascript">
            function startTime()
            {
                var today=new Date();
                var h=today.getHours();
                var s=today.getSeconds();
                var m=today.getMinutes();
                m=checkTime(m);
                s=checkTime(s);
                document.getElementById('txt').innerHTML=h+":"+m+":"+s;
                t=setTimeout(function(){startTime(),500});
            }
            function checkTime(i)
            {
               if(i<10)
                   {
                       i="0"+i;
                   }
                   return i;
            }
        </script>
    </head>
    <body dir="rtl" bgcolor="blanchedalmond" onload="startTime()">
        <div class="black" id="txt" align="left"></div>
        <center>

              <table border="1" align="center" width="650" style="text-align: center;">
                  <tr>
            <td>
               <img width="150" style="" height="125" src="img/nespic.png" alt="">
            </td>
            <td>
               <table border="2" align="center"  width="650" style="text-align: center;">
                <tr style="color:blanchedalmond; font-size: 20px;">
                  <td> <a href="index.jsp" class="menuText">ראשי</a></td>
                  <td> <a href="about.jsp" class="menuText">אודות</a></td>
                  <td> <a href="insertUser.jsp"class="menuText">רישום לאתר</a></td>
                  <td> <a href="gallery.jsp" class="menuText">גלריית תמונות</a></td>
                  <td> <a href="trivia.jsp" class="menuText">טריוויה</a></td>
                  <td> <a href="contactUser.jsp" class="menuText">צור קשר</a></td>
                  <td> <a href="userPage.jsp" class="menuText">מבצעים</a></td>
                 </tr>
                </table>
             </td>
            </tr>
          </table>
            <br><br><br>
                           <center><b><u><font size="5" color="blue">בדיקת הרשאת מנהל</font></u></b></center>
        <%
            request.setCharacterEncoding("UTF-8");  //o קידוד לעברית

            String un = request.getParameter("un");
            String pw = request.getParameter("pw");

            Connection con = MyUtils.getSiteDBconnection(application, "db\\siteDB.mdb");
            Statement stmt = con.createStatement();

            String sql = "SELECT * FROM admin WHERE un='" + un + "' And pw='" + pw + "'";
            ResultSet rs = stmt.executeQuery(sql);
      //      out.print(sql + "<br/>Was Done!");

             //o בדיקת קיום מנהל
            if(rs.next())
                    {
                        session.setAttribute("adminName", un);
                        response.sendRedirect("adminMenu.jsp");

                    }
                    else
                    {
                         out.println("<br><br><center><h2>מנהל לא מורשה</h2></center><br><br><br><br><br><br><br><br>");
                         
                    }

            //O סגירת הקשר עם מסד הנתונים
            stmt.close();
            con.close();
            

        %>
        <a href="admin.jsp">חזרה להתחברות מנהל</a>
        <br><br><br><br>
        <table align="center" dir="rtl">
         <tr>
          <td>
           <font color="brown" size="5">
           <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="rtl" >כל הזכויות שמורות לעידית רוסו 2015</marquee>
           </font>
          </td>
         </tr>
        </table>


    </body>
</html>
