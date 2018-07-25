
  
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>BMC-Confirm</title>
    </head>
    
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
   
<%@page import="java.sql.*"%>
<%@ include file="head.jsp" %>
       
        <!--<h1>Hello World!</h1>-->
    <%
       
                                   String sql= "select elink,ename from event where stat=0";
                                   ResultSet o= obj.getData(sql);
                                   while(o.next())
                                   {
                               
                                   %>
                                   <a href="<%=o.getString(1) %>"><%=o.getString(2) %></a></br>
                                   <p value="<%=o.getString(1) %>">
                                       
                                   </p>  </br>     
                                    <%}%>
    <%@ include file="tailadmin.jsp" %>

    </body>
</html>
