<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="en">
<head>

  <!-- ** Basic Page Needs ** -->
  <meta charset="utf-8">
  <title>Classimax | Classified Marketplace Template</title>

  <!-- ** Mobile Specific Metas ** -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Agency HTML Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Classified Marketplace Template v1.0">

	<!-- favicon -->
	<link href="${pageContext.request.contextPath}/resources/images/favicon.png" rel="shortcut icon">

	<!--
    Essential stylesheets
    =====================================-->
	<link href="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap-slider.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/plugins/slick/slick.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/plugins/slick/slick-theme.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">

	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

</head>

<body class="body-wrapper">


<header>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg navbar-light navigation">
					<a class="navbar-brand" href="${pageContext.request.contextPath}/okxe/bikes">
						<img src="${pageContext.request.contextPath}/images/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto main-nav ">
							<li class="nav-item">
								<a class="nav-link" href="${pageContext.request.contextPath}/okxe/bikes">Home</a>
							</li>
							<li class="nav-item dropdown dropdown-slide @@pages">
								<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Brands <span><i class="fa fa-angle-down"></i></span>
								</a>
								<!-- Dropdown list -->
								<ul class="dropdown-menu">
									<li><a class="dropdown-item @@about" href="${pageContext.request.contextPath}/okxe/brand/honda">Honda</a></li>
									<li><a class="dropdown-item @@contact" href="${pageContext.request.contextPath}/okxe/brand/yamaha">Yamaha</a></li>
									<li><a class="dropdown-item @@profile" href="${pageContext.request.contextPath}/okxe/brand/suzuki">Suzuki</a></li>
									<li><a class="dropdown-item @@404" href="${pageContext.request.contextPath}/okxe/brand/vinfast">Vinfast</a></li>
									<li><a class="dropdown-item @@package" href="${pageContext.request.contextPath}/okxe/brand/ducati">Ducati</a></li>
									<li><a class="dropdown-item @@singlePage" href="${pageContext.request.contextPath}/okxe/brand/kawasaki">Kawasaki</a></li>
									<li><a class="dropdown-item @@store" href="${pageContext.request.contextPath}/okxe/brand/piaggio">Piaggio</a></li>
									<li><a class="dropdown-item @@blog" href="${pageContext.request.contextPath}/okxe/brand/sym">SYM</a></li>
									<li><a class="dropdown-item @@singleBlog" href="${pageContext.request.contextPath}/okxe/brand/triumph">Triumph</a></li>
								</ul>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="${pageContext.request.contextPath}/okxe/bikes/all">Bikes</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="${pageContext.request.contextPath}/okxe/home/aboutUs">About Us</a>
							</li>
							<c:choose>
								<c:when test="${auth}">
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/okxe/user/profile">Profile</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/okxe/user/userPosts/${authUser.getUser_id()}">My Posts</a>
									</li>

									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath}/okxe/user/addNewPost">Add New Post</a>
									</li>
								</c:when>
							</c:choose>


						</ul>
						<ul class="navbar-nav ml-auto mt-10">
							<li class="nav-item">
								<c:choose>
									<c:when test="${auth}">
										<a class="text-black">Hi <b>${authUser.getName()}</b></a>
										<form action="${pageContext.request.contextPath}/okxe/user/logoutUser"
											  method="post">
											<button type="submit" style="border: none;
                                            background: none;
                                            color: inherit;
                                            border: none;
                                            font: inherit;
                                            cursor: pointer;
                                            outline: inherit;">
												<a class="ml-4 nav-link text-white add-button">Logout</a>
											</button>

										</form>
									</c:when>
									<c:otherwise>
										<a class="ml-4 nav-link text-white add-button" href="${pageContext.request.contextPath}/okxe/user/login">Login</a>
									</c:otherwise>
								</c:choose>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>


<!--===================================
=            Clients Section        =
====================================-->

<section class="client-slider-03">
	<!-- Container Start -->
	<div class="container">
		<div class="row">
			<!-- Client Slider -->
			<div class="col-md-12">
				<!-- Client Slider -->
				<div class="card mb-3">
					<div class="row no-gutters">
						<div class="col-md-1"></div>
						<div class="col-md-2">
							<img src="${pageContext.request.contextPath}/resources/images/brands/${brand.brand_id}.png" class="card-img" style="vertical-align: middle; max-height: 140px; max-width: 140px" alt="...">
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">${brand.brandname}</h5>
								<p class="card-text">${brand.description}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Container End -->
</section>

<section class="stores section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2>Bikes</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">

				<div class="trending-ads-slide">
					<c:forEach var="b" items="${brandbikes}">
						<div class="col-sm-12 col-lg-4">
							<!-- product card -->
							<div class="product-item bg-light">
								<div class="card">
									<div class="thumb-content">
											<%--                                    <div class="price">${b.price} ??</div>--%>
										<a href="${pageContext.request.contextPath}/okxe/bike/${b.bike_id}">
											<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/bikes/${b.bike_id}/1.png" style="width: 340px; height: 240px" alt="Card image cap">
										</a>
									</div>
									<div class="card-body">
										<h4 class="card-title"><a href="${pageContext.request.contextPath}/okxe/bike/${b.bike_id}">${b.name}</a></h4>
										<ul class="list-inline product-meta">
											<li class="list-inline-item">
												<i class="fa fa-calendar"></i>${b.posted_date}
											</li>
										</ul>
										<p class="card-text" style="font-size: 18px; font-weight: bold"><f:formatNumber value="${b.price}" type="currency"  currencySymbol="???"/></p>
									</div>
								</div>
							</div>



						</div>
					</c:forEach>

				</div>
			</div>
		</div>
	</div>
