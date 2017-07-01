<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	/* background-color:lightblue; */
	background-image: url("https://s-media-cache-ak0.pinimg.com/736x/fa/0f/c4/fa0fc4326ba2e6d8d74c2464fdd4884e.jpg");
    background-repeat: no-repeat;
    background-position: right top;
    }
</style>
</head>
<body>
	<form action="authenticate" method="post">
	<br> <br><br><br><br>
		<table align="center">
		<caption><b><font size="4">Please Enter Valid Credentials</font></b></caption>
			<tr>
				<td><b>Username:</b></td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td><b>Password:</b></td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="login" /></td>
			</tr>
			
		</table>
	</form>
</body>
</html>