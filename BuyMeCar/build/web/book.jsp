<%-- 
    Document   : book
    Created on : 10 Sep, 2016, 4:15:52 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMC-book</title>
    </head>
    <body>
        <table>
            <td></td><td>fill p please</td>
            
   <tr>
<td>first name*</td><td><input type="text" name="fname"></td>
</tr>


<tr>
<td>age:</td><td><input type="text" name="age"></td>
</tr>




<tr>
<td>phone no*</td><td><input type="text" name="ph" onkeypress="return isNumberKey(event)"/></td>
</tr>

<tr>
<td>e-mail*</td><td><input type="text" id="emailid" name="mail"></td>
</tr>



<tr>
<td><input type="submit" value="SUBMIT" onclick="return validate(frm)"></td>
</tr>

</table>       
    </body>
</html>
