
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="dbcom.dbnew"/>
<%@page import="java.sql.*"%>
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
        String v=" select brand from car ";

         rs=obj.getData(v); %>
        <% //  if(rs.next())
            // {
                System.out.println("inside frst");
        %>
        <form action="list.jsp" method="post">
           <table>
            <tr>
                <td>select brand:</td>
                <td>
                    <select id="brand" name="brand" onchange="savebrand()">
                    <% 
                 System.out.println("inside scnd");
                while(rs.next())
                        {%>
                            <option value="<%=rs.getString(1) %>"  name="brand" ><%=rs.getString(1) %></option>  
                        <%}
                         System.out.println("inside ");
                        %>
                    </select>
                    </td>
            </tr>
          
           
           </table>
                      
                    <p id="s"></p>
               <script type="text/javascript">
function savebrand() {
    var  x = document.getElementById("brand").value.toString();
    document.getElementById("s").innerHTML = "You selected: " + x;
  document.getElementById("s").innerHTML = x.toString();
  document.getElementById('passer').href='some.jsp?x='+escape(x);
}
</script>

<a id="passer" href="some.jsp">some</a>
<%
                         
                        // String m="select model from car where brand ='"+m+"'";
     
                    
                 %>
                             
                 <table>
            <tr>
           
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
              
                
            
                
                
        
                
                  
     
      
                    
               
                
                 
                   
  
  
                 
            </td>
   <tr>
                <td><input type="submit" value="SUBMIT" ></td>
            </tr>
           </table>
       </form>
<%
    }
else
    {
        String m =" select brand from car ";

     ResultSet ms=obj.getData(m); %>
       <form action="list.jsp" method="post">
           <table>
            <td></td><td></td>
            
   <tr>
<td>select budget:</td>
<td>
<select name="bud">
   
   <option value="1 lakh - 5 lakh" >1 lakh - 5 lakh</option>
   <option value="5 lakh - 10 lakh" >5 lakh - 10 lakh</option>
   <option value="10 lakh - 20 lakh" >10 lakh - 20 lakh</option>
   <option value="20 lakh - 50 lakh" >20 lakh - 50 lakh</option>
   <option value="50 lakh - 1 crore" >50 lakh - 1 crore</option>
   <option value="Above 1 crore" >Above 1 crore</option>
</select>
</td>
   </tr>
 <tr>
<td>select type:</td>
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
<td><input type="submit" value="SUBMIT" ></td></tr>
           </table>
       </form>
 <%   }%>
    </body>
</html>










