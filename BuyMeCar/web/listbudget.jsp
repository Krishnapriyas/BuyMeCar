<%-- 
    Document   : listbudget
    Created on : Sep 2, 2016, 7:37:58 PM
    Author     : Satish
--%>
 <%@ include file="head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMC-car budget</title>
    </head>
    <body>
        
        <%
            String id=request.getParameter("id");
           // String budget=request.getParameter("bud");
           // String type=request.getParameter("type");
            String sql="select * from car where slno='"+id+"'" ;
             String count=" update car set count=count+1 where slno='"+id+"' ";
int i=obj.putData(count);
             ResultSet rs=obj.getData(sql);
            // String slno =rs.getString(1);
             session.setAttribute("carid", id);
            %>
            <form action="register.jsp" method="post">
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
                     <% while(rs.next())
             { 
                     %>
                  
                     <td style="padding: 5px"> <%=rs.getString(2) %></td> 
                      <td style="padding: 5px"> <%=rs.getString(3) %></td>
                     <td style="padding: 5px"> <%=rs.getString(4) %></td> 
                      <td style="padding: 5px"> <%=rs.getString(5) %></td>
                     <td style="padding: 5px"> <%=rs.getString(6) %></td> 
                      <td style="padding: 5px"> <%=rs.getString(7) %></td>
                     <td style="padding: 5px"> <%=rs.getString(8) %></td> 
                     <td> <textarea cols="20" rows="7"> <%=rs.getString(9) %></textarea> </td>
                     <td><textarea cols="20" rows="7"> <%=rs.getString(10) %></textarea></td> 
                     <td><textarea cols="20" rows="7"><%=rs.getString(11) %></textarea></td>
                   
                   <%}%>
                 </tr>
             </table>
                 <center><table>
                 <tr >
                     <td>
                         <input style="background-color: #37AFFF;" type="submit"  value="BUY THE CAR">
                     </td>
                 </tr>
                     </table></center>
                
            </form>
               
    <%@ include file="tailadmin.jsp" %>   
    </body>
</html>
