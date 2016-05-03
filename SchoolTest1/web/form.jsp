<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>D.I.N Solutions</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="CSS/formCSS.css">

    </head>
    <body dir="ltr"  background="Pictures/Bank.jpg">
        
        <!--navbar-->
        <div id="navBarWrapper">
            <nav class="navbar navbar-inverse">
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">D.I.N Solutions</a>
              </div>
              <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="index.jsp">Home</a></li>
                            <li class="active"><a href="form.jsp">Registration Form</a></li>
                            <li><a href="#">Page 2</a></li>
                            <li><a href="#">Page 3</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        
        <div id="siteContent">
            <h3 style=" font-family:sans-serif" align="center"><u>Sign up form</u></h3><br><br>
            <form name="form" action="register.jsp  " method="post" onsubmit="return checkForm()" >
                <div>
                    <table dir="ltr" align="center" border="0" >
                        <tr>
                            <td><font  face="cursive">Full Name:</font></td>
                                <td><input type="text" name="idNum" maxlength="9"></td>
                        </tr>
                        <tr>
                            <td><font  face="cursive">Username:</font></td>
                            <td><input type="text" name="userName"></td>
                        </tr>
                        <tr>
                            <td><font  face="cursive">Password</font></td>
                            <td><input type="password" name="pwd"></td>
                        </tr>
                        <tr>
                            <td><font  face="cursive">Confirm:</font></td>
                            <td><input type="password" name="pwdConfirm"></td>
                        </tr>
                        <tr>
                            <td><font  face="cursive">Mail:</font></td>
                            <td><input type="text" name="email"></td>
                        </tr>
                        <tr>
                            <td><font  face="cursive">Phone:</font></td>
                            <td>
                                <font  face="cursive"></font>
                                <select name="kidomet">
                                    <option value="Choose">Choose</option>
                                    <option value="+41">+41</option>
                                    <option value="+42">+42</option>
                                    <option value="+43">+43</option>
                                    <option value="+44">+44</option>
                                    <option value="+45">+45</option>
                                    <option value="+46">+46</option>
                                    <option value="+972">+972</option>
                                    <option value="+994">+994</option>
                                </select>
                                <input  type="text" name="phoneNum" maxlength="9">
                            </td>
                        </tr>
                        <tr>
                            <td><font  face="cursive">Country</font></td>
                            <td><select name="country">
                                    <option value="Choose a country">--Choose a Country--</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="Czech Republic">Czech Republic</option>
                                    <option value="Austria">Austria</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="Denmark">Denmark</option>
                                    <option value="Israel">Israel</option>
                                    <option value="Sweden">Sweden</option>
                                    <option value="Other">Other</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td><font  face="cursive">Gender:</font></td>
                            <td><font  face="cursive">Male</font>
                                <input type="radio" name="gender" value="Male" >&nbsp&nbsp&nbsp
                                <font  face="cursive">Female</font>
                                <input type="radio" name="gender" value="Female">
                            </td>
                        </tr>
                        <tr>
                            <td><a href="tou.jsp"<font  face="cursive">Terms Of Use:</font></a></td>
                            <td>
                                <input   type="checkbox" name="cbterms" value="terms" />
                                

                        </tr>
                        <tr>
                            <td><font  face="cursive">Notes:</font></td>
                            <td><textarea cols="30" rows="5"
                                          name="special" placeholder="Please type anything you want to add"></textarea></td>
                        </tr>
                        <tr ><td> <br><br></td></tr>
                        <tr><td><input type="submit" value="Send"  /></td>
                            <td><input type="reset" value="Clear"/></td></tr>
                    </table>


                </div>
            </form>
        </div>
        <script type="text/javascript" src="JavaScript/formJS.js" ></script>
        <!--must be included in every page for bootstrap-->
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </body>
</html>