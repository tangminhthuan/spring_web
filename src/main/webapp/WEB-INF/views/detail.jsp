<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>SShop - Bootstrap Shop Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="/resources/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/resources/css/style.css" rel="stylesheet">
</head>

<body>
	<!-- Topbar Start -->
	<div class="container-fluid">
		<div class="row bg-secondary py-2 px-xl-5">
			<div class="col-lg-6 d-none d-lg-block">
				<div class="d-inline-flex align-items-center">
					<a class="text-dark" href="">FAQs</a> <span class="text-muted px-2">|</span>
					<a class="text-dark" href="">Help</a> <span class="text-muted px-2">|</span>
					<a class="text-dark" href="">Support</a>
				</div>
			</div>
			<div class="col-lg-6 text-center text-lg-right">
				<div class="d-inline-flex align-items-center">
					<a class="text-dark px-2" href=""> <i class="fab fa-facebook-f"></i>
					</a> <a class="text-dark px-2" href=""> <i class="fab fa-twitter"></i>
					</a> <a class="text-dark px-2" href=""> <i
						class="fab fa-linkedin-in"></i>
					</a> <a class="text-dark px-2" href=""> <i class="fab fa-instagram"></i>
					</a> <a class="text-dark pl-2" href=""> <i class="fab fa-youtube"></i>
					</a>
				</div>
			</div>
		</div>
		<div class="row align-items-center py-3 px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a href="" class="text-decoration-none">
					<h1 class="m-0 display-5 font-weight-semi-bold">
						<span class="text-primary font-weight-bold border px-3 mr-1">S</span>Shop
					</h1>
				</a>
			</div>
			<div class="col-lg-6 col-6 text-left">
				<form action="">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for products">
						<div class="input-group-append">
							<span class="input-group-text bg-transparent text-primary">
								<i class="fa fa-search"></i>
							</span>
						</div>
					</div>
				</form>
			</div>
			<div class="col-lg-3 col-6 text-right">
				<a href="/cart/view" class="btn border"> <i
					class="fas fa-shopping-cart text-primary"></i> <span class="badge">${cartNumber }</span>
				</a>
			</div>
		</div>
	</div>
	<!-- Topbar End -->
