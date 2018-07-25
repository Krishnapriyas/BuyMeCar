
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%@ include file="head.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMC - login</title>
    </head>
    <body>
        <p>Login with your name and password....</p>
        <br/>
        <br/>
        <br/>
        <br/>
        <form action="login_action.jsp" method="post">
       <center> <table  >
            <tr>
                <td >
                    Username
                </td>
                <td ><input style="background-color: lightgray; " type = "text"  name="uname"></td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td ><input  style="background-color: lightgray; " type="password" name="pwd"></td>
            </tr>
           </table>
           <center>
               <table>
            <tr >
                
                <td style="border:20px solid white"> <input style="background-color: #37AFFF;" type="submit" value="submit"></td>
            </tr>
           </table></center>
        </form>
      <%@ include file="tailadmin.jsp" %>
    </body>
</html>
