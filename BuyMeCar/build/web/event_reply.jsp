<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ include file="head.jsp" %>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMC - admin</title>
    </head>
    <body>
        <p>After contacting your client with given information for further details, please change the status so that same message does not pop again.</p>
        <br/>
       <%
           String sql="select slno,name,email,ename,elink from event where stat='0' ";
           ResultSet rs=obj.getData(sql);
          
        //   String abc = rs.getString(6);
           //      String sq= "select brand,model from car where slno='"+abc+"'";
                 // ResultSet x = obj.getData(sq);
                 
                  %>
         
         <table border='1'>
             <tr>
                 <th style="padding:5px">Customer name</th>
                 <th style="padding:5px">Customer email</th>
                 <th style="padding:5px">Event name</th>
                  <th style="padding:5px">Event link</th>
              
                
                 <th style="padding:5px">Reset the status as replied</th>
             </tr>
             <tr>
                 <%while(rs.next())
                 {
                 String id=rs.getString(1);
                 %>
                 
                 <td style="padding:5px"><%=rs.getString(2) %> </td>
                 <td style="padding:5px"><%=rs.getString(3) %> </td>
                 <td style="padding:5px"><%=rs.getString(4) %> </td>
                 <td style="padding:5px"><%=rs.getString(5) %> </td>
               
                  
                
                   
                 <td style="padding:5px"><a href="change_event.jsp?id=<%=id%>" >click here</a> </td>
                 </tr>
               <%   }%>
             
         </table>
              <br/><br/><br/><br/><br/><br/><br/><br/><br/>
                <%@ include file="tailadmin.jsp" %>
    </body>
</html>

