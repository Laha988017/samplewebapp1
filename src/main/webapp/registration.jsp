<!DOCTYPE html>
<html>
<head>
	<title>Registration of User</title>
</head>
<body>
	<center>
		<%@include file = "header.jsp"%>
		<form action="registration1.jsp" method="POST">
			<table>
				<tr>
					<td>First name:</td>
					<td><input type="text" name="firstName" size="30"></td>
				</tr>
				<tr>
					<td>Last name:</td>
					<td><input type="text" name="lastName" size="30"></td>
				</tr>
				<tr>
					<td>Login name:</td>
					<td><input type="text" name="loginName" size="30"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="Password" name="password" size="30"></td>
				</tr>
				<tr>
					<td>Enter age:</td>
					<td><input type="number" name="age" size="3"></td>
				</tr>
			</table>
			Which topic are you interested in?<br><br>
			<input type="checkbox" name="topics" value="Date & Time">Date & Time
			<input type="checkbox" name="topics" value="String & StringBuffers">String & StringBuffers
			<input type="checkbox" name="topics" value="Threading">Threading<br><br>
			<input type="submit" name="Submit">
			<input type="reset" name="Clear"><br><br><br><br><br><br><br><br>
			<%@include file = "footer.jsp"%>
		</form>
	</center>
</body>
</html>