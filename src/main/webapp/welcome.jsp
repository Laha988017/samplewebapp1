<%@page errorPage = "err.jsp"
	import = "java.util.Iterator,ch01.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>JAVA FAQ WELCOME</title>
</head>
<body>
	<CENTER>
		<%@include file = "header.jsp"%>
		<H1>JAVA FAQ </H1>
		<%User user = (User)session.getAttribute("user");
		if(user==null)
			{%>
				You are not registered,please
				<a href="registration.jsp">Register</a><br><br><br><br><br><br><br><br><br><br>
			<%}
			else
			{%>
				Welcome to JAVA FAQ
				<%! FaqCategories faqs = new FaqCategories();%>
				Click a link to answer to the given topic.
				<%
					Iterator categories = faqs.getAllCategories();
					while(categories.hasNext())
					{
						String category = (String)categories.next();
					%>
					<p><a href="<%=replaceUnderscore(category)%>.jsp">
					<%=category%></a></p>
					<%}%>
					<p><a href="logout.jsp">LOGOUT</a></p>
			<%}%>
			<br><br><br>
			<%@ include file = "footer.jsp"%><br>
		</CENTER>
</body>
</html>
<%!
	public String replaceUnderscore(String s)
	{
		return s.replace(' ','_');
	}
%>
