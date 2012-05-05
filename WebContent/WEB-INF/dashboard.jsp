<%@page import="javax.swing.plaf.basic.BasicOptionPaneUI.ButtonActionListener"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="craig_proj.GradesBean" %>
    <%@ taglib prefix="dc" tagdir="/WEB-INF/tags" %>
    <jsp:useBean id="grades" class="craig_proj.GradesBean" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>
</head>
<body>
<center>
<br><br>

<c:if test="${pageContext.request.method=='POST'}" />
	
	<dc:greeter />
	
<jsp:setProperty property="*" name="grades"/>

		<h2>Your grade is:
	<span id="overallGrade" style="color: red;"><%= (Math.round(grades.getOverallGrade() * 100) / 100.0d) %></span>
	</h2>
</center>

	<dc:dashboard /> 

</body>
</html>