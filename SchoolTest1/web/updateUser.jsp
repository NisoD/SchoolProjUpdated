<%--
    Document   : updateUser
    Created on : 19/01/2016, 21:45:33
    Author     : idit russo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



<html>
  <head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">


            // הפונקציה מחזירה אמת אם המחרוזת ריקה ושקר אחרת
            function isEmpty(str)
            {

                if(str.length==0)
                    return true;
                else
                    return false;

            }

            // הפונקצייה מחזירה אמת אם המחרוזת מורכבת מספרות בלבד ושקר אחרת
            function isNumeric(str)
            {
                if(isNaN(str))

                    return false;

                else
                    return true;
            }

            function checkBikoret(str)
            {
               var i;
               var sum=0;
               var s=0;
               var bikoret;
               for(i=0;i<str.length-1;i++)
               {

                    if(i%2!=0)
                    {
                        s=parseInt(str.charAt(i)*2);

                        if(s>9)
                            {
                            sum=parseInt(sum+(s-9));
                            }

                        else
                            {
                             sum=parseInt(sum+s);
                            }
                    }
                    else
                    {
                         s=parseInt(str.charAt(i));
                         sum=parseInt(sum+s);
                    }
               }
                if(sum%10==0)
                    bikoret=0;
                else
                    bikoret = 10-(sum%10);
                if (bikoret==str.charAt(8))
                    return true;
                else
                    return false;
            }



            // o הפונקציה בודקת את שדות הטופס ומחזירה אמת אם השדות תקינים ושקר אחרת
            function checkForm()
            {
                if(isEmpty(document.tofes.idNum.value))
                {
                    window.alert("חובה להקליד מספר תעודת זהות");
                    document.tofes.idNum.focus();
                    document.tofes.idNum.select();
                    return false;
                }

                 if(document.tofes.idNum.value.length!=9)
                 {
                    window.alert("מספר תעודת זהות חייב להכיל 9 ספרות בלבד");
                    document.tofes.idNum.focus();
                    document.tofes.idNum.select();
                    return false;
                 }

                 if(!checkBikoret(document.tofes.idNum.value))
                 {
                    window.alert("שגיאה בסיפרת הביקורת");
                    document.tofes.idNum.focus();
                    document.tofes.idNum.select();
                    return false;
                 }

                window.alert("מספר הזהות תקין");
                return true;

            }
        </script>
  </head>
  <body dir="rtl">
      <br><br>
       <center>
        <h2><u>דוגמא לעדכון פרטי הנרשם במסד הנתונים</u></h2><br><br>
    </center>
      <form name="tofes" method="get" onsubmit="return checkForm()" action="findUserInDb.jsp">
          <%
            if (session.getAttribute("adminName") == null)
            {

                response.sendRedirect("admin.jsp");
            }
            else
            {
                String an = session.getAttribute("adminName").toString();
                out.print("שלום  " + an+"<br>");

            }
        %>
            <table border="0" align="center" width="650" style="text-align: center;">
            <tr>
                 <td> <br><br> </td>
            </tr>
            <tr>
                <td>
                    <input type="text" name="idNum" maxlength="9" placeholder="הכנס תעודת זהות של הנרשם">
                </td>
            </tr>
            <tr>
                <td> <br><br>
            </tr>
            <tr>
                <td> <input type="submit" value="שלח" /></td>
            </tr>
            <tr>
                <td> <br><br>
            </tr>
           
          </table>
      </form>
      <br><br>
       <a href='adminMenu.jsp'>חזרה לתפריט מנהל</a>
  </body>
</html>
