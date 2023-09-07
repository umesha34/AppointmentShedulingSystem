<%@page import="com.appointment.scheduling.appointments"%>
<%@page import="com.appointment.scheduling.AppointmentDao"%>
<%@page import="com.appointment.scheduling.consultantAvailablity"%>
<%@page import="com.appointment.scheduling.CADao"%>
<%@page import="com.appointment.scheduling.jobseekers"%>
<%@page import="com.appointment.scheduling.JobSeekerDao"%>
<%@page import="com.appointment.scheduling.consultants"%>
<%@page import="java.util.List"%>
<%@page import="com.appointment.scheduling.ConsultantDao"%>
<%@page import="com.appointment.scheduling.ConnectionDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Global Consult Ease</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/grey-style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Top Bar Start -->
        <div class="top-bar d-none d-md-block">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="top-bar-left">
                            <div class="text">
                                <i class="far fa-clock"></i>
                                <h2>8:00 - 17:00</h2>
                                <p>Mon - Fri</p>
                            </div>
                            <div class="text">
                                <i class="fa fa-phone-alt"></i>
                                <h2>+123 456 7890</h2>
                                <p>For Appointment</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="top-bar-right">
                            <div class="social">
                                <a href=""><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                <a href=""><i class="fab fa-linkedin-in"></i></a>
                                <a href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Bar End -->

        <!-- Nav Bar Start -->
        <div class="navbar navbar-expand-lg bg-dark navbar-dark">
            <div class="container-fluid">
                <a href="index.jsp" class="navbar-brand">Global<span>Consult</span>Ease</a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto">
                        <a href="home.jsp" class="nav-item nav-link">Home</a>
                        <a href="consultantList.jsp" class="nav-item nav-link">Consultants</a>
                        <a href="jobSeekerList.jsp" class="nav-item nav-link">Job Seeker</a>
                        <a href="availableList.jsp" class="nav-item nav-link">Availability</a>
                        <a href="reservations.jsp" class="nav-item nav-link active">Reservations</a>
                        <a style="background: black;" href="LogoutServlet" class="nav-item nav-link">Logout</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Nav Bar End -->


        <!-- Page Header Start -->
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Reservations</h2>
                    </div>
                    <div class="col-12">
                        <a href="">Home</a>
                        <a href="">Reservations</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Service Start -->
        <div class="service">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>What we do</p>
                </div>
                <div class="row">
                    <div class="container">
                        <div class="inner">
                                <div class="row">
                                        <div class="col-md-3">
					<h3>Create New User</h3>
					<form action="AddAppointmnetServlet" method="post">
                                            <div class="form-group">
                                                <label>Job Seeker</label> <br>
                                                        <select style="word-wrap: normal; width: 256px; height: 40px; border-color: #8f8c8c73; border-radius: 3px;" name="jsid" id=jsid">
                                                            <c:forEach var="temp" items="${SEEKER_DROP}">
                                                                <option value=${temp.id}>${temp.sname}</option>
							</c:forEach>
                                                          </select>
						</div>
                                            <div class="form-group">
                                                <label>Consultant</label> <br>
                                                        <select style="word-wrap: normal; width: 256px; height: 40px; border-color: #8f8c8c73; border-radius: 3px;" name="cid" id="cid">
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
                                                    <select style="word-wrap: normal; width: 256px; height: 40px; border-color: #8f8c8c73; border-radius: 3px;" name="contactBy" id=contactBy">
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
                </div>
            </div>
        </div>
        <!-- Service End -->


        <!-- Footer Start -->
        <div class="footer wow fadeIn" data-wow-delay="0.3s">
            <div class="container-fluid">
                <div class="container">
                    <div class="footer-info">
                        <a href="index.jsp" class="footer-logo">Global<span>Consult</span>Ease</a>
                        <h3>123 Street, New York, USA</h3>
                        <div class="footer-menu">
                            <p>+012 345 67890</p>
                            <p>info@example.com</p>
                        </div>
                        <div class="footer-social">
                            <a href=""><i class="fab fa-twitter"></i></a>
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-youtube"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                            <a href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                <div class="container copyright">
                    <div class="row">
                        <div class="col-md-6">
                            <p>&copy; <a href="#">Your Site Name</a>, All Right Reserved.</p>
                        </div>
                        <div class="col-md-6">
							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            <p>Designed By <a href="https://htmlcodex.com">HTML Codex</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        
        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
