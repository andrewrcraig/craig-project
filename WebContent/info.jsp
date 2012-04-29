<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Info</title>
</head>
<body>
<%@ page import="java.io.*,java.util.*" %>

<p>Thank you for visiting <%-- <%= session.getAttribute("username")%> --%> </p>
<%
   Date createTime = new Date();
   Date lastAccessTime = new Date();
   Date logoutTime = new Date();
%>   

 Creation Time <% out.print(createTime); %><br>
 Time of Last Access <% out.print(lastAccessTime); %><br>
 Logout time <% out.print(logoutTime); %><br><br>
 
 <a href='./index.jsp'><-- Back to Login</a>
</body>
</html>