<div class="container-fluid mb-5">
		<div class="row border-top px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a
					class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100"
					data-toggle="collapse" href="#navbar-vertical"
					style="height: 65px; margin-top: -1px; padding: 0 30px;">
					<h6 class="m-0">Categories</h6> <i
					class="fa fa-angle-down text-dark"></i>
				</a>
				<nav
					class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light"
					id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
					<div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
						<a href="/shop/0" class="nav-item nav-link">All category</a>
						<c:forEach var="item" items="${cs }">
							<a href="/shop/0?category=${item.id}" class="nav-item nav-link">${item.name }</a>
						</c:forEach>
					</div>
				</nav>
			</div>
			<div class="col-lg-9">
				<nav
					class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
					<a href="" class="text-decoration-none d-block d-lg-none">
						<h1 class="m-0 display-5 font-weight-semi-bold">
							<span class="text-primary font-weight-bold border px-3 mr-1">S</span>Shop
						</h1>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-between"
						id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0">
							<a href="/" class="nav-item nav-link active">Home</a> <a
								href="/shop/0" class="nav-item nav-link">Shop</a>
						</div>
							<%= request.getAttribute("user") != null ? "<div class='navbar-nav ml-auto py-0'><a href='/logout' class='nav-item nav-link'>Logout</a></div>" : "<div class='navbar-nav ml-auto py-0'><a href='/login' class='nav-item nav-link'>Login</a> <a href='/registrator' class='nav-item nav-link'>Register</a></div>"%>
					</div>
				</nav>
				<div id="header-carousel" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active" style="height: 410px;">
							<img class="img-fluid" src="/resources/img/IPdemo.jpg"
								alt="Image">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h4 class="text-light text-uppercase font-weight-medium mb-3">10%
										Off Your First Order</h4>
									<h3 class="display-4 text-white font-weight-semi-bold mb-4">Enjoy the internet with the latest phone</h3>
									<a href="" class="btn btn-light py-2 px-3">Shop Now</a>
								</div>
							</div>
						</div>
						<div class="carousel-item" style="height: 410px;">
							<img class="img-fluid" src="/resources/img/samsungdemo.jpg"
								alt="Image">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h4 class="text-light text-uppercase font-weight-medium mb-3">10%
										Off Your First Order</h4>
									<h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable
										Price</h3>
									<a href="" class="btn btn-light py-2 px-3">Shop Now</a>
								</div>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#header-carousel"
						data-slide="prev">
						<div class="btn btn-dark" style="width: 45px; height: 45px;">
							<span class="carousel-control-prev-icon mb-n2"></span>
						</div>
					</a> <a class="carousel-control-next" href="#header-carousel"
						data-slide="next">
						<div class="btn btn-dark" style="width: 45px; height: 45px;">
							<span class="carousel-control-next-icon mb-n2"></span>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>



	<!-- Page Header Start -->
	<div class="container-fluid bg-secondary mb-5">
		<div
			class="d-flex flex-column align-items-center justify-content-center"
			style="min-height: 300px">
			<h1 class="font-weight-semi-bold text-uppercase mb-3">Shop
				Detail</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="/">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Shop Detail</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->


	<!-- Shop Detail Start -->
	<div class="container-fluid py-5">
		<div class="row px-xl-5">
			<div class="col-lg-5 pb-5">
				<img src="/resources/img/${p.getImage()}" width="100%" />
			</div>

			<div class="col-lg-7 pb-5">
				<h3 class="font-weight-semi-bold">${p.name }</h3>
				<div class="d-flex mb-3">
					<div class="text-primary mr-2">
						<small class="fas fa-star"></small> <small class="fas fa-star"></small>
						<small class="fas fa-star"></small> <small
							class="fas fa-star-half-alt"></small> <small class="far fa-star"></small>
					</div>
					<small class="pt-1">(50 Reviews)</small>
				</div>
				<h3 class="font-weight-semi-bold mb-4">$${p.price }</h3>
				<p class="mb-4">${p.detail}.</p>
				<div class="d-flex align-items-center mb-4 pt-2">
					<form action="/cart/add/${p.id }">
						<div class="input-group quantity mr-3" style="width: 130px;">
							<div class="input-group-btn">
								<button class="btn btn-primary btn-minus a"  onclick="(function (){document.querySelector('.quantity').querySelector('.quantity').value = parseInt(document.querySelector('.quantity').querySelector('.quantity').value) - 1;})()">
									<i class="fa fa-minus"></i>
								</button>
							</div>
							<input type="text" class="form-control bg-secondary text-center quantity"
								value="1" name="quantity">
							<div class="input-group-btn">
								<button class="btn btn-primary btn-plus a"  onclick="(function (){document.querySelector('.quantity').querySelector('.quantity').value = parseInt(document.querySelector('.quantity').querySelector('.quantity').value) + 1;})()">
									<i class="fa fa-plus"></i>
								</button>
							</div>
						</div>
						<input type="hidden" value="detail/${p.id }" name="url"/>
						<button class="btn btn-primary px-3">
							<i class="fa fa-shopping-cart mr-1"></i> Add To Cart
						</button>
					</form>
				</div>
				<div class="d-flex pt-2">
					<p class="text-dark font-weight-medium mb-0 mr-2">Share on:</p>
					<div class="d-inline-flex">
						<a class="text-dark px-2" href=""> <i
							class="fab fa-facebook-f"></i>
						</a> <a class="text-dark px-2" href=""> <i class="fab fa-twitter"></i>
						</a> <a class="text-dark px-2" href=""> <i
							class="fab fa-linkedin-in"></i>
						</a> <a class="text-dark px-2" href=""> <i
							class="fab fa-pinterest"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row px-xl-5">
			<div class="col">
				<div
					class="nav nav-tabs justify-content-center border-secondary mb-4">
					<a class="nav-item nav-link active" data-toggle="tab"
						href="#tab-pane-1">Description</a> <a class="nav-item nav-link"
						data-toggle="tab" href="#tab-pane-2">Information</a> <a
						class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Reviews
						(0)</a>
				</div>
				<div class="tab-content">
					<div class="tab-pane fade show active" id="tab-pane-1">
						<h4 class="mb-3">Product Description</h4>
						<p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam
							sea. Consetetur vero aliquyam invidunt duo dolores et duo sit.
							Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur
							invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd
							ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod.
							Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut
							diam consetetur duo justo est, sit sanctus diam tempor aliquyam
							eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at
							sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr
							sanctus eirmod takimata dolor ea invidunt.</p>
						<p>Dolore magna est eirmod sanctus dolor, amet diam et eirmod
							et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem
							tempor. Gubergren amet amet labore sadipscing clita clita diam
							clita. Sea amet et sed ipsum lorem elitr et, amet et labore
							voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna
							takimata justo et amet magna et.</p>
					</div>
					<div class="tab-pane fade" id="tab-pane-2">
						<h4 class="mb-3">Additional Information</h4>
						<p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam
							sea. Consetetur vero aliquyam invidunt duo dolores et duo sit.
							Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur
							invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd
							ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod.
							Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut
							diam consetetur duo justo est, sit sanctus diam tempor aliquyam
							eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at
							sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr
							sanctus eirmod takimata dolor ea invidunt.</p>
						<div class="row">
							<div class="col-md-6">
								<ul class="list-group list-group-flush">
									<li class="list-group-item px-0">Sit erat duo lorem duo ea
										consetetur, et eirmod takimata.</li>
									<li class="list-group-item px-0">Amet kasd gubergren sit
										sanctus et lorem eos sadipscing at.</li>
									<li class="list-group-item px-0">Duo amet accusam eirmod
										nonumy stet et et stet eirmod.</li>
									<li class="list-group-item px-0">Takimata ea clita labore
										amet ipsum erat justo voluptua. Nonumy.</li>
								</ul>
							</div>
							<div class="col-md-6">
								<ul class="list-group list-group-flush">
									<li class="list-group-item px-0">Sit erat duo lorem duo ea
										consetetur, et eirmod takimata.</li>
									<li class="list-group-item px-0">Amet kasd gubergren sit
										sanctus et lorem eos sadipscing at.</li>
									<li class="list-group-item px-0">Duo amet accusam eirmod
										nonumy stet et et stet eirmod.</li>
									<li class="list-group-item px-0">Takimata ea clita labore
										amet ipsum erat justo voluptua. Nonumy.</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="tab-pane-3">
						<div class="row">
							<div class="col-md-6">
								<h4 class="mb-4">1 review for "${p.name }"</h4>
								<div class="media mb-4">
									<img src="/resources/img/user.jpg" alt="Image"
										class="img-fluid mr-3 mt-1" style="width: 45px;">
									<div class="media-body">
										<h6>
											John Doe<small> - <i>${p.createDate }</i></small>
										</h6>
										<div class="text-primary mb-2">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star-half-alt"></i>
											<i class="far fa-star"></i>
										</div>
										<p>Diam amet duo labore stet elitr ea clita ipsum, tempor
											labore accusam ipsum et no at. Kasd diam tempor rebum magna
											dolores sed sed eirmod ipsum.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<h4 class="mb-4">Leave a review</h4>
								<small>Your email address will not be published.
									Required fields are marked *</small>
								<div class="d-flex my-3">
									<p class="mb-0 mr-2">Your Rating * :</p>
									<div class="text-primary">
										<i class="far fa-star"></i> <i class="far fa-star"></i> <i
											class="far fa-star"></i> <i class="far fa-star"></i> <i
											class="far fa-star"></i>
									</div>
								</div>
								<form>
									<div class="form-group">
										<label for="message">Your Review *</label>
										<textarea id="message" cols="30" rows="5" class="form-control"></textarea>
									</div>
									<div class="form-group">
										<label for="name">Your Name *</label> <input type="text"
											class="form-control" id="name">
									</div>
									<div class="form-group">
										<label for="email">Your Email *</label> <input type="email"
											class="form-control" id="email">
									</div>
									<div class="form-group mb-0">
										<input type="submit" value="Leave Your Review"
											class="btn btn-primary px-3">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Shop Detail End -->


	<!-- Products Start -->

	<!-- Products End -->


	<!-- Footer Start -->
	<div class="container-fluid bg-secondary text-dark mt-5 pt-5">
		<div class="row px-xl-5 pt-5">
			<div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
				<a href="" class="text-decoration-none">
					<h1 class="mb-4 display-5 font-weight-semi-bold">
						<span
							class="text-primary font-weight-bold border border-white px-3 mr-1">S</span>Shop
					</h1>
				</a>
				<p>Dolore erat dolor sit lorem vero amet. Sed sit lorem magna,
					ipsum no sit erat lorem et magna ipsum dolore amet erat.</p>
				<p class="mb-2">
					<i class="fa fa-map-marker-alt text-primary mr-3"></i>Thu Duc, Tp. Ho Chi Minh
				</p>
				<p class="mb-2">
					<i class="fa fa-envelope text-primary mr-3"></i>19130223@st.hcmuaf.edu.vn
				</p>
				<p class="mb-0">
					<i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890
				</p>
			</div>
			<div class="col-lg-8 col-md-12">
				<div class="row">
					<div class="col-md-4 mb-5">
						<h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
						<div class="d-flex flex-column justify-content-start">
							<a class="text-dark mb-2" href="/"><i
								class="fa fa-angle-right mr-2"></i>Home</a> <a
								class="text-dark mb-2" href="/shop/0"><i
								class="fa fa-angle-right mr-2"></i>Our Shop</a>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
						<div class="d-flex flex-column justify-content-start">
							<a class="text-dark mb-2" href="/"><i
								class="fa fa-angle-right mr-2"></i>Home</a> <a
								class="text-dark mb-2" href="/shop/0"><i
								class="fa fa-angle-right mr-2"></i>Our Shop</a>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<h5 class="font-weight-bold text-dark mb-4">Newsletter</h5>
						<form action="">
							<div class="form-group">
								<input type="text" class="form-control border-0 py-4"
									placeholder="Your Name" required="required" />
							</div>
							<div class="form-group">
								<input type="email" class="form-control border-0 py-4"
									placeholder="Your Email" required="required" />
							</div>
							<div>
								<button class="btn btn-primary btn-block border-0 py-3"
									type="submit">Subscribe Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row border-top border-light mx-xl-5 py-4">
			<div class="col-md-6 px-xl-0">
				<p class="mb-md-0 text-center text-md-left text-dark">
					&copy; <a class="text-dark font-weight-semi-bold" href="#">Tang Minh Thuan- Ngo Ngoc Tien</a>. All Rights Reserved. Designed by <a
						class="text-dark font-weight-semi-bold"
						href="https://htmlcodex.com">HTML Codex</a>
				</p>
			</div>
			<div class="col-md-6 px-xl-0 text-center text-md-right">
				<img class="img-fluid" src="/resources/img/payments.png" alt="">
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/lib/easing/easing.min.js"></script>
	<script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="/resources/mail/jqBootstrapValidation.min.js"></script>
	<script src="/resources/mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="/resources/js/main.js"></script>
	<script>
		document.querySelectorAll(".a").forEach(v => v.addEventListener("click", e => e.preventDefault()))
	</script>
</body>

</html>