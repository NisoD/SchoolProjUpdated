<%--
    Document   : register
    Created on : 14/01/2016, 21:10:15
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
            
            function kidometCheck()
            {
                var mikum;
                mikum=document.tofes.kidomet.selectedIndex;
                if(mikum==0)
                    return false;
                return true;
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
                
                window.alert("השדות בטופס עודכנו כנדרש");
                return true;

            }
        </script>
    </head>
    <body dir="rtl">
        <br><br>
          <center><b><u><font size="5" color="brown">עדכון פרטי נרשם</font></u></b></center><br>
            <%
            request.setCharacterEncoding("UTF-8");  //o קידוד לעברית
            String idNum = request.getParameter("idNum");

            Connection con = MyUtils.getSiteDBconnection(application, "db\\siteDB.mdb");
            Statement stmt = con.createStatement();
            ResultSet rs = null;
            String sql = "SELECT * FROM users WHERE idNum='" + idNum + "'";
            //  out.print(sql + "<br/>Was Done!");
            rs = stmt.executeQuery(sql);
            if(rs.next())
            {

        %>
        
        <form name="tofes" method="get" onsubmit="return checkForm()" action="updateUserInDb.jsp">

            <table width="60%" align="center" border="3" bgcolor="pink">
                <tr>
                    <td>
                        <font size="3" >תעודת זהות:</font></td>
                    <td><input type="text" readonly name="idNum" maxlength="9" value='<%=rs.getString("idNum")%>'></td>
                </tr>
                <tr>
                    <td><font size="3" >שם פרטי:</font></td>
                    <td><input type="text" name="firstName" value='<%=rs.getString("firstName")%>'></td>
                </tr>

                <tr>
                    <td><font size="3" >שם משפחה:</font></td>
                    <td><input type="text" name="lastName" value='<%=rs.getString("lastName")%>'></td>
                </tr>

                <tr>
                    <td><font size="3" >דואר אלקטרוני:</font></td>
                    <td><input type="text" name="duel" value='<%=rs.getString("duel")%>'></td>
                </tr>

                <tr>
                    <td><font size="3"  >עיר:</font></td>
                    <td><select name="city">
                            <option><%=rs.getString("city")%></option>
                            <option value="בחר עיר">--בחר עיר--</option>
                            <option value="ירושלים" >ירושלים</option>
                            <option value="תל אביב">תל-אביב</option>
                            <option value="חיפה">חיפה</option>
                            <option value="באר שבע">באר-שבע</option>
                            <option value="רמת גן">רמת גן</option>
                            <option value="רחובות">רחובות</option>
                            <option value="אילת">אילת</option>
                            <option value="נהריה">נהריה</option>
                            <option value="פתח תקווה">פתח תקווה</option>
                            <option value="אשדוד">אשדוד</option>
                            <option value="אשקלון">אשקלון</option>
                            <option value="קרית שמונה">קרית שמונה</option>
                            <option value="יפו">יפו</option>
                            <option value="נצרת">נצרת</option>
                            <option value="נצרת עלית">נצרת עלית</option>
                            <option value="מטולה">מטולה</option>
                            <option value="שדרות">שדרות</option>
                            <option value="מודעין">מודיעין</option>
                            <option value="אחר">אחר</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td><font size="3" >מין:</font></td>


                    <%
                     String gen = rs.getString("gender");
                     if(gen.equals("זכר"))
                     {
                    %>
                    <td> <input type="radio" name="gender" value="זכר" checked ><font size="3" > זכר</font>
                        &nbsp&nbsp&nbsp
                        <input type="radio" name="gender" value="נקבה"  ><font size="3" >נקבה</font></td>

                    <%
                     }
                     if(gen.equals("נקבה"))
                     {
                    %>
                    <td><input type="radio" name="gender" value="זכר"  ><font size="3" > זכר</font>
                    &nbsp&nbsp&nbsp
                    <input type="radio" name="gender" value="נקבה" checked><font size="3" >נקבה</font></td>

                    <%
                     }
                    %>
                 </tr>
                
                <tr>
                    <td ><font size="3" >מס' טלפון:</font></td>
                    <td ><input type="text" maxlength="7" name="phonNum" value='<%=rs.getString("phonNum")%>'>
                        &nbsp&nbsp&nbsp
                        <select name="kidomet">
                            <option><%=rs.getString("kidomet")%></option>
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

                    <td>
                        <font size="3" >תחביבים:</font>
                    </td>
                    <td>
                    <%
                     String cb1 = rs.getString("cbsport");
                     String cb2 = rs.getString("cbreading");
                     String cb3 = rs.getString("cbcomputer");
                     String cb4 = rs.getString("cbcooking");

                     if(cb1.equals("ספורט"))
                     {
                    %>

                        <input type="checkbox" name="cbsport" value="ספורט" checked/>
                        <font size="3" >ספורט</font>
                    <%
                     }
                     else
                     {
                    %>
                        <input type="checkbox" name="cbsport" value="ספורט" />
                        <font size="3" >ספורט</font>
                     <%
                     }
                    %>
                    <%
                    if(cb2.equals("קריאה"))
                     {
                    %>
                        <input type="checkbox" name="cbreading" value="קריאה" checked />
                        <font size="3" >קריאה</font>
                    <%
                     }
                     else
                       {
                    %>
                        <input type="checkbox" name="cbreading" value="קריאה" />
                        <font size="3" >קריאה</font>
                    <%
                       }
                    %>
                    <%
                    if(cb3.equals("מחשבים"))
                     {
                    %>
                        <input type="checkbox" name="cbcomputer" value="מחשבים"checked />
                        <font size="3" >מחשבים</font>
                    <%
                     }
                     else
                       {
                    %>
                        <input type="checkbox" name="cbcomputer" value="מחשבים" />
                        <font size="3" >מחשבים</font>
                    <%
                       }
                    %>
                    <%
                    if(cb4.equals("בישול"))
                     {
                    %>
                        <input type="checkbox" name="cbcooking" value="בישול"checked />
                        <font size="3" >בישול</font>
                    <%
                     }
                     else
                       {
                    %>
                        <input type="checkbox" name="cbcooking" value="בישול" />
                        <font size="3" >בישול</font>
                     <%
                       }
                    %>
                    </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <input type="submit" value="עדכן">&nbsp&nbsp&nbsp&nbsp&nbsp
                    </td>
                </tr>
            </table>

        </form>
                    <%
                        }
                        else
                            {
                                out.println("<br><br><br><br><center><b><font size='5' color='red'>תעודת זהות נרשם לא קיימת</font></b></center><br><br><br><br/><br><br><br><br><br><br>");
                            }
                    %>
                    <br>
    </body>
</html>
