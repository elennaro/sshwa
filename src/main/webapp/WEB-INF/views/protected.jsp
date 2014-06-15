<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
				 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>	
		<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Protected page</title>
	</head>
	<body>
		<h1>Title : ${title}</h1>
		<h1>Message : ${message}</h1>

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>Welcome : ${pageContext.request.userPrincipal.name}
				| <c:url value="login?logout" var="logoutUrl" />
				<a href="${logoutUrl}">Log Out</a>
			</c:if>
		</h2>
		<div>Get <a href="protected">protected</a> resource for admin.</div>
		<div>Get <a href="confidential">confidential</a> resource for superadmin.</div>
		<footer>
			<div>Updated by Alex Art from <a href="https://in2circle.com" target="_blank">in2circle.com</a></div>
		</footer>
	</body>
</html>
