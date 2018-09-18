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
			<form:option value="A" label="A" />
			<form:option value="B" label="B" />
			<form:option value="C" label="C" />
			<form:option value="C" label="D" />
			
		</form:select>
		<br>
		<input type ="submit"  value="Submit"/>
		
	</form:form>
	
</body>
</html>