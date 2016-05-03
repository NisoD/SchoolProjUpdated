<%-- 
    Document   : admin
    Created on : 14/04/2016, 14:21:29
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
            function check()
            {
                u=document.form.un.value;
                p=document.form.pw.value;
                if(p=="" ||u=="")
                    {
                        alert("לא הזנת נתונים");
                        return false;
                    }
                else
                        return true;
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
            <br><br>
        <form name="form" method="get" onsubmit="return check()" action="bdikatAdmin.jsp">
            <table border="0">
                  <tr>
                  <br>
                  <center>
                      <u><b><font size="5" color="brown">כניסת מנהל</font></b></u>
                  </center>
                   <br><br>
                   <td>שם מנהל:</td>
                   <td><input type="text" name="un"/></td>
                   <td rowspan="2"><input type="submit" class="btn"  name="login" value="התחבר >>"/></td>
                  </tr>
                  <tr>
                   <td>סיסמת מנהל:</td>
                   <td><input type="password" name="pw"/></td>
                  </tr>
                </table>
        </form>
      <br><br><br><br> <br><br><br><br>
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
