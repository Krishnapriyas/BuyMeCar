
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@ include file="head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMC-options</title>
    </head>
    <body>
 <%
     String o=request.getParameter("options");
    ResultSet xs=null,rs=null;
    if(o.equals("bybrand"))
    {   
        String v=" select distinct brand from car ";

         rs=obj.getData(v); %>
        <% //  if(rs.next())
            // {
              //  System.out.println("inside frst");
        %>
        <form action="list.jsp" method="post">
           <table>
               
            <tr>
                <td>select brand:</td>
                <td>
                    <select id="brand" name="brand" >
                    <% 
                 // System.out.println("inside scnd");
                while(rs.next())
                        {%>
                            <option value="<%=rs.getString(1) %>"  name="brand" ><%=rs.getString(1) %></option>  
                        <%}
               //          System.out.println("inside ");
                        %>
                    </select>
                    </td>
            </tr>
          
           
           </table>
                      
                    <p id="s"></p>
               <script type="text/javascript">

</script>

 
<%
                         
                        // String m="select model from car where brand ='"+m+"'";
     
                    
                 %>
                             
                 <table>
            <!-- <tr>
           
            <td>select model</td>
            <td>            
                        
                <%
              //  System.out.println("dfs" +sur);
                //   String su=(String) v;
                   // session.setAttribute("username", brand);
                   // String su=(String) session.getAttribute("brand");
                  //  request.setAttribute("mod","model"");set attribute for option then get it and use it.
                 //   String mod=request.getParameter("model");
                  //  System.out.println("brand" +su);
                           //  String m="select model from car where brand='"+su+"'";
                          //  xs=obj.getData(m);
                   %>
                
                <select id="brand" >
                   
                  
                </select>
              
                
            
                
                   
  
  
                 
            </td> -->
   <tr>
                <td><input style="background-color: #37AFFF;" type="submit" value="SUBMIT" ></td>
            </tr>
           </table>
                    </br>
  </br>
   </br> </br>
   </br>
       </form>
<%
    }
else
    {
        String m =" select distinct brand from car ";

     ResultSet ms=obj.getData(m); %>
       <form action="viewphoto.jsp" method="post">
           <table>
             
            <td></td><td></td>
            
   <tr>
   
  
<td>Select Budget:</td>
<td>
<select name="bud">
   
   <option value="1 and 5" >1 lakh - 5 lakh</option>
   <option value="5 and 10" >5 lakh - 10 lakh</option>
   <option value="10 and 20" >10 lakh - 20 lakh</option>
   <option value="20 and 50" >20 lakh - 50 lakh</option>
   <option value="50 and 100" >50 lakh - 1 crore</option>
   <option value="100 and 500" >Above 1 crore</option>
</select>
</td>
   </tr>
 <tr>
<td>Select Type:</td>
<td>
    <select name="type">
        <%  while(ms.next())
   {%>
<option value="<%=ms.getString(1) %>" ><%=ms.getString(1) %></option> 
<%}%>
    </select>

    </td>
</tr>
 
<tr>
<td ><input style="background-color: #37AFFF;" type="submit" value="SUBMIT" ></td>
</tr>
           </table>
     </br>
  </br>
   </br> </br>
   </br>
       </form>
 <%   }%>
 <%@ include file="tailadmin.jsp" %>
    </body>
</html>










