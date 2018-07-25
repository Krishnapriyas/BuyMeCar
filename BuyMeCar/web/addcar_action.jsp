<%-- 
    Document   : addcar_action
    Created on : Sep 6, 2016, 6:59:46 PM
    Author     : Satish
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
   
<%@page import="java.sql.*"%>
 <%@ include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String brand=request.getParameter("brand");
String model=request.getParameter("model");

String price=request.getParameter("price");
String engine=request.getParameter("engine");
String gbox=request.getParameter("gbox");
String seat=request.getParameter("seat");
String steer=request.getParameter("steer");
        String pros=request.getParameter("pros");
String cons=request.getParameter("cons");
String standout=request.getParameter("standout");

    

String sql="insert into car (brand,model,price,engines,gearbox,seatingcapacity,steeringtype,pros,cons,standouts) values('"+brand+"','"+model+"','"+price+"','"+engine+"','"+gbox+"','"+seat+"','"+steer+"','"+pros+"','"+cons+"','"+standout+"')";
int z=obj.putData(sql);
if(z==1)
{%>
	<!--System.out.println("success");-->
	<script>
	alert("new car inserted.Please insert photo.");
	window.location = 'addphoto.jsp';
</script>
<%}
else
{
	System.out.println("failed");%>
	<script>
	alert("Submission failed!!");
	window.location = 'addcar.jsp';
</script>
<% 	
	//alert("registration failed..please try again");
			
}
%>
 <%@ include file="tailadmin.jsp" %>
    </body>
</html>
