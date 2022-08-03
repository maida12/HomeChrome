<%@page import="java.sql.PreparedStatement"%>
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
PreparedStatement pst = null;
String year = null;
%>



<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Homes Built - Admin</title>
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
          <li><a class="getstarted scrollto" href=""><%= session.getAttribute("name") %></a></li>
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
          <li>Homes By Year</li>
        </ol>
        <h2>Homes By Year</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <section class="total-homes-built">
      <div class="container">

        <head>
<title>Details of homes built</title>
<link href="assets/css/table.css" rel="stylesheet">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">

                    <div>
                            
				<a class="navbar-brand"> Welcome to Homes by Year Page </a>
			</div>
			
		</nav>
	</header>   
        <br><br>
        
        
        <!--method="post" action="homesByYears" class="register-form"id="login-form"-->
        <form href="homesByYears.jsp">
                    <div class="form-group">
                        <h5>Please Enter year to search by it:</h5>
                        <br>
                             <input style="border: 2px solid orange; border-radius: 4px;"
                                    type="text" name="year" id="year" required="required"
                                    placeholder="Enter Year" />
                    </div>
                    <br>
                    <div class="form-group form-button">
                           <input style="border-radius: 10px; background-color: #5A7EEE; color: white; padding: 10px 24px;" type="submit" value="Search By year" name="year" />
                    </div>
            
	</form>
    
    
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Homes For Selected Year</h3>
			<hr>
			<br>
			<table class="table table-bordered"  align="center" cellpadding="5" cellspacing="5" border="1" style="width: 100%">
				<thead>
					<tr style="color: #fff" bgcolor="#00B3D3">
					
						<th>Customer ID</th>
						<th>Customer Name</th>
						<th>Home ID</th>
                                                <th>Land Size</th>
                                                <th>Location</th>
						<th>Home Floors</th>
						<th>Home Status</th>
                                                <th>Year</th>
                                                <!--<th>Actions</th>-->
					</tr>
				</thead>
				
				<tbody>
					

		<%
		try{ 
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		//statement=connection.createStatement();
		//String sql ="select * from homes where year = ?";
                
                pst = connection.prepareStatement("select C.id, C.Uname, H.id, H.LandSize, H.Location, H.Floors, H.status, H.year from Customers as C join home as H on C.HomeID = H.id where year = ?");
			//pst.setString(1, uemail);
			//pst.setString(2, upassword);
                year = request.getParameter("year");
                //year = "2019";
                System.out.println(year);
                pst.setString(1, year);
                
		
		resultSet = pst.executeQuery();
		while(resultSet.next()){
		%>
		<tr style="color: #000000" bgcolor="#D2F3F9">
		
		<th><%=resultSet.getString("id") %></th>
		<th><%=resultSet.getString("uname") %></th>
		<th><%=resultSet.getString("id") %></th>
		<th><%=resultSet.getString("LandSize") %></th>
                <th><%=resultSet.getString("Location") %></th>
                <th><%=resultSet.getString("Floors") %></th>
                <th><%=resultSet.getString("status") %></th>
		<th><%=resultSet.getString("year") %></th>
		<!--<th><a href="HomeInfo.jsp">Hire</a></th>-->
		
		</tr>
		
		<% 
		}
		} catch (Exception e) {
			e.printStackTrace();
			}
			%>
				</tbody>
			</table>
		</div>
	</div>                                               
                                
    </section>

  </main><!-- End #main -->

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