<%-- 
    Document   : visitor-index
    Created on : May 15, 2024, 6:21:53 PM
    Author     : cerrchus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Coastline- DCT</title>

<!--Font Awesome icons-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>

<script src="js/script.js"></script>

<!-- css -->
<link href="css/visitor-index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<header class="header" id="header">
	<!-- Navigation-->
	<!-- nav-2 -->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top container"
		id="mainNav">
                    <a class="navbar-brand" href="#page-top"><img src="images/logoBeta.png" alt="Coastline Logo" width="300px" height="150px"/></a>

                    <div class="menu collapse navbar-collapse" id="navbarResponsive">
                            <ul class="list navbar-nav ms-auto">

								<li class="nav-item mx-0 mx-lg-1"><a id="logout"
									class=" list-link nav-link py-3 px-0 px-lg-3 rounded" href="Logout"><%=session.getAttribute("username")%></a></li>
								

                                    <li class="nav-item mx-0 mx-lg-1">
                                        <button class="list-link btn place-items-center" id="theme-toggle-btn">
                                            <i class=" light-mode list-link nav-link py-3 px-0 px-lg-3">light</i>
                                            <i class=" dark-mode list-link nav-link py-3 px-0 px-lg-3">dark</i>
                                        </button></li>
                                    <li class="nav-item mx-0 mx-lg-1"><a

                                            class="list-link nav-link py-3 px-0 px-lg-3 rounded" href="#">Contact</a></li>

                                    <li class="nav-item mx-0 mx-lg-1"><a
											
                                            class="list-link nav-link py-3 px-0 px-lg-3 rounded" href="#">FAQ</a></li>

                    </div>
					<div class="list list-right">
						<button class="btn place-items-center screen-lg-hidden menu-toggle-icon" id="menu-toggle-icon" >
							<div class="menu-close">
								<div class="bar1"></div>
								<div class="bar2"></div>
								<div class="bar3"></div>
							</div>
						</button>
                    </div>
	</nav>
</header>
<main>
	<!-- Search Section-->
	<section class="page-section" id="search">
		<div class="container">
			<!--Heading-->
			<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Coastline</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Search Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7 fancy-order">
					
					<form id="searchForm" method="post" action="search">
						<!-- search input-->
						<div class="form-floating mb-3 ">
							<div class="headline fancy-border">
							<input class="form-control rounded" id="search" type="text" name="cardName"
								placeholder="//" data-sb-validations="required" />
                                                        <!--This is the card search query-->
                                                        <label for="name"></label>
							<div class="invalid-feedback">A
								field is required.</div>
						    </div>
						</div>
						
						
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<!-- Submit Button-->
                                                <button class="btn btn-primary btn-xl rounded" id="submitButton" type="submit">Send</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<div id="dash" class="footer text-center">
		<div class="container">
			<div class="row footer-row">
				<div class="decks-menu col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">My Decks</h4>
					
				</div>
				<div class="search-menu col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Advanced Search</h4>
				</div>
				<div class="games-menu col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">My Games</h4>
				</div>
			</div>
		</div>
	</div>
</main>

	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row footer-row">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Your Local Time</h4>
					<p class="lead mb-0">
						<%= request.getAttribute("localDateTime") %>
					</p>
				</div>
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Coastline Community</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> 
                                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> 
                                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Coastline</h4>
					<p class="lead mb-0">
						Coastline: Deck Creation Tool's <a href="https://github.com/alithefool/Proyecto-final-1-DAM/tree/main/Coastline-DCT-1.01#readme">Documentation</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Coastline 2024</small>
		</div>
	</div>
 
	<!--JS-->
	<script src="js/scripts.js"></script>

        
      

</body>
</html>

