<%@page import="com.appointment.scheduling.CADao"%>
<%@page import="com.appointment.scheduling.consultantAvailablity"%>
<%@page import="com.appointment.scheduling.consultants"%>
<%@page import="com.appointment.scheduling.ConsultantDao"%>
<%@page import="com.appointment.scheduling.ConnectionDao"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
CADao conData = new CADao(ConnectionDao.getConnection());
List<consultantAvailablity> cavailability = conData.getAllAvailability();
request.setAttribute("CONST_LIST", cavailability);
%>

<%
ConsultantDao consData = new ConsultantDao(ConnectionDao.getConnection());
List<consultants> consultant = consData.getConsultantsDropdown();
request.setAttribute("CONS_DROP", consultant);
%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
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
					<form action="AddAvailabilityServlet" method="post">
						<div class="form-group">
							<label>Consultant</label> 
                                                        <select name="cid" id="cid">
                                                            <c:forEach var="temp" items="${CONS_DROP}">
                                                                <option value=${temp.id}>${temp.consultantName}</option>
							</c:forEach>
                                                          </select>
						</div>
						<div class="form-group">
							<label>Name</label> <input class="form-control" type="text"
								name="consultantName" place-holder="consultantName" required>
						</div>
                                            <div class="form-group">
							<label>Email</label> <input class="form-control" type="text"
								name="email" place-holder="Email" required>
						</div>
                                            <div class="form-group">
							<label>Contact</label> <input class="form-control" type="text"
								name="contact" place-holder="Contact" required>
						</div>
						<div class="form-group">
                                                    <label>Date</label> <input class="form-control" type="date"
								name="date" place-holder="Date" required>
						</div>
                                                <div class="form-group">
                                                    <label>From</label> <input class="form-control" type="time"
								name="ftime" place-holder="From" required>
						</div>
                                            <div class="form-group">
                                                    <label>To</label> <input class="form-control" type="time"
								name="ttime" place-holder="To" required>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</form>
				</div>
				<div class="col-md-9">
					<h3>Consultants Availability</h3>
					<table class="table">
						<thead class="bg-light">
							<tr>
								<th scope="col">Name</th>
								<th scope="col">Email</th>
                                                                <th scope="col">Contact</th>
                                                                <th scope="col">Date</th>
                                                                <th scope="col">From</th>
                                                                <th scope="col">To</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="temp" items="${CONST_LIST}">
								<tr>
									<td>${temp.consultantName }</td>
                                                                        <td>${temp.email }</td>
                                                                        <td>${temp.contact }</td>
                                                                        <td>${temp.date }</td>
                                                                        <td>${temp.ftime }</td>
                                                                        <td>${temp.ttime }</td>
									<td><a href="editUser.jsp?id=${temp.id }">Edit</a> <a
										href="DeleteUserServlet?id=${temp.id}">Delete</a</td>                                                                               
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