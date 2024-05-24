<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Coastline | Login</title>

<!-- Font -->
<link rel="stylesheet" href="#">

<!-- Main css -->
<link rel="stylesheet" href="css/login-styles.css">
</head>
<body>
	
	

    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img class="rounded" src="images/login1.jpeg" alt="login-image">
						</figure>
						<a href="registration.jsp" class=" rot-y-180 mx-5 btn btn-primary btn-md">Create a
							Coastline Account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Log-in</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class=""></i></label> <input
									type="text" name="username" id="username"
									placeholder="Username:" required/>
							</div>
							<div class="form-group">
								<label for="password"><i class=""></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password:" required/>
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="" /> <label for="remember-me"
									class="agree-term">Remember me</label>
							</div>
							<div class="form-group form-button">
								
									<button class="btn btn-primary btn-xl rounded" name="signin" id="signin" type="submit">Log in</button>
							</div>
						</form>
						
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
            if(status !== null && status === "failed"){
                swal("Uh Oh...","That pair doesn't work","error");
            }
        </script>

</body>
</html>