<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
					<a class="navbar-brand" href="${pageContext.request.contextPath}/okxe/home/index">
						<img src="${pageContext.request.contextPath}/images/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto main-nav ">
							<li class="nav-item active">
								<a class="nav-link" href="${pageContext.request.contextPath}/okxe/home/index">Home</a>
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
								<a class="nav-link" href="${pageContext.request.contextPath}/okxe/home/aboutUs">About Us</a>
							</li>
						</ul>
						<ul class="navbar-nav ml-auto mt-10">
							<li class="nav-item">
								<a class="nav-link text-white add-button" href="${pageContext.request.contextPath}/okxe/home/login">Login</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>

<!--==================================
=            User Profile            =
===================================-->

<section class="user-profile section">
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<div class="sidebar">
					<!-- User Widget -->
					<div class="widget user">
						<!-- User Image -->
						<div class="image d-flex justify-content-center">
							<img src="${pageContext.request.contextPath}/images/user/user-thumb.jpg" alt="" class="">
						</div>
						<!-- User Name -->
						<h5 class="text-center">${user.getName()}</h5>
						<h6 class="text-center">${user.getUsername()}</h6>
					</div>
					<!-- Dashboard Links -->
<%--          <div class="widget user-dashboard-menu">--%>
<%--            <ul>--%>
<%--              <li><a href="${pageContext.request.contextPath}/okxe/home/index">Savings Dashboard</a></li>--%>
<%--              <li><a href="${pageContext.request.contextPath}/okxe/home/index">Saved Offer <span>(5)</span></a></li>--%>
<%--              <li><a href="${pageContext.request.contextPath}/okxe/home/index">Favourite Stores <span>(3)</span></a></li>--%>
<%--              <li><a href="${pageContext.request.contextPath}/okxe/home/index">Recommended</a></li>--%>
<%--            </ul>--%>
<%--          </div>--%>
				</div>
			</div>
			<div class="col-lg-8">
				<!-- Edit Profile Welcome Text -->
				<div class="widget welcome-message">
					<h2>Edit profile</h2>
				</div>
				<!-- Edit Personal Info -->
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<c:if test="${not empty error}">
							<h6 style="color: red">${error}</h6>
						</c:if>
						<div class="widget personal-info">
							<h3 class="widget-header user">Edit Personal Information</h3>
							<form action="${pageContext.request.contextPath}/okxe/user/updateUserProfile" method="post">
								<input hidden="hidden" name="id" type="text" class="form-control" value="${user.getUser_id()}">

								<!-- First Name -->
								<div class="form-group">
									<label for="first-name">Username</label>
									<input type="text" class="form-control" id="first-name" value="${user.getUsername()}" disabled>
								</div>

								<!-- Last Name -->
								<div class="form-group">
									<label for="last-name">Name</label>
									<input name="name" type="text" class="form-control" id="last-name" value="${user.getName()}">
								</div>
								<!-- File chooser -->
								<div class="form-group choose-file d-inline-flex">
									<i class="fa fa-user text-center px-3"></i>
									<input name="image" type="file" class="form-control-file mt-2 pt-1" id="input-file">
								 </div>
								<!-- Comunity Name -->
								<div class="form-group">
									<label for="comunity-name">Phone</label>
									<input name="phone" type="text" class="form-control" id="comunity-name" value="${user.getPhone()}">
								</div>
								<!-- Checkbox -->
<%--								<div class="form-check">--%>
<%--								  <label class="form-check-label" for="hide-profile">--%>
<%--									<input class="form-check-input mt-1" type="checkbox" value="" id="hide-profile">--%>
<%--									Hide Profile from Public/Comunity--%>
<%--								  </label>--%>
<%--								</div>--%>
								<!-- Zip Code -->
								<div class="form-group">
									<label for="location">Location</label>
									<input name="location" type="text" class="form-control" id="location" value="${user.getLocation()}">
								</div>
								<div class="form-group">
									<label for="CID">Citizen ID</label>
									<input name="CID" type="text" class="form-control" id="CID" value="${user.getCitizen_id()}">
								</div>
								<!-- Submit button -->
								<button type="submit" class="btn btn-transparent">Save My Changes</button>
							</form>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<!-- Change Password -->
					<div class="widget change-password">
						<h3 class="widget-header user">Edit Password</h3>
						<form action="${pageContext.request.contextPath}/okxe/user/changePassword" method="post">
							<!-- Current Password -->
							<input hidden="hidden" name="id" type="text" class="form-control" value="${user.getUser_id()}">

							<div class="form-group">
								<label for="current-password">Current Password</label>
								<input name="password" type="password" class="form-control" id="current-password">
							</div>
							<!-- New Password -->
							<div class="form-group">
								<label for="new-password">New Password</label>
								<input name="newPassword" type="password" class="form-control" id="new-password">
							</div>
							<!-- Confirm New Password -->
							<div class="form-group">
								<label for="confirm-password">Confirm New Password</label>
								<input name="confirmNewPassword" type="password" class="form-control" id="confirm-password">
							</div>
							<!-- Submit Button -->
							<button type="submit" class="btn btn-transparent">Change Password</button>
						</form>
					</div>
					</div>

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
