<%-- 
    Document   : addcar
    Created on : Sep 4, 2016, 9:21:41 PM
    Author     : Satish
--%>
 <%@ include file="head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="addcar_action.jsp" name="frm" method="post">
            <table>
                <tr>
                   <bold> <td>BRAND</bold></td>
                    <td ><input style="background-color: lightgray;" type="text" name="brand"></td>
                </tr>
                <tr>
                    <td><bold>MODEL</bold></td>
                    <td><input style="background-color: lightgray;" type="text" name="model"></td>
                </tr>
                
                <tr>
                    <td><bold>PRICE(in lakhs)</bold></td>
                    <td ><input style="background-color: lightgray;" onkeypress="return isNumberKey(event)" type="text" name="price"></td>
                </tr>
                <tr>
                    <td><bold>ENGINE</bold></td>
                    <td ><input style="background-color: lightgray;" type="text" name="engine"></td>
                </tr>
                <tr>
                    <td><bold>GEARBOX</td>
                    <td ><input style="background-color: lightgray;" type="text" name="gbox"></td>
                </tr>
                <tr>
                    <td><bold>SEAT</td>
                    <td ><input style="background-color: lightgray;" type="text" name="seat"></td>
                </tr>
                <tr>
                    <td><bold>STEERING</td>
                    <td ><input style="background-color: lightgray;" type="text" name="steer"></td>
                </tr>
                <tr>
                    <td><bold>PROS</td>
                    <td ><textarea style="background-color: lightgray;" name="pros"></textarea> </td>
                </tr>
                <tr>
                    <td><bold>CONS</td>
                    <td ><textarea style="background-color: lightgray;" name="cons"></textarea></td>
                </tr>
                <tr>
                    <td><bold>STANDOUT</td>
                    <td ><textarea style="background-color: lightgray;" name="standout"></textarea></td>
                </tr>
               
                <tr>
                    <td ><input style="background-color: #37AFFF;" onclick="return validate(frm)" type="submit" value="submit"></td>
                </tr>
            </table>       
        </form>
        <script type="text/javascript">
function validate(frm)
{
		if(frm.brand.value=="")
		{
			alert("Enter brand");
			return false;
		}
		 if(frm.model.value=="")
			{
			alert("Enter model");
			return false;
			}
		 if(frm.price.value=="")
			{
			alert("Enter price");
			return false;
			
			}
                        if(frm.gbox.value=="")
			{
			alert("Enter gear box");
			return false;
			
			}
                         if(frm.seat.value=="")
			{
			alert("Enter seating capacity");
			return false;
			
			} if(frm.steer.value=="")
			{
			alert("Enter steering type");
			return false;
			
			}
		


}
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 46 || charCode > 57))
    {
        return false;
    }
    else
    {
        return true;
    }
    }
</script>
        <%@ include file="tailadmin.jsp" %> 
    </body>
</html>
