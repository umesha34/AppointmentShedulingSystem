<%@page import="com.appointment.scheduling.jobseekers"%>
<%@page import="com.appointment.scheduling.JobSeekerDao"%>
<%@page import="com.appointment.scheduling.appointments"%>
<%@page import="com.appointment.scheduling.AppointmentDao"%>
<%@page import="com.appointment.scheduling.CADao"%>
<%@page import="com.appointment.scheduling.consultantAvailablity"%>
<%@page import="com.appointment.scheduling.consultants"%>
<%@page import="com.appointment.scheduling.ConsultantDao"%>
<%@page import="com.appointment.scheduling.ConnectionDao"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
AppointmentDao appointment = new AppointmentDao(ConnectionDao.getConnection());
List<appointments> appointmentList = appointment.getAllAppoinments();
request.setAttribute("APPOINTMENT_LIST", appointmentList);
%>

<%
AppointmentDao contact = new AppointmentDao(ConnectionDao.getConnection());
appointments contactCount = contact.getEmailCount();
request.setAttribute("CONTACT_COUNT", contactCount);
%>

<%
AppointmentDao phone = new AppointmentDao(ConnectionDao.getConnection());
appointments phoneCount = phone.getPhoneCount();
request.setAttribute("PHONE_COUNT", phoneCount);
%>

<%
ConsultantDao consData = new ConsultantDao(ConnectionDao.getConnection());
List<consultants> consultant = consData.getConsultantsDropdown();
request.setAttribute("CONS_DROP", consultant);
%>

<%
JobSeekerDao seekerData = new JobSeekerDao(ConnectionDao.getConnection());
List<jobseekers> jobseeker = seekerData.getJobSeekersDropdown();
request.setAttribute("SEEKER_DROP", jobseeker);
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
					<form action="AddAppointmnetServlet" method="post">
                                            <div class="form-group">
                                                <label>Job Seeker</label> <br>
                                                        <select name="jsid" id=jsid">
                                                            <c:forEach var="temp" items="${SEEKER_DROP}">
                                                                <option value=${temp.id}>${temp.sname}</option>
							</c:forEach>
                                                          </select>
						</div>
                                            <div class="form-group">
                                                <label>Consultant</label> <br>
                                                        <select name="cid" id="cid">
                                                            <c:forEach var="temp" items="${CONS_DROP}">
                                                                <option value=${temp.id}>${temp.consultantName}</option>
							</c:forEach>
                                                          </select>
						</div>
						<div class="form-group">
                                                    <label>Date</label> <input class="form-control" type="date"
								name="date" place-holder="Date" required>
						</div>
                                                <div class="form-group">
                                                    <label>From</label> <input class="form-control" type="time"
								name="fromTime" place-holder="From" required>
						</div>
                                            <div class="form-group">
                                                    <label>To</label> <input class="form-control" type="time"
								name="toTime" place-holder="To" required>
						</div>
                                            <div class="form-group">
                                                <label>Contact via</label><br>
                                                    <select name="contactBy" id=contactBy">
                                                        <option value="email">Email</option>
                                                        <option value="phone">Phone</option>
                                                    </select>
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
								<th scope="col">Job Seeker Name</th>
								<th scope="col">Consultant Name</th>
                                                                <th scope="col">Job Seeker Email</th>
                                                                <th scope="col">Job Seeker Contact</th>
                                                                <th scope="col">Date</th>
                                                                <th scope="col">From</th>
                                                                <th scope="col">To</th>
                                                                <th scope="col">Contact By</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="temp" items="${APPOINTMENT_LIST}">
								<tr>
                                                                    
									<td>${temp.sname }</td>
                                                                        <td>${temp.consultantName }</td>
                                                                        <td>${temp.semail }</td>
                                                                        <td>${temp.sphone }</td>
                                                                        <td>${temp.date }</td>
                                                                        <td>${temp.fromTime }</td>
                                                                        <td>${temp.toTime }</td> 
                                                                        <td>${temp.contactBy }</td> 
								</tr>
							</c:forEach>
						</tbody>
					</table>
                                        <div>
                                            <label>All appointments by Email: </label>${CONTACT_COUNT.contactBy} <br>
                                            <label>All appointments by Phone: </label>${PHONE_COUNT.contactBy}
                                        </div>
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