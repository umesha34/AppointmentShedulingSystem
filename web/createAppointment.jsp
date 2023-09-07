<%@page import="com.appointment.scheduling.consultantAvailablity"%>
<%@page import="com.appointment.scheduling.CADao"%>
<%@page import="com.appointment.scheduling.jobseekers"%>
<%@page import="com.appointment.scheduling.JobSeekerDao"%>
<%@page import="com.appointment.scheduling.ConnectionDao"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
JobSeekerDao jobData = new JobSeekerDao(ConnectionDao.getConnection());
List<jobseekers> jobs = jobData.getAllJobSeekers();
request.setAttribute("JOBS_LIST", jobs);
%>

<%
jobseekers jobseeker = (jobseekers) session.getAttribute("logJobseeker");
if (jobseeker == null) {
	response.sendRedirect("index.jsp");
}
%>

<%
int id = Integer.parseInt(request.getParameter("id"));
CADao availability = new CADao(ConnectionDao.getConnection());
consultantAvailablity bk = availability.getAllAvailabilityById(id);
request.setAttribute("CON_DATA", bk);
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
                        <h1 style='color:#fff'><%=jobseeker.getSname()%></h1>
                </div>

                <ul class="navbar-nav">
                    <li><a href="jobSeekerHome.jsp">Home</a></li>
                    <li><a href="userAppointmnets.jsp">My Appointments</a></li>
                    <li><a href="LogoutServlet">Log Out</a></li>

                </ul>
            </nav>
    
	<div class="container">
		<div class="inner">
			<div class="row">
				<div class="col-md-6">
					<h3>Create New Appointment for ${CON_DATA.consultantName}</h3>
					<form action="AddAppointmentByIdServlet" method="post">
                                            <div class="form-group">
							<input class="form-control" type="hidden" value=<%=jobseeker.getId()%>
								name="jsid" place-holder="jsid" required>
						</div>
                                            <div class="form-group">
							<input class="form-control" type="hidden" value=${CON_DATA.cid}
								name="cid" place-holder="jsid" required>
						</div>
						<div class="form-group">
                                                    <label>Date: </label>
                                                    ${CON_DATA.date}<input class="form-control" type="hidden" value=${CON_DATA.date}
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