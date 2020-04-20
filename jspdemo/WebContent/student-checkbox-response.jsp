<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Confirmation Title</title>
</head>
<body>
	The student is confirmed: ${param.firstname} ${param.lastname}
	<br/><br/>
	Favorite programming languages:
	<ul>
		<%
			String[] langs = request.getParameterValues("favoritelanguage");
			if(langs!=null){
				for(String temp : langs){
					out.println("<li>"+temp+"</li>");
				}
			}

		%>
	</ul>
	
</body>
</html>