<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "HomeChrome";
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





<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



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
  <link href="assets/css/viewContractor.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Home Chrome - v4.7.1
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>


  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top" >
    <div class="container d-flex align-items-center">

      <h1  class="logo me-auto"><a href="index.html">Home Chrome</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="CustomerHome.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="CustomerHome.jsp#contractor">Hire Contractor</a></li>
          <li><a class="nav-link scrollto" href="CustomerHome.jsp#expert">Book Meeting</a></li>
          <li><a class="nav-link   scrollto" href="CustomerHome.jsp#schemes">New Schemes</a></li>
          <li class="dropdown"><a href="#"><span>Home Estimation</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Time Estimation</a></li>
              <li><a href="#">Cost Estimation</a></li>
            </ul>
          </li>
          <li><a class="getstarted scrollto" href="logout">Log out</a></li>
          <li><a class="nav-link scrollto" href=""><%= session.getAttribute("name") %></a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

	<br>
	<br>
	<br>
	<br>
	<br> 



	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Latest Schemes</h3>
			<hr>
			<br>
			<table class="table table-bordered"  align="center" cellpadding="5" cellspacing="5" border="1">
				<thead>
					<tr>
					
						<th>ID</th>
						<th>Location</th>
						<th>Discription</th>
						<th>Price</th>
					</tr>
				</thead>
				
				<tbody>
					

		<%
		try{ 
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		statement=connection.createStatement();
		String sql ="SELECT * FROM Schemes";
		
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>
		<tr style="color: #fff" bgcolor="#37517e">
		
		<th><%=resultSet.getString("id") %></th>
		<th><%=resultSet.getString("Location") %></th>
		<th><%=resultSet.getString("Description") %></th>
		<th><%=resultSet.getString("Price") %></th>
		
		
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
</body>
</html>