<%-- 
    Document   : insertUser
    Created on : 13/02/2016, 22:04:30
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
        <script type="text/javascript">
            
            // הפונקציה מחזירה אמת אם המחרוזת מכילה אותיות בעברית בלבד
            function validletter(word)
            {
                for(var i=0;i<word.length;i++)
                    if(!((word.charAt(i)>='א') && (word.charAt(i)<='ת')))
                        return false;
                return true;
            }

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

            // o פונקציה הבודקת האם כפתור רדיו לבחירת מין נבחר
            function genderCheck()
            {
                for(var i=0;i<document.tofes.gender.length;i++)
                    if(document.tofes.gender[i].checked==true)
                        return true;
                return false;
            }

            // o פונקציה הבודקת האם נבחר שם ישוב/עיר מתוך רשימה נגללת
            function cityCheck()
            {
                var mikum;
                mikum=document.tofes.city.selectedIndex;
                if(mikum==0)
                    return false;
                return true;
            }
            
            function kidometCheck()
            {
                var mikum;
                mikum=document.tofes.kidomet.selectedIndex;
                if(mikum==0)
                    return false;
                return true;
            }

            // o פונקציה הבודקת האם נבחר תחביב מסוים
            function hobyCheck()
            {
              if   (document.tofes.cbsport.checked==true ||
                    document.tofes.cbreading.checked==true ||
                    document.tofes.cbcomputer.checked==true ||
                    document.tofes.cbcooking.checked==true )
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
                 
                 if(document.tofes.firstName.value.length<=1)
                 {
                    window.alert("השם הפרטי חייב להכיל יותר מאות אחת");
                    document.tofes.firstName.focus();
                    document.tofes.firstName.select();
                    return false;
                 }

                if(validletter(document.tofes.firstName.value)==false)
                {
                    window.alert("השם הפרטי יכול להכיל אותיות בעברית בלבד");
                    document.tofes.firstName.focus();
                    document.tofes.firstName.select();
                    return false;
                }
                if(document.tofes.lastName.value.length<=1)
                {
                    window.alert("שם משפחה חייב להכיל יותר מאות אחת");
                    document.tofes.lastName.focus();
                    document.tofes.lastName.select();
                    return false;
                }

                if(validletter(document.tofes.lastName.value)==false)
                {
                    window.alert("שם משפחה יכול להכיל אותיות בעברית בלבד");
                    document.tofes.lastName.focus();
                    document.tofes.lastName.select();
                    return false;
                }

                if(cityCheck()==false)
                {
                    window.alert("יש לבחור עיר");
                    return false;
                }

                if(genderCheck()==false)
                {
                    window.alert("יש לבחור מין");
                    return false;
                }
                
                if(kidometCheck()==false)
                {
                    window.alert("יש לבחור קידומת טלפון");
                    return false;
                }

                if(!isNumeric(document.tofes.phonNum.value))
                 {
                    window.alert("מספר הטלפון יכול להכיל ספרות בלבד");
                    document.tofes.phonNum.focus();
                    document.tofes.phonNum.select();
                    return false;
                 }

                 if(document.tofes.phonNum.value.length!=7)
                 {
                    window.alert("מספר טלפון חייב להכיל 7 ספרות בדיוק");
                    document.tofes.phonNum.focus();
                    document.tofes.phonNum.select();
                    return false;
                 }

                if(hobyCheck()==false)
                {
                    window.alert("יש לבחור תחביב");
                    return false;
                }
                
                window.alert("השדות בטופס מולאו כנדרש");
                return true;

            }
        </script>
    </head>
    <body dir="rtl">
        <br><br>
    <center>
        <h2><u>דוגמא להוספת רשומה למסד הנתונים</u></h2><br><br>
    </center>
       <form name="tofes" method="get" onsubmit="return checkForm()" action="insertToDB.jsp">
         <div>
          <table dir="rtl" align="center" border="0">
           <tr>
             <td><font size="3" color="red">מספר זהות:</font></td>
             <td><input type="text" name="idNum" maxlength="9"></td>
           </tr>
           
           <tr>
             <td><font size="3" color="red">שם פרטי:</font></td>
             <td><input type="text" name="firstName"></td>
           </tr>
           
           <tr>
             <td><font size="3" color="red">שם משפחה:</font></td>
             <td><input type="text" name="lastName"></td>
           </tr>
           
           <tr>
             <td><font size="3" color="red">דוא"ל</font></td>
             <td><input type="text" name="email"></td>
           </tr>
          
           <tr>
             <td><font size="3"  color="red">עיר:</font></td>
             <td><select name="city">
                  <option value="בחר עיר">--בחר עיר--</option>
                  <option value="ירושלים">ירושלים</option>
                  <option value="תל אביב">תל-אביב</option>
                  <option value="חיפה">חיפה</option>
                  <option value="באר שבע">באר-שבע</option>
                  <option value="אילת">אילת</option>
                  <option value="נהריה">נהריה</option>
                  <option value="קרית שמונה">קרית שמונה</option>
                  <option value="אחר">אחר</option>
                 </select></td>
           </tr>
           
           <tr>
             <td><font size="3" color="red">מין:</font></td>
             <td><font size="3" color="red"> זכר</font>
                 <input type="radio" name="gender" value="זכר" >&nbsp&nbsp&nbsp
                 <font size="3" color="red">נקבה</font>
                 <input type="radio" name="gender" value="נקבה"></td>
           </tr>
           
           <tr>
             <td><font size="3" color="red">טלפון:</font></td>
             <td><input type="text" name="phonNum" maxlength="7">
                 &nbsp&nbsp&nbsp
                        <select name="kidomet">
                            <option value="קידומת">קידומת</option>
                            <option value="02" >02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="072">072</option>
                            <option value="077">077</option>
                            <option value="050">050</option>
                            <option value="052">052</option>
                            <option value="053">053</option>
                            <option value="054">054</option>
                        </select>
             </td>
           </tr>
           
           <tr>
             <td><font size="3" color="red">תחביבים:</font></td>
             <td>
                 <input type="checkbox" name="cbsport" value="sport" />
                 <font size="3" color="red">ספורט</font>
                 <input type="checkbox" name="cbreading" value="reading" />
                 <font size="3" color="red">קריאה</font>
                 <input type="checkbox" name="cbcomputer" value="computer" />
                 <font size="3" color="red">מחשבים</font>
                 <input type="checkbox" name="cbcooking" value="cooking" />
                 <font size="3" color="red">בישול</font></td>
           </tr>
           
           
           <tr ><td> <br><br></td></tr>
           <tr><td><input type="submit" value="שלח"  /></td>
               <td><input type="reset" value="נקה"/></td></tr>
          </table>
             <br><br>
             <a href='index.jsp'>חזרה לתפריט מנהל</a>
        </div>
      </form>
    </body>
</html>

