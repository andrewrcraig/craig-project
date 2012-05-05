<%@ tag language="java" pageEncoding="UTF-8"%>

  <jsp:useBean id="grades" class="craig_proj.GradesBean" scope="session" />
  
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