</section>

<!--============================
=            Footer            =
=============================-->

<footer class="footer section section-sm">
	<!-- Container Start -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-7 offset-md-1 offset-lg-0 mb-4 mb-lg-0">
				<!-- About -->
				<div class="block about">
					<!-- footer logo -->
					<img src="${pageContext.request.contextPath}/resources/images/logo-footer.png" alt="logo">
					<!-- description -->
					<p class="alt-color">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
						laboris nisi ut aliquip ex ea commodo consequat.</p>
				</div>
			</div>
			<!-- Link list -->
			<div class="col-lg-2 offset-lg-1 col-md-3 col-6 mb-4 mb-lg-0">
				<div class="block">
					<h4>Site Pages</h4>
					<ul>
						<li><a href="${pageContext.request.contextPath}/okxe/home/dashboardMyAds">My Ads</a></li>
						<li><a href="${pageContext.request.contextPath}/okxe/home/dashboardFavouriteAds">Favourite Ads</a></li>
						<li><a href="${pageContext.request.contextPath}/okxe/home/dashboardArchivedAds">Archived Ads</a></li>
						<li><a href="${pageContext.request.contextPath}/okxe/home/dashboardPendingAds">Pending Ads</a></li>
						<li><a href="${pageContext.request.contextPath}/okxe/home/termsCondition">Terms & Conditions</a></li>
					</ul>
				</div>
			</div>
			<!-- Link list -->
			<div class="col-lg-2 col-md-3 offset-md-1 offset-lg-0 col-6 mb-4 mb-md-0">
				<div class="block">
					<h4>Admin Pages</h4>
					<ul>
						<li><a href="${pageContext.request.contextPath}/okxe/home/category">Category</a></li>
						<li><a href="${pageContext.request.contextPath}/okxe/home/single">Single Page</a></li>
						<li><a href="${pageContext.request.contextPath}/okxe/home/store">Store Single</a></li>
						<li><a href="${pageContext.request.contextPath}/okxe/home/singleBlog">Single Post</a>
						</li>
						<li><a href="${pageContext.request.contextPath}/okxe/home/blog">Blog</a></li>



					</ul>
				</div>
			</div>
			<!-- Promotion -->
			<div class="col-lg-4 col-md-7">
				<!-- App promotion -->
				<div class="block-2 app-promotion">
					<div class="mobile d-flex  align-items-center">
						<a href="/okxe/home/index">
							<!-- Icon -->
							<img src="${pageContext.request.contextPath}/resources/images/footer/phone-icon.png" alt="mobile-icon">
						</a>
						<p class="mb-0">Get the Dealsy Mobile App and Save more</p>
					</div>
					<div class="download-btn d-flex my-3">
						<a href="/okxe/home/index"><img src="${pageContext.request.contextPath}/images/apps/google-play-store.png" class="img-fluid" alt=""></a>
						<a href="/okxe/home/index" class=" ml-3"><img src="${pageContext.request.contextPath}/images/apps/apple-app-store.png" class="img-fluid" alt=""></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Container End -->
</footer>
<!-- Footer Bottom -->
<footer class="footer-bottom">
	<!-- Container Start -->
	<div class="container">
		<div class="row">
			<div class="col-lg-6 text-center text-lg-left mb-3 mb-lg-0">
				<!-- Copyright -->
				<div class="copyright">
					<p>Copyright &copy; <script>
						var CurrentYear = new Date().getFullYear()
						document.write(CurrentYear)
					</script>. Designed & Developed by <a class="text-white" href="https://themefisher.com">Themefisher</a></p>
				</div>
			</div>
			<div class="col-lg-6">
				<!-- Social Icons -->
				<ul class="social-media-icons text-center text-lg-right">
					<li><a class="fa fa-facebook" href="https://www.facebook.com/themefisher"></a></li>
					<li><a class="fa fa-twitter" href="https://www.twitter.com/themefisher"></a></li>
					<li><a class="fa fa-pinterest-p" href="https://www.pinterest.com/themefisher"></a></li>
					<li><a class="fa fa-github-alt" href="https://www.github.com/themefisher"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Container End -->
	<!-- To Top -->
	<div class="scroll-top-to">
		<i class="fa fa-angle-up"></i>
	</div>
</footer>


<!--
Essential Scripts
=====================================-->
<script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap-slider.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/tether/js/tether.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/raty/jquery.raty-fa.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/slick/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
<script src="${pageContext.request.contextPath}/resources/plugins/google-map/map.js" defer></script>

<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>

</body>

</html>