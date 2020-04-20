<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
	<%
		String favLang = request.getParameter("favoriteLanguage");
		Cookie theCookie = new Cookie("myApp.favoriteLanguage",favLang);
		theCookie.setMaxAge(60*60*24*365);
		response.addCookie(theCookie);
	%>
</head>
<body>
	Thanks! We set your favorite language to: ${param.favoriteLanguage}
	<br/><br/>
	<a href="cookies-personalize-homepage.jsp">Return to homepage.</a>
</body>
</html>