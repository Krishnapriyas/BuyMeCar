
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <%@page contentType="text/html" pageEncoding="UTF-8"%>

<title>Insert title here</title>

    <jsp:useBean id="obj" class="dbcom.dbnew"></jsp:useBean>
<%
  InputStream inimg;
 int size=0;
 String id=null;
 ResultSet rs=null;
 
 String ident = null;
  try{
        ident = request.getParameter("id");
	  String budget = request.getParameter("bud");
          String type=request.getParameter("type");
	  String sql="select img from photocar where cid='"+ident+"'";
            rs=obj.getData(sql);
	//  ResultSet rs = id.getData(sql);
	  if(rs.next()){
		  
		 // id = rs.getString(1);
		  inimg = rs.getBinaryStream(1);
		  size=inimg.available();
		  
		 byte b[] = new byte[size];
		  try{
			  
			  
			  inimg.read(b, 0, size);
				
			    response.reset();
	            response.setContentType("image/jpg");
	            response.getOutputStream().write(b, 0, size);
	            response.getOutputStream().flush();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			catch(IllegalStateException e){
				System.out.println("hello");
			} 
			
			%>
		
		  
		  
	 <%  }
  }
   catch(Exception e){
	   
   }
  
 
%>



</html>










































        