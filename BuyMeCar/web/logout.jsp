
 <%@ include file="head.jsp" %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%     
		//String su=(String) session.getAttribute("user");
 //su=null;
  			session.setAttribute("admin","");
  			response.sendRedirect("index.html");
       %>
        <%@ include file="tailadmin.jsp" %>
</body>
</html>