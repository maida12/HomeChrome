<%
	if(session.getAttribute("name") == null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Home Chrome - Expert</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha - v4.7.1
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="expert.jsp">Home Chrome</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

       <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#Meeting">Update Meeting Time</a></li>
          <li><a class="nav-link scrollto" href="#Meeting">View Meetings</a></li>
          <li><a class="nav-link scrollto" href="#Profile">Update Profile</a></li>
          <li><a class="nav-link scrollto" href="#Profile">View Profile</a></li>
           <li><a class="nav-link scrollto" href="#footer">Contact</a></li>
          <li><a class="getstarted scrollto" href="login.jsp">Log out</a></li>
          <li><a class="nav-link scrollto" href=""><%= session.getAttribute("name") %></a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
           <h1>Better Solutions For Your Home</h1>
          <h2>We are team of software engineers making your home building easier for you</h2>
          <div class="d-flex justify-content-center justify-content-lg-start">
            <a href="#homes" class="btn-get-started scrollto">Get Started</a>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">


    
        <!-- ======= View Homes Section ======= -->
    <section id="Meeting" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Meeting</h2>
          <p>A section for updating meeting time and view meetings arranged.</p>
        </div>

        <div class="row">
          <div class="col-xl-6 col-md-12 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4><a href="UpdateTimeSlot.jsp">Update Meet Time</a></h4>
              <p>Expert updates the days he/she is available for meet with customers.</p>
            </div>
          </div>

          <div class="col-xl-6 col-md-12 d-flex align-items-stretch mt-4 mt-xl-0" data-aos="zoom-in" data-aos-delay="400">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-layer"></i></div>
              <h4><a href="viewMeetings.jsp">View the Arrange Meetings</a></h4>
              <p>Views the all meetings with its customers on the given day to guide its customers .</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End of Meeting Section -->
    
    
        <!-- ======= Profile Section ======= -->
    <section id="Profile" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Profile</h2>
          <p> Expert can view the Profile as well as can update profile .</p>
        </div>

        <div class="row">
          <div class="col-xl-6 col-md-12 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4><a href="ViewExpertProfile.jsp">View Profile</a></h4>
              <p>Expert can view the basic information regarding to profile.</p>
            </div>
          </div>
        
            <div class="col-xl-6 col-md-12 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4><a href="ExpertUpdateProfile.jsp">Update Profile</a></h4>
              <p>Expert can update the basic information regarding to profile.</p>
            </div>
          </div>

        </div>
          
         
          


        </div>

      </div>
    </section><!-- End of Profile Section -->
   
  </main><!-- End #main -->

 <!-- ======= Footer ======= -->
  <footer id="footer">

      

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-6 col-md-6 footer-contact">
            <h3>Home Chrome</h3>
            <p>
              123 xyz Street <br>
              Lahore, <br>
              Pakistan <br><br>
              <strong>Phone:</strong> 0312-1234567<br>
              <strong>Email:</strong> homechrome@example.com<br>
            </p>
          </div>


          <div class="col-lg-6 col-md-6 footer-links">
            <h4>Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="ExpertUpdateProfile.jsp">Update Profile</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="VoewExpertProfile.jsp">View Profile</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="UpdateTimeSlot.jsp">Update Meeting Time</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="viewMeetings.jsp">View Meetings</a></li>
            </ul>
          </div>

        </div>
      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Home Chrome</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="">Team 6 SDA Section A</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->

  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>