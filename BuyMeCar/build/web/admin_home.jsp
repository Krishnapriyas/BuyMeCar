<%-- 
    Document   : admin_home
    Created on : Sep 3, 2016, 7:49:40 PM
    Author     : Satish
--%>
 <%@ include file="head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMC - admin</title>
    </head>
    <body>
     <%       response.setHeader("Cache-Control","no-cache");
      response.setHeader("Cache-Control","no-store");
       response.setHeader("Pragma","no-cache");
       response.setDateHeader ("Expires", 0);
       
       
       String nu=(String) session.getAttribute("admin");
       		if(nu.equals(""))
       			response.sendRedirect("index.html");   %> 
            
          <marquee> <h1>WELCOME ADMIN</h1></marquee>
        <a href="addcar.jsp"> ADD NEW CAR</a><br/>
        
        <a href="reply.jsp"> VIEW CONTACT</a></br>
        <a href="reg_reply.jsp"> VIEW REGISTERED </a></br>
         <a href="event_reply.jsp"> VIEW EVENTS </a></br>
          <a href="logout.jsp"> Log Out </a>
        <br/><br/><br/><br/><br/>
        <p>Hello admin!! You can add car details or view the people who are trying to connect you.</p>
         <%@ include file="tailadmin.jsp" %>
    </body>
</html>
