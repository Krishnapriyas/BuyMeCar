<%-- 
    Document   : reg_reply
    Created on : 15 Sep, 2016, 1:11:04 AM
    Author     : lenovo
--%>

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
           String sql="select c_name,c_phone,c_email,sl_no,brand,model from register,car where register.c_stat='0' and car.slno = register.cid";
           ResultSet rs=obj.getData(sql);
          
        //   String abc = rs.getString(6);
           //      String sq= "select brand,model from car where slno='"+abc+"'";
                 // ResultSet x = obj.getData(sq);
                 
                  %>
         
         <table border='1'>
             <tr>
                 <th style="padding:5px">Customer name</th>
                 <th style="padding:5px">Phone</th>
                 <th style="padding:5px">Email</th>
                  <th style="padding:5px">Car Brand</th>
                   <th style="padding:5px">Car Model</th>
                
                 <th style="padding:5px">Reset the status as replied</th>
             </tr>
             <tr>
                 <%while(rs.next())
                 {
                 String id=rs.getString(4);
                 %>
                 <td style="padding:5px"><%=rs.getString(1) %> </td>
                 <td style="padding:5px"><%=rs.getString(2) %> </td>
                 <td style="padding:5px"><%=rs.getString(3) %> </td>
                 <td style="padding:5px"><%=rs.getString(5) %> </td>
                 <td style="padding:5px"><%=rs.getString(6) %> </td>
               
                  
                
                   
                 <td style="padding:5px"><a href="change_register.jsp?id=<%=id%>" >click here</a> </td>
                 </tr>
               <%   }%>
             
         </table>
              <br/><br/><br/><br/><br/><br/><br/><br/><br/>
                <%@ include file="tailadmin.jsp" %>
    </body>
</html>

