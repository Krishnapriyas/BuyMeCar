<%-- 
    Document   : eventaction
    Created on : 15 Sep, 2016, 7:19:39 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="head.jsp" %>
 
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
String fname=request.getParameter("name");
String femail=request.getParameter("email");
String fsub=request.getParameter("ename");
String fmsg=request.getParameter("elink");
String sql="insert into event (name,email,ename,elink) values('"+fname+"','"+femail+"','"+fsub+"','"+fmsg+"')";
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
