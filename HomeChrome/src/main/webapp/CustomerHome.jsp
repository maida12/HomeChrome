<%
	if(session.getAttribute("name") == null){
		System.out.println("heheh");
		response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Home Chrome</title>
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
  * Template Name: Home Chrome - v4.7.1
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="CustomerHome.jsp">Home Chrome</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#contractor">Hire Contractor</a></li>
          <li><a class="nav-link scrollto" href="#expert">Book Meeting</a></li>
          <li><a class="nav-link   scrollto" href="#schemes">New Schemes</a></li>
          <li class="dropdown"><a href="#"><span>Home Estimation</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="TimeEstimation.jsp">Time Estimation</a></li>
              <li><a href="CostEstimation.jsp">Cost Estimation</a></li>
            </ul>
          </li>
          <li><a class="getstarted scrollto" href="logout">Log out</a></li>
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
          <h2>We are team of software engineers making your home building in easier for you</h2>
          <div class="d-flex justify-content-center justify-content-lg-start">
            <a href="#contractor" class="btn-get-started scrollto">Get Started</a>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">


    <!-- ======= Hire Contractor Section ======= -->
      <section id="contractor" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Hire Contractor</h2>
        </div>
        
        <div class="row gy-4">

          <div class="col-lg-6 " data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4 class="title"><a href="ViewContractors1.jsp">View Contractors</a></h4>
              <p class="description">View all the exceptional contractors out there.</p>
            </div>
          </div>

          <div class="col-lg-6 "data-aos="zoom-in" data-aos-delay="100" >
           <div class="icon-box">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="SearchContractor.jsp">Search Contractors</a></h4>
              <p class="description">Search Contractor By Name and rating.</p>
            </div>
          </div>
          </div>
			
      </div>
    </section><!-- End Hire ContractorSection -->

 



    <!-- ======= Book Meeting With Expert Section ======= -->
    <section id="expert" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Book Meeting With Expert</h2>
        </div>
        
        <div class="row gy-4">

          <div class="col-lg-6 " data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4 class="title"><a href="ViewExpert.jsp">View Experts</a></h4>
              <p class="description">View all the exceptional experts out there.</p>
            </div>
          </div>

          <div class="col-lg-6 "data-aos="zoom-in" data-aos-delay="100" >
           <div class="icon-box">
              <div class="icon"><i class="bx bx-briefcase"></i></div>
              <h4 class="title"><a href="SearchExpert.jsp">Search Experts</a></h4>
              <p class="description">Search Experts By Name or rating.</p>
            </div>
          </div>
          </div>

          
        
      </div>
    </section><!-- End Book Meeting With Expert Section -->

 
 
 <!--  Schemes Section -->
 
  <section id="schemes" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Explore New Schemes</h2>
        </div>
         <div class="row gy-4 d-flex justify-content-center  ">

          <div class="col-lg-10 " data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4 class="title"><a href="ViewSchemes.jsp">View Schemes </a></h4>
              <p class="description"> View all the latest home schemes which is exactly for you</p>
            </div>
          </div>
        </div>
        
        </div>
  </section>
  
  <!--  End Schemes Section -->



  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Arsha</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
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