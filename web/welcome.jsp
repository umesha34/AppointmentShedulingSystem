<%@page import="com.appointment.scheduling.users"%>
<%@page import="com.appointment.scheduling.ConnectionDao"%>
<%@page import="com.appointment.scheduling.UserDao"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
UserDao userData = new UserDao(ConnectionDao.getConnection());
List<users> user = userData.getAllUsers();
request.setAttribute("USER_LIST", user);
%>


<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <link href="css/nav-bar.css" rel="stylesheet" type="text/css" />

<title>Consulting Appointment</title>

<style>
.inner {
	margin: 15px 0;
}
</style>
</head>
<body>
     <nav class="navbar navbar-expand-md navbar-dark"
                style="background-color: #333">
                <div>
                        <h1 style='color:#fff'>Admin</h1>
                </div>

                <ul class="navbar-nav">
                    <li><a href="welcome.jsp">Users Info</a></li></li>
                    <li><a href="consltant.jsp">Consultant Info</a></li>
                    <li><a href="jobSeeker.jsp">Job Seeker</a></li>
                    <li><a href="consultantAvailable.jsp">Consultants List</a></li>
                    <li><a href="appointment.jsp">Appointment List</a></li>
                    <li><a href="LogoutServlet">Log Out</a></li>

                </ul>
            </nav>
    
<!--	<div class="container-fluid">
		<nav class="navbar navbar-light">
			<a class="navbar-brand">Users</a>
			<form class="form-inline">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</nav>
	</div>-->
	<div class="container">
		<div class="inner">
			<div class="row">
				<div class="col-md-3">
					<h3>Create New User</h3>
					<form action="AddUserServlet" method="post">
						<div class="form-group">
							<label>Name</label> <input class="form-control" type="text"
								name="aname" place-holder="Name" required>
						</div>
						<div class="form-group">
							<label>Email</label> <input class="form-control" type="text"
								name="aemail" place-holder="Email" required>
						</div>
						<div class="form-group">
                                                    <label>Password</label> <input class="form-control" type="password"
								name="apassword" place-holder="Password" required>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</form>
				</div>
				<div class="col-md-9">
					<h3>User Information From Database</h3>
					<table class="table">
						<thead class="bg-light">
							<tr>
								<th scope="col">Name</th>
								<th scope="col">Email</th>
								<th scope="col">Password</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="tempUser" items="${USER_LIST}">
								<tr>
									<td>${tempUser.aname }</td>
									<td>${tempUser.aemail }</td>
									<td>${tempUser.apassword }</td>
									<td><a
										href="DeleteUserServlet?id=${tempUser.id}">Delete</a</td>                                                                               
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>