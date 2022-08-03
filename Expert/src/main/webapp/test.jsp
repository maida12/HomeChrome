<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "homechrome";
String userId = "root";
String password = "maida";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html lang="en">

<head>
     <link rel="stylesheet" href="ExpertUpdateProfile.css">
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Block Users - Admin</title>
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
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="admin.jsp">Home Chrome</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="admin.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="#footer">Services</a></li>
          <li><a class="nav-link scrollto" href="#footer">Contact</a></li>
          <li><a class="getstarted scrollto" href="#about"><%= session.getAttribute("name") %></a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="admin.jsp">Home</a></li>
          <li>Block Users</li>
        </ol>
        <h2>Block Users</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <section class="total-homes-built">
      <div class="container">
          
          
        <head>
<title>Details of users</title>
<link href="assets/css/table.css" rel="stylesheet">
</head>
<body>
    
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">

                    <div>
                            
				<a class="navbar-brand"> Welcome to the Block Users Page </a>
			</div>
                    <!--
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
                    -->
		</nav>
	</header>
 <!--   
	<br>

	<div class="row">


		<div class="container">
			<h3 class="text-center">List of Homes</h3>
			<hr>
                        
			<div class="container text-left">

                                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New User</a>

			</div>
                        
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Customer</th>
						<th>Contractor</th>
						<th>Location</th>
						<th>Home Floors</th>
						<th>Land Size</th>
                                                <th>Total Cost</th>
                                                <th>Home Status</th>
                                                <th>Actions</th>
                                                
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="home" items="${listHomes}">

						<tr>
                                                        <td><c:out value="${home.customer}" /></td>
							<td><c:out value="${home.contractor}" /></td>
							<td><c:out value="${home.location}" /></td>
                                                        <td><c:out value="${home.homeFloors}" /></td>
                                                        <td><c:out value="${home.landSize}" /></td>
                                                        <td><c:out value="${home.totalCost}" /></td>
                                                        <td><c:out value="${home.homeStatus}" /></td>
 
							<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
    
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
        
      </div>
                                
    -->                            
 <div class="container">
  <section id="content">
    <form action="ExpertUpdateProfileServlet">
      <h1>Update Expert Profile</h1>
      <div>
        <input type="text" name= "Name"  placeholder="Username"  id="username" />
      </div>
      
      <div>
        <input type="text" name= "password"  placeholder="Password" id="password" />
      </div>
           <div>
        <input type="text" name= "meetpertime"  placeholder="Price Per Meet" id="meetpertime" />
      </div>
      <div>
        <input type="text" name= "experience"  placeholder="Experience" id="experience" />
      </div>
      
          
      <div>
        <input type="submit" value="Done" />
        <a href="#">Lost your password?</a>
      </div>
    </form><!-- form -->

 <!-- ======= Footer ======= -->
  <footer id="footer">

      
   <div class="footer-top" style="background-color: #EFEFEF;">
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
              <li><i class="bx bx-chevron-right"></i> <a href="total-homes-built.jsp">View Homes Info</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="homesByYears.jsp">Homes Built By Year</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="blockUsers.jsp">Block User</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="manageSchemes.jsp">Manage Schemes</a></li>
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