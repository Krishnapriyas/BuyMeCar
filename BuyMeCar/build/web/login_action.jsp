<%-- 
    Document   : login_action
    Created on : Sep 4, 2016, 9:10:54 PM
    Author     : Satish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          String uname=request.getParameter("uname");
          String pass=request .getParameter("pwd");
          if(uname.equals("admin")&&pass.equals("adminpass"))
          {
              session.setAttribute("admin", uname);
              response.sendRedirect("admin_home.jsp");
          }
          else
          {%>
          <script>
              alert("wrong information.try again");
              window.location="index.html";
              </script>
              
         <% }
        %>
    </body>
</html>
