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
        ResultSet xs=null,rs=null;
    String sql="select distinct brand from car ";
    rs=obj.getData(sql); %>
        <form action="compare_model.jsp" method="post">
            <center>  <table  >
                <tr>
                    
                    <th style="padding:20px;text-align: center ">Car no1</th>
                    <bold> <th style="padding:5px"> </bold></th>
                    <bold> <th style="padding:20px; text-align: center">Car no2</bold></th>
                </tr>
                
                
                <tr >
                    
                 
                <td style="padding:30px">
                    <select id="brand" name="brand1" value="select brand name" >
                   
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
         xs=null;
    String sql1="select distinct brand from car ";
    xs=obj.getData(sql1); %>
                        <td>
                    <select id="brand" name="brand2" >
                      
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
