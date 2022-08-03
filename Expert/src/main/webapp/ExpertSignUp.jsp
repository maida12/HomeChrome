<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up For Expert</title>


<link rel="stylesheet" href="ExpertSignUp.css">
</head>
<body>


	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign Up For EXPERT</h2>
					
						<form action="ExpertSignUpServlet" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" required="required" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" required="required" placeholder="Your Email"  />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" required="required" placeholder="Password" />
							</div>
							
                                                         <div class="form-group">
								<label for="price_meet"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="number" name="price_meet" id="price_meet" required="required"
									placeholder="Price Per Meet" />
							</div>
							<div class="form-group">
								<label for="Experience"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="Experience" id="Experience" required="required"
									placeholder="Experience" />
							</div>
                                                    <span style="color:red;">${Error}</span>
							<div  >
								<input type="submit" name="signup" id="signup"
									 value="Register" class="form-submit" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj2iAABF2QiCjruuZ4XAZgpRf9y5izi3y3D27Vs0JalYEg6_U1LJO_Pla6hV7sOO49bxE&usqp=CAU" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>

</body>
</html>