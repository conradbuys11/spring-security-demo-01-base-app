<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>
	<h2>luv2code Company Home Page</h2>
	<hr>
	
	<p>Welcome to the luv2code company home page!</p>
	
	<security:authorize access="hasRole('MANAGER')">
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a> (Only for managers)
	</p>
	<br>
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a> (Only for admins)
		<br>
	</p>
	</security:authorize>
	
	<form:form action="${pageContext.request.contextPath }/logout" method="POST">
		<input type="submit" value="logout" />
	</form:form>
</body>

</html>