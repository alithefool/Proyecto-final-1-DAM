<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Coastline | Register</title>

<!-- Fonts -->
<!--<link rel="stylesheet"
	href="#">-->

<!-- Styles -->
<link rel="stylesheet" href="css/register-styles.css">
</head>
<body>
    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

	<div class="main">

             <!-- debug statement -->
    <% String status = (String) request.getAttribute("status"); %>
    <p>Status: <%= status %></p>
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
                                                        <div class="form-group">
								<label for="fname"><i
									class=""></i></label> <input
									type="text" name="fname" id="name" placeholder="Your First Name" required/>
							</div>
							<div class="form-group">
								<label for="lname"><i
									class=""></i></label> <input
									type="text" name="lname" id="name" placeholder="Your Last Name" required/>
							</div>
							<div class="form-group">
								<label for="email"><i class=""></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" required/>
							</div>
                                                        <div class="form-group">
								<label for="username"><i class=""></i></label>
								<input type="text" name="username" id="username"
									placeholder="Your Username" required/>
							</div>
							<div class="form-group">
								<label for="pass"><i class=""></i></label> <input
									type="password" name="password" id="pass" placeholder="Password" required/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class=""></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required/>
							</div>
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="" required/> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree with all statements in the <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/register1.jpeg" alt="register-image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/scripts.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="alert/dist/sweetalert.css">
              
        <script type="text/javascript">
            var status = '<%= request.getAttribute("status") %>';
            if(status !== null && status === "success"){
                swal("All Done.","You have created your account","success");
            }
        </script>




</body>
</html>