<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <jsp:useBean id="obj" class="dbcom.dbnew"/>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMC-Confirm</title>
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
    <%
String fname=request.getParameter("name");
String fphone=request.getParameter("phone");
String femail=request.getParameter("email");
String carid=(String)session.getAttribute("carid");
String sql="insert into register (c_name,c_phone,c_email,cid) values('"+fname+"','"+fphone+"','"+femail+"','"+carid+"')";
int z=obj.putData(sql);
if(z==1)
{%>
	<!--System.out.println("success");-->
	<script>
	alert("Your message is submitted!!! Await for confirmation...");
	window.location = 'index.html';
</script>
<%}
else
{
	System.out.println("failed");%>
	<script>
	alert("Submission failed!!");
	window.location = 'register.jsp';
</script>
<% 	
	//alert("registration failed..please try again");
			
}
%>


    </body>
</html>
