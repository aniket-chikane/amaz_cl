<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #E6F9E6;">

	<%@include file="header.jsp"%>

	<%
	String message = request.getParameter("message");
	%>
	<div class="container">
		<div class="row"
			style="margin-top: 70px; margin-left: 20px; margin-right: 20px;">
			<div style = "text-align: center;">
			<img alt="logo_black" src="./images/amazon_PNG6.png" style = "height:50px">
			</div><br>
			<form action="./LoginSrv" method="post"
				class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2"
				style="border: 1px solid black; border-radius: 5px;  padding: 50px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style="float:left;">Sign in</h2>
					<br>
					
					<%
					if (message != null) {
					%>
					<p style="color: blue;">
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
				
				<div></div>
				<div class="row">
					<div class="col-md-12 form-group">
					<p style = "border :solid black 1px"></p>
						<label for="last_name">Username</label> <input type="email"
							placeholder="Enter Username" name="username" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Password</label> <input type="password"
							placeholder="Enter Password" name="password" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="userrole">Login As</label> <select name="usertype"
							id="userrole" class="form-control" required>
							<option value="customer" selected>CUSTOMER</option>
							<option value="admin">ADMIN</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<button type="submit" class="btn btn-success" style = "background-color:yellow;color:black;width : 250px; border:1px solid black">Sign in</button><br><br>
					</div>
				</div>
			</form>

		</div>
	</div>

	<%@ include file="footer.html"%>

</body>
</html>