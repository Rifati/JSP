<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tafels</title>
</head>
<body>
	<form action="index.jsp" method="post" id="form">
			<input type="text" name="number">
			<input type="submit" name="submit" value="OK">
		</form>
		<%
			try {
				int number = 0;
				if (request.getParameter("submit") != null) {
					number = Integer.parseInt(request.getParameter("number"));
				}
				if (request.getParameter("previous") != null) {
					number = Integer.parseInt(request.getParameter("value"));
					number--;
				}
				if (request.getParameter("next") != null) {
					number = Integer.parseInt(request.getParameter("value"));
					number++;
				}
				if (request.getParameter("submit") != null
				|| request.getParameter("previous") != null
				|| request.getParameter("next") != null){
					for (int i = 1; i <= 10; i++) {
						out.println("<p>"+ i +" × "+ number +" = "+ (i*number) +"</p>");
					}
					out.println(
						"<input type='hidden' form='form' name='value' value='"+ number +"'>"
						+ "<input type='submit' form='form' name='previous' value='Previous'>"
						+ "<input type='submit' form='form' name='next' value='Next'>"
					);
				}
			}
			catch (NumberFormatException e) {
				out.println("<p id='error'>Error. Try using an integer instead.</p>");
			}
		%>
	
		
		<!-- here ends jsp -->
		
		
		
	</form>
</body>
</html>