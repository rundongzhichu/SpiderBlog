<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>login.html</title>
		<meta http-equiv = "keywords" content="keywords1,keywords2,keywords3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html;charset=UTF-8">
	</head>
<body>
	<form action="LoginServlet" method="post">
		用户名：<input type="text" name="name"/><br>
		密码：<input type="password" name="password"/><br>
		<input type="submit" value="login"/>
		<input type="reset" value="clear"/>
	</form>
</body>
