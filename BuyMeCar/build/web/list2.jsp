<%-- 
    Document   : list2
    Created on : Sep 10, 2016, 4:26:49 PM
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
     String a=request.getParameter("model");
     String xy=(String)session.getAttribute("brand");
    
         ResultSet xs=null,rs=null;
  
       
        String v=" select * from car where brand = '"+xy+"' and model = '"+a+"' ";
        String count=" update car set count=count+1 where brand='"+xy+"' and model = '"+a+"' ";
int i=obj.putData(count);
         rs=obj.getData(v); 
         
        if(rs.next())
         {
         String id=rs.getString(1);
%>
<form action="view_arrest_action.jsp" method="POST">
<table border="2" >
    <tr style="color:white;" >
        <td><p><img border="0" src="viewphoto_action.jsp?id=<%=id%>" width="500" height="300"></p></td>
        <td  ><a  href="listbudget.jsp?id=<%=id%>" >click here to view</a></td>
    </tr>
</table>
	
<%}   
        
             else
         {%>
             <script>
                 alert("sorry no such model available");
                 window.location="list.jsp";
                 </script>
          <%   }%>	
          <%@ include file="tailadmin.jsp" %>
    </body>
</html>
