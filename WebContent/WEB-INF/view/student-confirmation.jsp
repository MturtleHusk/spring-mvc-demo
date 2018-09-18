<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--  the above is needed to get the foor loop to work -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Student confirmation </title>
</head>

<body>
	The student is confirmed: ${student.firstName} ${student.lastName}
	<br>
	Country: ${student.country}
	<br>
	favorite Language: ${student.favoriteLanguage}
	<br>
	
	Operating Systems
	<ul>
		<!--  a for loop, using JSTL -->
		<c:forEach var="temp" items="${student.operatingSystems}">
		<li> ${temp} </li>
		</c:forEach>
	</ul>
	
</body>
</html>