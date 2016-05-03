<%-- 
    Document   : adminMenu
    Created on : 7/01/2016, 19:55:34
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <title></title>
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <br>
                          
      <center><h1><u>תפריט מנהל</u></h1></center>
      <h3>
      <%
            if(session.getAttribute("adminName")==null)
                {
                out.print("<br><br><br><font color=red><center>אינך מורשה להיכנס לכאן - דף למנהלים בלבד</center></font><br><br><br><br><br><br><br><br>");
               
                }
            else
            {
                String an = session.getAttribute("adminName").toString();
                out.print("שלום  "+an);
                out.print("<br/><br/>");
                out.print("<a href='insertUser.jsp'>הוספה</a>");
                out.print(" | ");
                out.print("<a href='deleteUser.jsp'>מחיקה</a>");
                out.print(" | ");
                out.print("<a href='updateUser.jsp'>עדכון</a>");
                out.print(" | ");
                out.print("<a href='showUsers.jsp'>הצגה</a>");
                out.print("<br/><br/>");
                out.print("<a href='cityQuery.jsp'>הצגת המשתמשים מירושלים</a>");
                out.print(" | ");
                out.print("<a href='query2.jsp'>הצגת מספר משתמשים בכל עיר</a>");
                 out.print("<br/><br/>");
                out.print("<a href='queryHoby.jsp'>הצגת משתמשים לפי תחביב מועדף</a>");
                out.print(" | ");
                out.print("<a href='query3.jsp'>התפלגות משתמשים על פי תחביב מועדף</a>");
                out.print("<br/><br/>");
                out.print("<br/><br/><br/><br/><br/>");
            }
      %>
      </h3>
    <br><br>
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
