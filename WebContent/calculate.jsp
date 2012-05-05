<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="dc" tagdir="/WEB-INF/tags/" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form</title>
</head>
<body>
<center>
<br><br>

	<dc:greeter />

<br><br>
</center>
<fieldset>
<legend>Calculate You Grade</legend>
<center>
<table>
	<td>
	<form action="doCalc.jsp" method="POST">
		lab0 			&nbsp;<input type="text" id="lab0" name="lab0" size=6 value="10"/>
		lab1 			&nbsp;<input type="text" id="lab1" name="lab1" size=6 value="20"/>
		lab2 			&nbsp;<input type="text" id="lab2" name="lab2" size=6 value="20"/><br>
		lab3			&nbsp;<input type="text" id="lab3" name="lab3" size=6 value="10"/>
		lab4 			&nbsp;<input type="text" id="lab4" name="lab4" size=6 value="20"/>
		lab5 			&nbsp;<input type="text" id="lab5" name="lab5" size=6 value="20"/><br>
		lab6 			&nbsp;<input type="text" id="lab6" name="lab6" size=6 value="20"/>
		lab7 			&nbsp;<input type="text" id="lab7" name="lab7" size=6 value="20"/>
		lab8 			&nbsp;<input type="text" id="lab8" name="lab8" size=6 value="20"/><br>
		quiz1 			      <input type="text" id="quiz1" name="quiz1" size=6 value="0"/>
		quiz2 			      <input type="text" id="quiz2" name="quiz2" size=6 value="10"/>
		quiz3 			  	  <input type="text" id="quiz3" name="quiz3" size=6 value="10"/><br>
		assignment1     &nbsp;<input type="text" id="assignment1" name="assignment3" size=6 value="90"/>
		assignment2 	&nbsp;<input type="text" id="assignment2" name="assignment2" size=6 value="100"/><br>
		participation 	&nbsp;<input type="text" id="participation" name="participation"size=6 value="100"/>
		midterm 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" id="midterm" name="midterm" size=6 value="83"/><br>
		finalExam 		&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" id="finalExam" name="finalExam" size=6 value="100"/><br>
		<input type="submit" value="Submit" id="gradeSubmit"/><br>
	</form>
	</td>
</table>
</center>
</fieldset>	
</body>
</html>