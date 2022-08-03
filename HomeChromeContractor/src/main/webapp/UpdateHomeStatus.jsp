<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="assets/css/login.css">
</head>
<body>

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Update Home Status</h2>
						<form method="post" action="UpdateHomeStatusServlet" class="register-form"
							id="login-form">
							<br><br>
							<div class="form-group" style="border: 6px solid #ccc;">
								<label for="home"><i
									class="zmdi zmdi-hotel"></i></label> <input
									type="text" name="home" id="home" required="required" pattern="[0-9]+"
									placeholder="New Home Status" />
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Update" />
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>