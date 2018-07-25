<%-- 
    Document   : contact_action.jsp
    Created on : Aug 27, 2016, 11:38:33 PM
    Author     : Satish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
  
<%@page import="java.sql.*"%>
<%@ include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMC-Confirm</title>
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
    <%
        String id;
String m1=request.getParameter("model1");
String m2=request.getParameter("model2");
String b1=(String)session.getAttribute("brand1");
String b2=(String)session.getAttribute("brand2");
String sql="select * from car where brand='"+b1+"' and model='"+m1+"' ";
String sq="select * from car where brand='"+b2+"' and model='"+m2+"' ";
 
 
ResultSet rs=obj.getData(sql);
 
  
   
    
    %>
	<table border="1">
                 <tr>
                     <th style="padding: 5px" >brand</th>
                     <th style="padding: 5px">model</th>
                    
                    
                     <th style="padding: 5px">price</th>
                     <th style="padding: 5px">engine</th>
                     <th style="padding: 5px">gearbox</th>
                     <th style="padding: 5px">seat</th>
                     <th style="padding: 5px">steering</th>
                     <th style="padding: 5px">pros</th>
                     <th style="padding: 5px">cons</th>
                     <th style="padding: 5px">standout</th>
                     
                 </tr>
                 <tr>
                     <% if(rs.next())
             {%>
                  
                     <td style="padding: 5px"> <%=rs.getString(2) %></td> 
                      <td style="padding: 5px"> <%=rs.getString(3) %></td>
                     <td style="padding: 5px"> <%=rs.getString(4) %></td> 
                      <td style="padding: 5px"> <%=rs.getString(5) %></td>
                     <td style="padding: 5px"> <%=rs.getString(6) %></td> 
                      <td style="padding: 5px"> <%=rs.getString(7) %></td>
                     <td style="padding: 5px"> <%=rs.getString(8) %></td> 
                     <td> <textarea cols="10" rows="7"> <%=rs.getString(9) %></textarea> </td>
                     <td><textarea cols="10" rows="7"> <%=rs.getString(10) %></textarea></td> 
                     <td><textarea cols="10" rows="7"><%=rs.getString(11) %></textarea></td>
                   
                   <%}%>
                 </tr>
                 <tr>
                     <% ResultSet xs=obj.getData(sq);
if(xs.next())
             {%>
                  
                     <td style="padding: 5px"> <%=xs.getString(2) %></td> 
                      <td style="padding: 5px"> <%=xs.getString(3) %></td>
                     <td style="padding: 5px"> <%=xs.getString(4) %></td> 
                      <td style="padding: 5px"> <%=xs.getString(5) %></td>
                     <td style="padding: 5px"> <%=xs.getString(6) %></td> 
                      <td style="padding: 5px"> <%=xs.getString(7) %></td>
                     <td style="padding: 5px"> <%=xs.getString(8) %></td> 
                     <td> <textarea cols="10" rows="7"> <%=xs.getString(9) %></textarea> </td>
                     <td><textarea cols="10" rows="7"> <%=xs.getString(10) %></textarea></td> 
                     <td><textarea cols="10" rows="7"><%=xs.getString(11) %></textarea></td>
                   
                   <%}%>
     
                 </tr>
             </table>     
    <center>   <table>
                       
                       <tr>
                           <td>
                                  <a href="index.html">GO BACK TO MAIN PAGE</a> 
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <a href="compare_brand.jsp">COMPARE ANOTHER TWO CARS</a>
                           </td>
                       </tr>
        </table> </center>


<%@ include file="tailadmin.jsp" %>

    </body>
</html>
