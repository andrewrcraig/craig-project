<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="craig_proj.GradesBean" %>
    <%@ taglib prefix="dc" tagdir="/WEB-INF/tags/" %>
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

	<dc:greeter />
	
<jsp:setProperty property="*" name="grades"/>
	<h2>Your grade is:
	<span="overallGrade" style="color: red;"><%= (Math.round(grades.getOverallGrade() * 100) / 100) %></span>
	</h2>
</center>
	<h3>The breakdown is as follows:</h3>
	<p>
	<strong>50%</strong>
	comes from your
	<strong>assignments</strong> which was
	<strong><%= Math.round(grades.getAssignmentsAverage()) %></strong> for
	<strong><%= Math.round(grades.getAssignmentsAverage() * .50) %></strong> points. </p>
	<p>
	<strong>25%</strong>
	comes from your
	<strong>finalExam</strong> which was
	<strong><jsp:getProperty property="finalExam" name="grades"/></strong> for
	<strong><%= Math.round(grades.getFinalExam() * .25) %></strong> points. </p>
	<p>
	<strong>15%</strong>
	comes from your
	<strong>midterm</strong> which was
	<strong><jsp:getProperty property="midterm" name="grades"/></strong> for
	<strong><%= Math.round(grades.getMidterm() * .15) %></strong> points. </p>
	<p>
	<strong>5%</strong>
	comes from your
	<strong>quizzes</strong> which was
	<strong><%= Math.round(grades.getQuizzesAverage() * 10 ) %></strong> for
	<strong><%= Math.round(grades.getQuizzesAverage() * 10) * .05  %></strong> points. </p>
	<p>
	<strong>5%</strong>
	comes from your
	<strong>participation</strong> which was
	<strong><jsp:getProperty property="participation" name="grades"/></strong> for
	<strong><%= Math.round(grades.getParticipation() * .05) %></strong> points. </p>
</body>
</html>