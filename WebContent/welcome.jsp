<%@page import="javax.print.attribute.DateTimeSyntax"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.spi.DateFormatProvider"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.catalina.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>
<center>
<h2 style="color: red;">Welcome!</h2>
<br>

<%  
	if (session.getAttribute("username") != null) { %>
	<p>Hello <%= session.getAttribute("username")%>.  What's next</p>
	<%} 
	
	else {
		response.sendRedirect("./index.jsp");
	}
%>
<a href="Dashboard">Dashboard</a>
<a href="Logout">Logout</a>
</center>
</body>
</html>
