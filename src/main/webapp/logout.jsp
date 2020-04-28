<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<%
		session.invalidate();
%>
		<jsp:forward page ="welcome.jsp"/>
	
</body>
</html>