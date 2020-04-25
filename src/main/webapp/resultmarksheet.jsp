<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<center>
		<%@include file = "header.jsp"%>
<% 
	String Roll = request.getParameter("Roll");
	String Name = request.getParameter("Name");
	String Total = request.getParameter("Total");
	String Marks1 = request.getParameter("Marks1");
	String Marks2 = request.getParameter("Marks2");
	String Marks3 = request.getParameter("Marks3");
	%>

	<h2>Name: <%=Name%>&nbsp;&nbsp;&nbsp;&nbsp;Roll No: <%=Roll%></h2>
	<table border="1" cellpadding="1">
		<tr>
			<th>Subject</th>
			<th>Marks</th>
		</tr>
		<tr>
			<td>Physics</td>
			<td><%=Marks1%></td>
		</tr>
		<tr>
			<td>Chemistry</td>
			<td><%=Marks2%></td>
		</tr>
		<tr>
			<td>Mathametics</td>
			<td><%=Marks3%></td>
		</tr>
	</table>
	<br>
	<input type="button" name="btn1" value="PRINT" onclick="window.print();">
	&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" name="btn2" value="BACK" onclick="window.location.href='result.jsp'">
	<br><br><br><br><br><br><br><br>
	<%@include file= "footer.jsp"%>
	</center>
</body>
</html>