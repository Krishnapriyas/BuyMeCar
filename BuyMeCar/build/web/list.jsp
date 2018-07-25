
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@ include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
     String o=request.getParameter("brand");
         ResultSet xs=null,rs=null;
  session.setAttribute("brand", o);
       
        String v=" select distinct model from car where brand = '"+o+"' ";

         rs=obj.getData(v); %>
         <form action="list2.jsp" method="post">
             
      <table>
             <tr>
           
            <td> select model :</td>
            <td>            
                
                    <select id="model" name="model">
                    <% 
                  //System.out.println("inside scnd");
                while(rs.next())
                        {%>
                            <option value="<%=rs.getString(1) %>"  name="model" ><%=rs.getString(1) %></option>  
                        <%}
                       //  System.out.println("inside ");
                        %>
                    </select>
                    </td>
            </tr>
  
   <tr>
                <td><input style="background-color: #37AFFF;" type="submit" value="SUBMIT" ></td>
            </tr>
           </table>
       </form>
 <%@ include file="tailadmin.jsp" %>
    </body>
</html>
