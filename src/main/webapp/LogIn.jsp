<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>


	<div class="Container m-5">
		<div class="row justify-content-center">
			<div class="card p-3 m-4 " style="width: 30rem;">
				<div class="card-body ">


					<form action="LogInServlent" method="post">
						<h3 class="text-center mb-3">User Login page</h3>
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Enter
								Your Name</label> <input type="text" class="form-control" id="username"
								name="username">

						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">Password</label>
							<input type="password" class="form-control" id="password"
								name="password">
						</div>

						<button type="submit " class="btn btn-success form-control mt-2">Login</button>

						<a href="index.html"  class="text-danger text-decoration-none">Back To Home</a>
						
						<%-- Display error message if login fails --%>
				        <% String error = request.getParameter("error");
				            if (error != null && error.equals("1")) { %>
				                <p style="color: red;">Invalid username or password. Please try again.</p>
				        <% } %>
				          <%-- Display error message if Register Successful --%>
				        <% String rs = request.getParameter("registration");
				            if (rs != null && rs.equals("success")) { %>
				                <p style="color: green;">Your Registration is Successful. Please Login.</p>
				        <% } %>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>