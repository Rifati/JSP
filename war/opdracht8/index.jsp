<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tafels</title>
</head>
<body>
	<form action="index.jsp" method="get">
		<input type="text" name="invul">
		<input type="submit" name="verstuur" value="verstuur">

		
		<p>
			<!-- here comes jsp  -->
			<%
			if(request.getParameter("verstuur") != null) {
				int input = Integer.parseInt(request.getParameter("invul"));
				
				for (int i = 1; i <= 10; i++) {
					out.println(i + " x " + input + " = " + (i*input) + "<br>");
				}
			
			}
			%>
		</p>
	
		
		<!-- here ends jsp -->
		
		
		
	</form>
</body>
</html>