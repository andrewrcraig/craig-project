<%@page import="javax.print.attribute.DateTimeSyntax"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.spi.DateFormatProvider"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.catalina.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="dc" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>
<center>
<h2 style="color: red;">Welcome!</h2>

	<dc:greeter />
	
</center>
</body>
</html>
