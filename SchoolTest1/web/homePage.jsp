<%-- 
    Document   : index
    Created on : 14/11/2015, 21:19:49
    Author     : idit russo
--%>

<%@page import="MyClasses.MyUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>basic form</title>
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
                color:orange;
                opacity:1.5;
                font-family: sans-serif;
                font-weight: bold;
                font-size: 20px;
            }
    </style>
    <script type="text/javascript">
            var imageIndex = 1;
            function setImage()
            {
                slideShow.src = "img/slideShow/" + imageIndex + ".jpg";
                imageIndex++;
                if(imageIndex >= 4)
                    imageIndex = 1;
            }
            function startInterval()
            {
                var intrev = setInterval('setImage()', 2000);
            }
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body dir="rtl" bgcolor="blanchedalmond" onload="startTime()">
        <%
                   int i = Integer.parseInt(application.getAttribute("siteCounter").toString());
                   i++;
                   application.setAttribute("siteCounter", i);
                   out.print("<h4>מונה מבקרים "+i+"</h4>");
            %> 
        <div class="black" id="txt" align="left"></div>
        <script type="text/javascript" >startInterval();</script>
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
           
            <table>
                <tr>
                    <td>
                        <a href="admin.jsp"><h4><u><b>כניסת מנהל</b></u></h4></a>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <a href="adminLogout.jsp"><h4><u><b>התנתקות מנהל</b></u></h4></a>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <a href="adminMenu.jsp"><h4><u><b>תפריט מנהל</b></u></h4></a>
                    </td>
                </tr>
            </table>
            
            <table>
            <tr>
                <td style="float: right;margin-right: 35px;">
                    <br>
                    <img style="margin-right: 35px;" id="slideShow" src="img/slideShow/3.jpg" width="250" height="250"/>
                </td>
                <td><center style="margin-right: 30px;margin-bottom: 160px;">
                    <br>
            <%--
שתילת סרטון בדף
        --%>
                    <iframe width="250" height="250" src="https://www.youtube.com/embed/f5QdLFip8iU" frameborder="0" allowfullscreen></iframe>
                          
                </center></td>
            </tr>
        </table> 
                    
        
            
        </center> 
    </body>
</html>
