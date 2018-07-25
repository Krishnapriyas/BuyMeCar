<%-- 
    Document   : contact_action.jsp
    Created on : Aug 27, 2016, 11:38:33 PM
    Author     : Satish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <jsp:useBean id="obj" class="dbcom.dbnew"/>
<%@page import="java.sql.*"%>
<%@ include file="head.jsp" %>
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
String femail=request.getParameter("email");
String fsub=request.getParameter("subject");
String fmsg=request.getParameter("message");
String sql="insert into contacts (c_name,c_email,c_sub,c_msg) values('"+fname+"','"+femail+"','"+fsub+"','"+fmsg+"')";
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
	window.location = 'index.html';
</script>
<% 	
	//alert("registration failed..please try again");
			
}
%>
<%@ include file="tailadmin.jsp" %>

    </body>
</html>
