<%-- 
    Document   : change_register
    Created on : 15 Sep, 2016, 1:14:35 AM
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
          String cid=request.getParameter("id");
          String sql="update register set c_stat='1' where sl_no="+cid+" ";
          int i=obj.putData(sql);
          if(i==1)
          {%>
    <script> 
        alert("successfully updated");
	window.location = 'reg_reply.jsp';
        </script>
        
        <%  }
        else
{%>
 <script> 
        alert("failed");
	window.location = 'reg_reply.jsp';
        </script>
    
<%}  %> 
   <%@ include file="tailadmin.jsp" %>     