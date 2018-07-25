 <%@ include file="head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>upload photo</title>
 
</head>
<body>
      <div id="header">

</div>


          <div id="section">
<form enctype="multipart/form-data" action="addphoto_action.jsp"
		method="post">
		<table>
			<tr>
				<td>Upload Image:</td>
				<td><input type="file" name="img"></td>
			</tr>
			<tr>
				<td style="border:20px solid white"><input style="background-color: #37AFFF;" type="submit" value="Submit" /></td>
			</tr>
		</table>
		
	</form>
	</div>       
    
      <br/><br/><br/><br/><br/><br/><br/><br/>
   
          
    </body>
</html>
 <%@ include file="tailadmin.jsp" %>	
</body>
</html>