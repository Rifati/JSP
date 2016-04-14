<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javapack.Telefoon"%>
    <%@ page import="javapack.Telefoonlijst"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div.autokader {
    float: left;
    margin: 1em;
    width: 220px;
    height:160px;
    border: 1px solid black;
    border-radius: 5px;
    font-weight: bold;
    text-decoration: none;
    position: relative;
    background: -webkit-linear-gradient(right, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* For Safari 5.1 to 6.0 */
    background: -o-linear-gradient(left, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* For Opera 11.1 to 12.0 */
    background: -moz-linear-gradient(left, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* For Firefox 3.6 to 15 */
    background: linear-gradient(to left, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* Standard syntax (must be last) */

}

div.autokader img {
    width: 120px;
    margin: 0;
    position: absolute;
    bottom: 0;
    left: 0;
}

div.autokader p.merktype {
    color: #FFF8DC;
    background-color: #800000;
    text-align: center;
}

div.autokader p.prijs {
    color: #800000;
    text-align: right;
    margin-right: 1em;
}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Webshop</title>
</head>
<body>
	<form action="index.jsp" method="get">
			<input type="text" placeholder="Minimum prijs" name="min"> 
			<input type="text" placeholder="Maximum prijs" name="max">
			Kies Telefoon <select
				name="merk">
				<option value="alle">Alle Telefoons</option>
				<option value="Samsung">Samsung</option>
				<option value="Apple">Apple</option>
				<option value="Oneplus">Oneplus</option>
				<option value="HUAWEI">HUAWEI</option>
				<option value="HTC">HTC</option>
			</select> <input type="submit" name="knop_1" value="Ok">
		</form>
<%
	int min = 0;
	int max = 1000;
	Telefoonlijst telefoonlist = new Telefoonlijst();

	if (request.getParameter("knop_1") != null) {
		try {
			if (request.getParameter("min") != null && !(request.getParameter("min").equals(""))) {
				min = Integer.parseInt(request.getParameter("min"));
			}
			if (request.getParameter("max") != null && !(request.getParameter("max").equals(""))) {
				max = Integer.parseInt(request.getParameter("max"));
			}
			for (Telefoon telefoon : telefoonlist.getLijst()) {
				if (request.getParameter("merk").equals(telefoon.getMerk()) || request.getParameter("merk").equals("alle")) {
					if (telefoon.getPrijs() >= min && telefoon.getPrijs() <= max) {
						out.print("<div class='autokader'>");
						out.print("<img src='" + telefoon.getFoto() + "' width='300px'>");
						out.print("<p class='merktype'>");
						out.print(telefoon.getMerk());
						out.print(" ");
						out.print(telefoon.getType());
						out.print("</p>");
						out.print("<p class='prijs'>");
						out.print("&euro;"+telefoon.getPrijsFormat());
						out.print("</p>");
						out.print("</div>");
					}
				}
			}
		} catch(NumberFormatException e) {
			out.println("Voer twee getallen in<br>");
			for (Telefoon telefoon : telefoonlist.getLijst()) {
				out.print("<div class='autokader'>");
				out.print("<img src='" + telefoon.getFoto() + "' width='300px'>");
				out.print("<p class='merktype'>");
				out.print(telefoon.getMerk());
				out.print(" ");
				out.print(telefoon.getType());
				out.print("</p>");
				out.print("<p class='prijs'>");
				out.print("&euro;"+telefoon.getPrijsFormat());
				out.print("</p>");
				out.print("</div>");
			}
			
		}
	}
	else {
		for (Telefoon telefoon : telefoonlist.getLijst()) {
			out.print("<div class='autokader'>");
			out.print("<img src='" + telefoon.getFoto() + "' width='300px'>");
			out.print("<p class='merktype'>");
			out.print(telefoon.getMerk());
			out.print(" ");
			out.print(telefoon.getType());
			out.print("</p>");
			out.print("<p class='prijs'>");
			out.print("&euro;"+telefoon.getPrijsFormat());
			out.print("</p>");
			out.print("</div>");
		}
	}
%>
</body>
</html>