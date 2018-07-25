 <%@ include file="head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
   
<%@page import="java.sql.*"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>



<%
    String sql="select max(sl_no) from car";
    ResultSet rs=obj.getData(sql);
    if(rs.next())
    {
        String sid=(String)rs.getString(1);
       // session.setAttribute("cid",id);
        session.setAttribute("cid",sid);
    }
	String did = (String) session.getAttribute("cid");
	byte[] b = null;
	try {

		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(factory);
		List items = sfu.parseRequest(request);
		Iterator iter = items.iterator();
		while (iter.hasNext()) {
			FileItem item = (FileItem) iter.next();
			if (!item.isFormField()) {
				b = item.get();
			}
		}
		int i = obj.insertImgCar(did,b);
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<script>
	alert("Inserted Book Cover");
	window.location = 'admin_home.jsp';
</script>
 <%@ include file="tailadmin.jsp" %>
</body>
</html>