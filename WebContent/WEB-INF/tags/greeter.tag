<%@ tag language="java" pageEncoding="UTF-8"%>

  
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