<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.HttpSession" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
<% 
	HttpSession session1 = request.getSession(false);
	// Check if the session is not null and the username attribute is set
	if (session1 != null && session1.getAttribute("username") != null) {
	    // Get the username from the session
	    String username = (String) session.getAttribute("username");

%>
	<div class="container m-5 text-center ">
	<h1 class="text-center">Hello! Welcome <%= username %></h1>
	

	
	<button type="button" class="btn btn-danger mt-5"><a href="LogOut.jsp"  class="text-white text-decoration-none">Log Out</a></button>
	
	</div>
 <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("LogIn.jsp");
        }
    %>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>