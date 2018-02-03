<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<h2>Login:</h2>
	<%
	String errMsg = null;
	//first check whether the form was submitted
	if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null) {
		//form was submitted
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		if ("admin".equalsIgnoreCase(userName) && "admin".equalsIgnoreCase(password)) {
			//valid user
			System.out.println("Welcome admin !");
		} else {
			//invalid user. Set error message
			errMsg = "Invalid user id or password. Please try again";
		}
	}
%>
	<!-- Check error message. If it is set, then display it -->
	<%if (errMsg != null) { %>
		<span style="color: red;"><%out.print(errMsg); %></span>
	<%} %>
	<form method="post">
		User Name:
		<input type="text" name="userName">
		<br> Password:
		<input type="password" name="password">
		<br>
		<button type="submit" name="submit">Submit</button>
		<button type="reset">Reset</button>
	</form>
</body>

</html>