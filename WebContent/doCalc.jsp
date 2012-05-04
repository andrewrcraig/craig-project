<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="craig_proj.GradesBean" %>
    <jsp:useBean id="grades" class="craig_proj.GradesBean" scope="session"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calculate</title>
</head>
<body>
<center>
<br><br>
<%  
	if (session.getAttribute("username") != null) { %>
	<p>Hello <%= session.getAttribute("username")%></p>

	<%} 
	
	else {
		response.sendRedirect("./index.jsp");
	}
%>

	<a href="./calculate.jsp" id="calculateLink">Calculate Grade</a>   | 
	<a href="Dashboard" id="dashboardLink">Dashboard</a>   |
	<a href="Logout" id="logoutLink">Logout</a>
<br><br>
<pre>
<jsp:setProperty property="*" name="grades"/>
</pre>

	You're grade has been recorded!  You earned a <%= (Math.round(grades.getOverallGrade() * 100) / 100) %>

</center>
</body>
</html>