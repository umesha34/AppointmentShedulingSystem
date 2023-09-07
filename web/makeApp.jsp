<%@page import="com.appointment.scheduling.consultantAvailablity"%>
<%@page import="com.appointment.scheduling.CADao"%>
<%@page import="com.appointment.scheduling.jobseekers"%>
<%@page import="java.util.List"%>
<%@page import="com.appointment.scheduling.JobSeekerDao"%>
<%@page import="com.appointment.scheduling.ConnectionDao"%>
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
        <link href="css/new-style.css" rel="stylesheet">
        <link href="css/tab-login.css" rel="stylesheet">

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
                                <h2>8:00 - 9:00</h2>
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
                        <a href="about.html" class="nav-item nav-link">About</a>
                        <a href="service.html" class="nav-item nav-link">Service</a>
                        <a href="price.html" class="nav-item nav-link">Price</a>
                        <a href="class.html" class="nav-item nav-link">Class</a>
                        <a href="team.html" class="nav-item nav-link">Trainer</a>
                        <a href="portfolio.html" class="nav-item nav-link">Pose</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Blog</a>
                            <div class="dropdown-menu">
                                <a href="blog.html" class="dropdown-item">Blog Grid</a>
                                <a href="single.html" class="dropdown-item">Blog Detail</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Contact</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Nav Bar End -->


        <!-- Page Header Start -->
<!--        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Price</h2>
                    </div>
                    <div class="col-12">
                        <a href="">Home</a>
                        <a href="">Price</a>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Page Header End -->


        <!-- Price Start -->
        <div class="login">
            <div class="container">
                <div style="margin-top: 80px" class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <h2>Make an Appointment</h2>
                </div>
<!--                <div class="row" style="justify-content: center;">
                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.0s">
                        <div class="box" style="background: #06BBCC">
                            <h1>Consultant Login</h1>
                            <form action="ConsultantLoginServlet" method="post">
                                    <p>Email</p>
                                    <input type="text" placeholder="Email" name="email" required>
                                    <p>Password</p>
                                    <input type="password" placeholder="Password" name="password"
                                            required> <input type="submit" value="Login">
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="box" style="background: #06BBCC">
                            <h1>Job Seeker Login</h1>
                            <form action="JobSeekerLoginServlet" method="post">
                                    <p>Email</p>
                                    <input type="text" placeholder="Email" name="semail" required>
                                    <p>Password</p>
                                    <input type="password" placeholder="Password" name="spassword"
                                            required> <input type="submit" value="Login">
                            </form>
                        </div>
                    </div>
                </div>-->
                <div class="login-wrap" style="min-height: 650px">
                    <div class="login-html">
                            
                            <div class="login-form">
                                    <div>
					<form action="AddAppointmentByIdServlet" method="post">
                                            <div class="group">
                                                <!--<label for="jsid" class="label">ID</label>-->
							<input id="jsid" style="border:none; color: #fff; padding:15px 20px; border-radius:25px; background:rgba(255,255,255,.1);" class="form-control" type="hidden" value=<%=jobseeker.getId()%>
								name="jsid" place-holder="jsid" required>
                                            </div>
                                            <div class="group">
							<input id="cid" style="border:none; color: #fff; padding:15px 20px; border-radius:25px; background:rgba(255,255,255,.1);" class="form-control" type="hidden" value=${CON_DATA.cid}
								name="cid" place-holder="jsid" required>
						</div>
                                            <div class="group">
                                                <label for="consultantName" class="label">Consultant Name</label>
                                                ${CON_DATA.consultantName}<input id="consultantName" style="border:none; color: #fff; padding:15px 20px; border-radius:25px; background:rgba(255,255,255,.1);" class="form-control" type="hidden" value=${CON_DATA.consultantName}
                                                            name="consultantName" place-holder="Consultant Name" required>
                                            </div>
                                            <div class="group">
                                                <label for="date" class="label">Date</label>
                                                ${CON_DATA.date}<input id="date" style="border:none; color: #fff; padding:15px 20px; border-radius:25px; background:rgba(255,255,255,.1);" class="form-control" type="hidden" value=${CON_DATA.date}
                                                            name="date" place-holder="Date" required>
                                                <label class="label">Available Time</label>${CON_DATA.ftime} - ${CON_DATA.ttime}
                                            </div>
                                            <div class="group">
                                                <label for="from" class="label">From</label>
                                                <input id="from" style="border:none; color: #fff; padding:15px 20px; border-radius:25px; background:rgba(255,255,255,.1);" class="form-control" type="time"
                                                            name="fromTime" place-holder="From" required>
                                            </div>
                                            <div class="group">
                                                <label for="to" class="label">To</label>
                                                <input id="to" style="border:none; color: #fff; padding:15px 20px; border-radius:25px; background:rgba(255,255,255,.1);" class="form-control" type="time"
								name="toTime" place-holder="To" required>
						</div>
                                               <div class="group">
                                               <label for="conntactBy" class="label">Contact By</label><br>
                                                    <select id="contactBy"" style="border:none; width: 309px; padding:15px 20px; border-radius:25px; background:rgba(255,255,255,.1);" name="contactBy" id=contactBy">
                                                        <option value="email">Email</option>
                                                        <option value="phone">Phone</option>
                                                    </select>
                                            </div>
                                            <div class="group">
						<button style="border:none; padding:15px 20px; color: #fff; border-radius:25px; background:rgba(255,255,255,.1);" type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                            <div class="foot-lnk">
                                                <a style="color: #fff;" href="home.jsp">Cancel</a>
                                            </div>
					</form>
                                            
                                    </div>
                            </div>
                    </div>
            </div>
            </div>
        </div>
        <!-- Price End -->
        
        
        <!-- Discount Start -->
        <div class="discount wow zoomIn" data-wow-delay="0.1s" style="margin-bottom: 90px;">
            <div class="container">
                <div class="section-header text-center">
                    <p>Awesome Discount</p>
                    <h2>Get <span>30%</span> Discount for all Classes</h2>
                </div>
                <div class="container discount-text">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. 
                    </p>
                    <a class="btn">Join Now</a>
                </div>
            </div>
        </div>
        <!-- Discount End -->


        <!-- Footer Start -->
        <div class="footer wow fadeIn" data-wow-delay="0.3s">
            <div class="container-fluid">
                <div class="container">
                    <div class="footer-info">
                        <a href="index.jsp" class="footer-logo">Global<span>Consult</span>Ease</a>
                        <h3>123 Street, Colombo</h3>
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
                            <p>&copy; <a href="#">Global Consult Ease</a>, All Right Reserved.</p>
                        </div>
                        <div class="col-md-6">
                            
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
