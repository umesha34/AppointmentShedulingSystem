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
consultants consultant = (consultants) session.getAttribute("logConsultant");
if (consultant == null) {
	response.sendRedirect("index.jsp");
}
%>

<%
AppointmentDao appointment = new AppointmentDao(ConnectionDao.getConnection());
List<appointments> appointmentList = appointment.getAllAppoinmentsByCid(Integer.toString(consultant.getId()));
request.setAttribute("APPOINTMENT_LIST", appointmentList);
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
                        <h1 style='color:#fff'><%=consultant.getConsultantName()%></h1>
                </div>

                <ul class="navbar-nav">
                    <li><a href="consultantHome.jsp">Home</a></li>
                    <li><a href="consultantApoinment.jsp">My Appointments</a></li>
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
				<div class="col-md-12">
					<h3>My Appointments</h3>
					<table class="table">
						<thead class="bg-light">
							<tr>
								<th scope="col">Name</th>
								<th scope="col">Consultant Name</th>
                                                                <th scope="col">Consultant Email</th>
                                                                <th scope="col">Consultant Contact</th>
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
                                                                        <td>${temp.email }</td>
                                                                        <td>${temp.contact }</td>
                                                                        <td>${temp.date }</td>
                                                                        <td>${temp.fromTime }</td>
                                                                        <td>${temp.toTime }</td>
                                                                        <td>${temp.contactBy }</td>
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