<%-- 
    Document   : addcar
    Created on : Sep 4, 2016, 9:21:41 PM
    Author     : Satish
--%>
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
                String b1=request.getParameter("brand1");
                session.setAttribute("brand1", b1);
                  String b2=request.getParameter("brand2");
                    session.setAttribute("brand2", b2);
        ResultSet xs=null,rs=null;
    String sql="select model from car where brand='"+b1+"' ";
      
    rs=obj.getData(sql);
  %>
        <form action="compare_action.jsp" method="post">
            <center>  <table  >
                <tr>
                    
                    <th style="padding:20px;text-align: center ">Car no1</th>
                    <bold> <th style="padding:5px"> </bold></th>
                    <bold> <th style="padding:20px; text-align: center">Car no2</bold></th>
                </tr>
                
                
                <tr >
                    
                 
                <td style="padding:30px">
                    <select id="brand" name="model1" >
                        
                    <% 
                 
                while(rs.next())
                        {%>
                            <option  value="<%=rs.getString(1) %>"  name="brand" ><%=rs.getString(1) %></option>  
                        <%}
               //          System.out.println("inside ");
                        %>
                    </select>
                    </td>
                    <td><input type="hidden" value="dcv djkrvrdvd>"</td>
 
                    <% 
String sq="select model from car where brand='"+b2+"' ";      
  xs=obj.getData(sq);
      %>              
                        <td>
                    <select id="brand" name="model2" >
                         
                    <% 
                 // System.out.println("inside scnd");
                while(xs.next())
                        {%>
                            <option value="<%=xs.getString(1) %>"  name="brand" ><%=xs.getString(1) %></option>  
                        <%}
               //          System.out.println("inside ");
                        %>
                    </select>
                    </td>
                </tr>
                
                
                <tr>
                  
                </tr>
                </table>
                     <br/><br/>
                    <table>
                <tr>
                    <td ><input style="background-color: #37AFFF;" type="submit" value="SUBMIT"></td>
                </tr>
            </table>   
                    <br/><br/><br/><br/><br/><br/><br/>
        </form>
        <%@ include file="tailadmin.jsp" %> 
    </body>
</html>
