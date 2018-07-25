 <%@ include file="head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*"%>

 <%
//String id=(String) session.getAttribute("id");
//System.out.println(id);
      String budget=request.getParameter("bud");
            String type=request.getParameter("type");
            
            String sql="select * from car where brand='"+type+"' and price  between "+budget+"";
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
        <td><p><img border="1" src="viewphoto_action.jsp?id=<%=id%>" width="500" height="300"></p></td>
        <td ><a href="listbudget.jsp?id=<%=id%>">click here to view</a></td>
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