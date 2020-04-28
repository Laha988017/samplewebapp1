<!DOCTYPE html>
<html>
<head>
	<title>Register User</title>
</head>
<body><center>
	<%@include file = "header.jsp"%>
	<h1>Register User</h1>
	<jsp:useBean id = "user" scope = "session" class = "ch01.User">
	<jsp:setProperty name = "user" property = "*"/>
	</jsp:useBean>
	Welcome new user, these values are submitted:
	<p>Your Name:<%=user.getFirstName()%>&nbsp;<jsp:getProperty name = "user" property = "lastName"/></p>
	<p>Your User Id:<jsp:getProperty name = "user" property = "loginName"/></p>
	<p>Your Password:<jsp:getProperty name = "user" property = "password"/></p>
	<p>Your Age is:<jsp:getProperty name = "user" property = "age"/>Years</p>
	Your selected these topics:
	<%
		String[] topics = request.getParameterValues("topics");
		if (topics==null) {
			topics = new String[]{"No topics"};
		}
		for (int i = 0;i<topics.length ;i++ ) {%>
			<br> <%=topics[i]%>
		<%}
	%>
	<p>Goto<a href="welcome.jsp">Topic list Page</p>
		<%@include file = "footer.jsp"%>
	</center>s
</body>
</html>