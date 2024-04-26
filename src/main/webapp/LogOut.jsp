<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	HttpSession currentsession = request.getSession(false);
	// Check if the session is not null and the username attribute is set
	if(currentsession != null)
	{
		currentsession.invalidate();
	}
            // Redirect to the login page if the session is not valid
            response.sendRedirect("index.html");
        
    %>

</body>
</html>