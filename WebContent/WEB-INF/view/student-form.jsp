<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Student registration from</title>
</head>

<body>
	<form:form action="processForm" modelAttribute="student">	
		First name: <form:input path="firstName" /> <!--  firstName is a property of the student class -->
		<br>
		Last name: <form:input path="lastName" /> <!--  firstName is a property of the student class -->
		<br>
		Country: <!--  dropdown list -->
		<form:select path="country">
			<!--  using entries from linked hashmap from student -->
			<form:options items="${student.countryOptions}" />			
		</form:select>
		<br>
		Java <form:radiobutton path="favoriteLanguage" value="Java" />
		C++ <form:radiobutton path="favoriteLanguage" value="C++" />
		Python <form:radiobutton path="favoriteLanguage" value="Pyhton" />
		
		<br>
		Operating Systems:
		
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		MacOS <form:checkbox path="operatingSystems" value="MacOS" />
		Windows <form:checkbox path="operatingSystems" value="Window" />
		
		<br>
		<input type ="submit"  value="Submit"/>
		
	</form:form>
	
</body>
</html>