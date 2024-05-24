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
    <% String status = (String) request.getAttribute("status"); %>
    
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						
					
						<form method="post" action="register" class="pxl-5 register-form"
							id="register-form">

							<h2 class="form-title">Sign up</h2>
                                                        
							<div class="form-group">
								<label for="fname"><i
									class=""></i></label> <input
									type="text" name="fname" id="name" placeholder="Your First Name:" required/>
							</div>
							<div class="form-group">
								<label for="lname"><i
									class=""></i></label> <input
									type="text" name="lname" id="name" placeholder="Your Last Name:" required/>
							</div>
							<div class="form-group">
								<label for="email"><i class=""></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email:" required/>
							</div>
                                                        <div class="form-group">
								<label for="username"><i class=""></i></label>
								<input type="text" name="username" id="username"
									placeholder="Your Username:" required/>
							</div>
							<div class="form-group">
								<label for="pass"><i class=""></i></label> <input
									type="password" name="password" id="pass" placeholder="Password:" required/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class=""></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Confirm Password:" required/>
							</div>
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="" required/> <label for="agree-term"
									class="label-agree-term">I
									agree with all statements in the <a href="#" class="term-service">Terms
										of service</a></label>
							</div>

							<div class="mx-3 form-group form-button">
								
								<button class=" form-submit btn btn-primary btn-md rounded" name="signup" id="signup" type="submit">Register</button>
						</div>

						
						</form>
					</div>
					<div class="signup-image mx-5">
						<figure>
							<img class="rounded" src="images/register1.jpeg" alt="register-image">
						</figure>
						

						<div class="mx-5 form-group form-button">
							
							<a href="login.jsp" class="">
							<button class=" rot-y-180 mx-5 btn btn-primary btn-md signup-image-link form-submit rounded" 
							name="signup" id="signup" type="submit">I am already a member</button></a>
						</div>
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