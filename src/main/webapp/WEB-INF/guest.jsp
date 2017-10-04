<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="guest.*" %>
<jsp:useBean id="guestDao" type="guest.GuestDao" scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JPA Guestbook Web Application</title>
</head>
<body>
<h1>Guest Registration Form</h1>
<form method="POST" action="guest.html">
<input type="text" name="name">
<input type="submit" value="Register">
</form>
<h1>Registered Guests</h1>
<table>
<tr><td>Guest ID</td><td>Name</td><td>Signed On</td></tr>
<% for(Guest guest : guestDao.getAllGuests()) { %>
	<tr><td><%= guest.getId() %></td><td><%= guest.getName() %></td><td><%= guest.getSigningDate() %></td>
<% } %>
</table>
</body>
</html>