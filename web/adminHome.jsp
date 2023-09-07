<%@page import="com.appointment.scheduling.users"%>
<%@page import="com.appointment.scheduling.jobseekers"%>
<%@page import="com.appointment.scheduling.consultants"%>
<%@page import="com.appointment.scheduling.ConsultantDao"%>
<%@page import="java.util.List"%>
<%@page import="com.appointment.scheduling.consultantAvailablity"%>
<%@page import="com.appointment.scheduling.CADao"%>
<%@page import="com.appointment.scheduling.ConnectionDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
CADao conData = new CADao(ConnectionDao.getConnection());
List<consultantAvailablity> cavailability = conData.getAllAvailability();
request.setAttribute("CONST_LIST", cavailability);
%>

<%
ConsultantDao consData = new ConsultantDao(ConnectionDao.getConnection());
List<consultants> consultant = consData.getAllConsultants();
request.setAttribute("CONS_LIST", consultant);
%>

<%
users user = (users) session.getAttribute("logUser");
if (user == null) {
	response.sendRedirect("index.jsp");
}
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
                        <a href="home.jsp" class="nav-item nav-link active">Home</a>
                        <a href="consultantList.jsp" class="nav-item nav-link">Consultants</a>
                        <a href="jobSeekerList.jsp" class="nav-item nav-link">Job Seeker</a>
                        <a href="availableList.jsp" class="nav-item nav-link">Availability</a>
                        <a href="reservations.jsp" class="nav-item nav-link">Reservations</a>
                        <a style="background: black;" href="LogoutServlet" class="nav-item nav-link">Logout</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Nav Bar End -->


        <!-- Hero Start -->
        <div class="hero">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-sm-12 col-md-6">
                        <div class="hero-text"></div>
                        <h1>Your Path to</h1>
                        <h1>Global Opportunities</h1>
                        <p style="color:#fff">
                            Unlock international job prospects with ease. Schedule consultations online and empower your career journey with expert guidance at The Jobs Consultation Centre in Colombo.
                        </p>
                        <div class="hero-btn">
                            <a class="btn" href="login.jsp">Join Now</a>
                            <a class="btn" href="">Contact Us</a>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="hero-image">
                            <img src="img/new-working.png" alt="Hero Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- About Start -->
        <div class="about wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-5 col-md-6">
                        <div class="about-img">
                            <img src="img/consultant_6.png" alt="Image">
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6">
                        <div class="section-header text-left">
                            <p>Learn About Us</p>
                            <h2>Welcome to GlobalConsultEase</h2>
                        </div>
                        <div class="about-text">
                            <p>
                                Discover the heart of our mission and the essence of our dedication to job seekers like you. Get to know our passionate team of specialized job consultants who are here to guide you on your path to international opportunities. Dive into our story, values, and commitment to providing top-notch consultation services for a brighter future abroad.
                            </p>
                            <p>
                                Explore the roots of GlobalConsultEase and the difference we aim to make in your job-seeking journey. Learn about our expertise, availability, and how we can empower you to chase your dreams across borders. Together, we'll shape a prosperous tomorrow.
                            </p>
                            <a class="btn" href="aboutUs.jsp">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Service Start -->
        <div class="service">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>What we do</p>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.0s">
                        <div class="service-item">
                            <h3>Navigating Careers Worldwide</h3>
                            <p>
                                We provide expert guidance and consultation to help job seekers explore global opportunities with confidence.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="service-item active">
                            <h3>Your Passport to Overseas Success</h3>
                            <p>
                                Discover how our specialized consultants can open doors to exciting international job prospects.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="service-item">
                            <h3>Building Dreams Beyond Borders</h3>
                            <p>
                                Learn how we empower individuals to turn aspirations into reality through tailored job advice and support.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="service-item">
                            <h3>Customized Solutions for Your Career Journey</h3>
                            <p>
                                Explore how we create personalized strategies to address your unique career goals and ambitions.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.8s">
                        <div class="service-item">
                            <h3>Your Overseas Job Search Partner</h3>
                            <p>
                                Find out how we assist you every step of the way in your quest for meaningful employment abroad.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="1s">
                        <div class="service-item">
                            <h3>Efficiency, Expertise, and Excellence</h3>
                            <p>
                                Discover our commitment to providing efficient online scheduling and expert advice for your international career advancement.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->


        <!-- Class Start -->
        <div class="class">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>Our Sessions</p>
                    <h2>Available Consultants</h2>
                </div>
                <div class="row">
                    <div class="col-12">
                        <ul id="class-filter">
                            <li data-filter="*" class="filter-active">All Consultants</li>
                        </ul>
                    </div>
                </div>
                
                <div class="row class-container">
                    <c:forEach var="temp" items="${CONST_LIST}">
                    <div>
                        <div class="col-lg-4 col-md-6 col-sm-12 class-item filter-1 wow fadeInUp" data-wow-delay="0.0s">
                        <div class="class-wrap">
                            <div class="class-img">
                                <img src="img/consultant_7.png" alt="Image">
                            </div>
                            <div class="class-text">
                                <div class="class-teacher">
                                    <img src="img/user_${temp.cid}.jpg" alt="Image">
                                    <h3>${temp.email}</h3>
                                    <a href="makeApp.jsp?id=${temp.id}">+</a>
                                </div>
                                <h2>${temp.consultantName}</h2>
                                <div class="class-meta">
                                    <p><i class="far fa-calendar-alt"></i>${temp.date}</p>
                                    <p><i class="far fa-clock"></i>${temp.ftime} - ${temp.ttime}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </c:forEach>
                </div>
            </div>
        </div>
        <!-- Class End -->
        
        
        <!-- Discount Start -->
        <div class="discount wow zoomIn" data-wow-delay="0.1s">
            <div class="container">
                <div class="section-header text-center">
                    <p>Awesome Discount</p>
                    <h2>Get <span>30%</span> Discount for all Sessions</h2>
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
        
        <!-- Testimonial Start -->
        <div class="testimonial wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="section-header text-center">
                    <p>Testimonial</p>
                    <h2>Our Client Say!</h2>
                </div>
                <div class="owl-carousel testimonials-carousel">
                    <div class="testimonial-item">
                        <div class="testimonial-img">
                            <img src="img/consultant_3.png" alt="Image">
                        </div>
                        <div class="testimonial-text">
                            <p>
                                Lorem ipsum dolor sit amet consec adipis elit. Etiam accums lacus eget velit tincid, quis suscip justo dictum.
                            </p>
                            <h3>Customer Name</h3>
                            <h4>Profession</h4>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <div class="testimonial-img">
                            <img src="img/testimonial-2.jpg" alt="Image">
                        </div>
                        <div class="testimonial-text">
                            <p>
                                Lorem ipsum dolor sit amet consec adipis elit. Etiam accums lacus eget velit tincid, quis suscip justo dictum.
                            </p>
                            <h3>Customer Name</h3>
                            <h4>Profession</h4>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <div class="testimonial-img">
                            <img src="img/testimonial-3.jpg" alt="Image">
                        </div>
                        <div class="testimonial-text">
                            <p>
                                Lorem ipsum dolor sit amet consec adipis elit. Etiam accums lacus eget velit tincid, quis suscip justo dictum.
                            </p>
                            <h3>Customer Name</h3>
                            <h4>Profession</h4>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <div class="testimonial-img">
                            <img src="img/testimonial-4.jpg" alt="Image">
                        </div>
                        <div class="testimonial-text">
                            <p>
                                Lorem ipsum dolor sit amet consec adipis elit. Etiam accums lacus eget velit tincid, quis suscip justo dictum.
                            </p>
                            <h3>Customer Name</h3>
                            <h4>Profession</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->

        <!-- Team Start -->
        <div class="team">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>Our Consultants</p>
                    <h2>Expert Consultants</h2>
                </div>
                <div class="row">
                    <c:forEach var="tempUser" items="${CONS_LIST}">
                        <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.0s">
                            <div class="team-item">
                                <div class="team-img">
                                    <img src="img/user_${tempUser.id }.jpg" alt="Image">
                                    <div class="team-social">
                                        <a href=""><i class="fab fa-twitter"></i></a>
                                        <a href=""><i class="fab fa-facebook-f"></i></a>
                                        <a href=""><i class="fab fa-linkedin-in"></i></a>
                                        <a href=""><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                                <div class="team-text">
                                    <h2>${tempUser.consultantName }</h2>
                                    <p>${tempUser.email }</p>
                                    <p>${tempUser.contact }</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Team End -->

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
