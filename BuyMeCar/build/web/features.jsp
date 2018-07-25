
<%@ include file="head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%  
      String sql="select sl_no,count from car order by count desc limit 3";
      ResultSet rs=obj.getData(sql);
      int flag=0;
while(rs.next())
{
         flag=1;
	String id=rs.getString(1);
%>
<form action="view_arrest_action.jsp" method="POST">
<table border="2">
    <tr>
        <td><p><img border="0" src="viewphoto_action.jsp?id=<%=id%>" width="500" height="300"></p></td>
        <td><a href="listbudget.jsp?id=<%=id%>">click here to view</a></td>
    </tr>
	</table>
<%}
             
      if(flag!=1)
             {%>
             <script>
                 alert("sorry no such model available");
                 window.location="select.jsp";
                 </script>
           <%  }%>

</form>
 <%@ include file="tailadmin.jsp" %>
      
    </body>
</html>
