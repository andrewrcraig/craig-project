<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="craig_proj.GradesBean" %>
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
<jsp:useBean id="grades" class="craig_proj.GradesBean">

<pre>
<jsp:setProperty property="lab0" name="grades"/>
<jsp:setProperty property="lab1" name="grades"/>
<jsp:setProperty property="lab2" name="grades"/>
<jsp:setProperty property="lab3" name="grades"/>
<jsp:setProperty property="lab4" name="grades"/>
<jsp:setProperty property="lab5" name="grades"/>
<jsp:setProperty property="lab6" name="grades"/>
<jsp:setProperty property="lab7" name="grades"/>
<jsp:setProperty property="lab8" name="grades"/>
<jsp:setProperty property="assignment1" name="grades"/>
<jsp:setProperty property="assignment2" name="grades"/>
<jsp:setProperty property="midterm" name="grades"/>
<jsp:setProperty property="finalExam" name="grades"/>
<jsp:setProperty property="participation" name="grades"/>
<jsp:setProperty property="quiz1" name="grades"/>
<jsp:setProperty property="quiz2" name="grades"/>
<jsp:setProperty property="quiz3" name="grades"/>

</pre>
You're grade has been calculated!  You earned a <%= grades.getOverallGrade()%>
</jsp:useBean>

</center>
</body>
</html>