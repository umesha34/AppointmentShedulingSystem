<%@page import="com.appointment.scheduling.consultants"%>
<%@page import="java.util.List"%>
<%@page import="com.appointment.scheduling.ConsultantDao"%>
<%@page import="com.appointment.scheduling.ConnectionDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
ConsultantDao consData = new ConsultantDao(ConnectionDao.getConnection());
List<consultants> consultant = consData.getAllConsultants();
request.setAttribute("CONS_LIST", consultant);
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
                        <a href="consultantList.jsp" class="nav-item nav-link active">Consultants</a>
                        <a href="jobSeekerList.jsp" class="nav-item nav-link">Job Seeker</a>
                        <a href="availableList.jsp" class="nav-item nav-link">Availability</a>
                        <a href="reservations.jsp" class="nav-item nav-link">Reservations</a>
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
                        <h2>Consultants</h2>
                    </div>
                    <div class="col-12">
                        <a href="">Home</a>
                        <a href="">Consultants</a>
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
                                            <h3>Create New Consultant</h3>
                                            <form action="AddConsultantServelet" method="post">
                                                <div class="form-group">
                                                        <label>Name</label> <input class="form-control" type="text"
                                                                name="consultantName" place-holder="Name" required>
                                                </div>
                                                <div class="form-group">
                                                        <label>Contact</label> <input class="form-control" type="text"
                                                                name="contact" place-holder="Contact" required>
                                                </div>
                                                <div class="form-group">
                                                        <label>Email</label> <input class="form-control" type="text"
                                                                name="email" place-holder="Email" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Password</label> <input class="form-control" type="password"
                                                                name="password" place-holder="Password" required>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                                <button type="reset" class="btn btn-primary">Reset</button>
                                            </form>
                                        </div>
                                        <div class="col-md-9">
                                            <h3>Consultants Information</h3>
                                            <table class="table">
                                                <thead class="bg-light">
                                                        <tr>
                                                                <th scope="col">Name</th>
                                                                <th scope="col">Email</th>
                                                                <th scope="col">Password</th>
                                                                <th scope="col">Contact</th>
                                                                <th scope="col">Action</th>
                                                        </tr>
                                                </thead>
                                                <tbody>
                                                        <c:forEach var="tempUser" items="${CONS_LIST}">
                                                                <tr>
                                                                        <td>${tempUser.consultantName }</td>
                                                                        <td>${tempUser.email }</td>
                                                                        <td>${tempUser.password }</td>
                                                                        <td>${tempUser.contact }</td>
                                                                        <td><a href="editUser.jsp?id=${tempUser.id }">Edit</a> <a
                                                                                href="DeleteUserServlet?id=${tempUser.id}">Delete</a</td>                                                                               
                                                                </tr>
                                                        </c:forEach>
                                                </tbody>
                                                </table>
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
