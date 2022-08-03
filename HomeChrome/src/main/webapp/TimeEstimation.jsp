<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Cost Estimation</title>
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
  <link href="assets/css/CostEstimation.css" rel="stylesheet">

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



<br>
	<br>
	<br>
	<br>
	<br>



<body style="background-color:#87CEEB">



<h1 align ="center"  style="color:darkblue">Enter Your House Details </h1><br><br>

<form action="TimeEstimationServlet"  method="post" >
<b>
<table  border="0" align="center">
<tr>
<td> <p>Please Select Type of Construction</p></td>
<td><label class="container">Grey Structure
  <input  type="radio"   value="1" required="required"  name="radio">
  <span class="checkmark"></span>
</label>
</td>
<td>
<label class="container">Finishing(Turnkey)
  <input type="radio"  value="2" name="radio" >
  <span class="checkmark"></span>
</label></td>
</tr>
<tr>
<td><p>Please Select How many Floors for the Structure</p></td>
<td><label class="container">Single Story
  <input type="radio"   value="1" name="radio1" required="required">
  <span class="checkmark"></span>
</label>
</td>
<td>
<label class="container">Double Story
  <input type="radio"  value="2" name="radio1">
  <span class="checkmark"></span>
</label></td>
</tr>
<tr> <td></td></tr>
<tr>
<td></td>
 <td><input  class="button1"  type="submit" value="Submit"></td></tr>
 <tr> <td></td></tr>
<tr>

<td> <h4 style="color:darkblue">The Approximate Time Will Be:</h4></td>
<td><h4><span style="color:darkblue"> ${result}   Months</span></h4></td>
</tr>
</b>
 </table>

</form>



    
    

</body>
</html>