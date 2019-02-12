<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<style type="text/css">
form {
	padding: 50px;
	background: #ccc;
	position: fixed;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
</style>
<body>
    <%String warning = (String) session.getAttribute("warning");
    warning = warning != null ? warning : "";
    session.invalidate();
    %>
    <output><%= warning %></output>
	<form action="/home" method="get" autocomplete="off">
		<input type="text" class="form-control" name="login"><br>
		<input type="password" class="form-control" name="password"><br>
		<button type="submit" id="sendlogin" class="btn btn-primary">
			sign in</button>
	</form>
</body>
</html>