

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   



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



  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top" >
    <div class="container d-flex align-items-center">

      <h1  class="logo me-auto"><a href="CustomerHome.jsp">Home Chrome</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="CustomerHome.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="CustomerHome.jsp#contractor">Hire Contractor</a></li>
          <li><a class="nav-link scrollto" href="CustomerHome.jsp#expert">Book Meeting</a></li>
          <li><a class="nav-link   scrollto" href="CustomerHome.jsp#schemes">New Schemes</a></li>
          <li class="dropdown"><a href="CustomerHome.jsp"><span>Home Estimation</span> <i class="bi bi-chevron-down"></i></a>
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

<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<body>
	<sql:setDataSource
    var="myDS"
    driver="com.mysql.cj.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/HomeChrome"
    user="root" password="maida"
/>
<sql:query var="list_users" dataSource="${myDS}">
    SELECT id,Cname ,Cemail ,LCount ,price,HCount ,Rating FROM Contractors;
</sql:query>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Availible Contractors</h3>
			<hr>
			<br>
			<form action="ViewContractorServlet">
			<table class="table table-bordered"  align="center" cellpadding="5" cellspacing="5" border="1">
				<thead>
					<tr>
					
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Labour-Count</th>
						<th>Price-Rate</th>
						<th>Home-Count</th>
						<th>Rating</th>
						<th>Actions</th>
					</tr>
				</thead>
				
				<tbody>
					
		
	<c:forEach var="user" items="${list_users.rows}">
 			<tr style="color: #fff" bgcolor="#37517e">
 			 <td> <c:out value="${user.id}" /></td>
 			 
		   <td> <c:out value="${user.Cname}" /></td>
		   
		    <td><c:out value="${user.Cemail}" /></td>
		 
		    <td><c:out value="${user.Lcount}" /></td>
		    
		    <td><c:out value="${user.price}" /></td>
		 
		   <td> <c:out value="${user.Hcount}" /></td>
		 
		    <td><c:out value="${user.Rating}" /></td>
		   
		    <!-- <td><a href="HomeInfo?id=<c:out value='${user.id}'/>" >Hire</a></td> -->
		</tr>
 
	</c:forEach>
		
				</tbody>
			</table>
			</form>
		</div>
	</div>
</body>
</html>