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

	<form action="GradesBean" method="POST"><br>
		lab0 <input type="text" id="lab0"/>
		lab1 <input type="text" id="lab1"/>
		lab2 <input type="text" id="lab2"/><br>
		lab3 <input type="text" id="lab3"/>
		lab4 <input type="text" id="lab4"/>
		lab5 <input type="text" id="lab5"/><br>
		lab6 <input type="text" id="lab6"/>
		lab7 <input type="text" id="lab7"/>
		lab8 <input type="text" id="lab8"/><br>
		assignment1 <input type="text"id="assigment1"/>
		quiz1 <input type="text" id="quiz1"/><br>
		assignment2 <input type="text" id="assignment2"/>
		quiz2 <input type="text" id="quiz2"/><br>
		participation <input type="text" id="participation"/>
		quiz3 <input type="text" id="quiz3"/><br>
		midterm <input type="text" id="midterm"/>
		finalExam <input type="text" id="finalExam"/><br><br>
		<input type="submit" value="Submit" id="gradeSubmit"/><br><br>
	</form>
	
</center>
</body>
</html>