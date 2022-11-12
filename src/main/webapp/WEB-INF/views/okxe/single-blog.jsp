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
							<li class="nav-item @@home">
								<a class="nav-link" href="index.html">Home</a>
							</li>
							<li class="nav-item dropdown dropdown-slide @@dashboard">
								<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#!">Dashboard<span><i class="fa fa-angle-down"></i></span>
								</a>

								<!-- Dropdown list -->
								<ul class="dropdown-menu">
									<li><a class="dropdown-item @@dashboardPage" href="${pageContext.request.contextPath}/okxe/home/dashboard">Dashboard</a></li>
									<li><a class="dropdown-item @@dashboardMyAds" href="${pageContext.request.contextPath}/okxe/home/dashboardMyAds">Dashboard My Ads</a></li>
									<li><a class="dropdown-item @@dashboardFavouriteAds" href="${pageContext.request.contextPath}/okxe/home/dashboardFavouriteAds">Dashboard Favourite Ads</a></li>
									<li><a class="dropdown-item @@dashboardArchivedAds" href="${pageContext.request.contextPath}/okxe/home/dashboardArchivedAds">Dashboard Archived Ads</a></li>
									<li><a class="dropdown-item @@dashboardPendingAds" href="${pageContext.request.contextPath}/okxe/home/dashboardPendingAds">Dashboard Pending Ads</a></li>

									<li class="dropdown dropdown-submenu dropright">
										<a class="dropdown-item dropdown-toggle" href="#!" id="dropdown0501" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sub Menu</a>

										<ul class="dropdown-menu" aria-labelledby="dropdown0501">
											<li><a class="dropdown-item" href="index.html">Submenu 01</a></li>
											<li><a class="dropdown-item" href="index.html">Submenu 02</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="nav-item dropdown dropdown-slide active">
								<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Pages <span><i class="fa fa-angle-down"></i></span>
								</a>
								<!-- Dropdown list -->
								<ul class="dropdown-menu">
									<li><a class="dropdown-item @@about" href="${pageContext.request.contextPath}/okxe/home/aboutUs">About Us</a></li>
									<li><a class="dropdown-item @@contact" href="${pageContext.request.contextPath}/okxe/home/contactUs">Contact Us</a></li>
									<li><a class="dropdown-item @@profile" href="${pageContext.request.contextPath}/okxe/home/userProfile">User Profile</a></li>
									<li><a class="dropdown-item @@404" href="${pageContext.request.contextPath}/okxe/home/404">404 Page</a></li>
									<li><a class="dropdown-item @@package" href="${pageContext.request.contextPath}/okxe/home/package">Package</a></li>
									<li><a class="dropdown-item @@singlePage" href="${pageContext.request.contextPath}/okxe/home/single">Single Page</a></li>
									<li><a class="dropdown-item @@store" href="${pageContext.request.contextPath}/okxe/home/store">Store Single</a></li>
									<li><a class="dropdown-item @@blog" href="${pageContext.request.contextPath}/okxe/home/blog">Blog</a></li>
									<li><a class="dropdown-item @@singleBlog" href="${pageContext.request.contextPath}/okxe/home/singleBlog">Blog Details</a></li>
									<li><a class="dropdown-item @@terms" href="${pageContext.request.contextPath}/okxe/home/termsCondition">Terms &amp; Conditions</a></li>
								</ul>
							</li>
							<li class="nav-item dropdown dropdown-slide @@listing">
								<a class="nav-link dropdown-toggle" href="#!" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Listing <span><i class="fa fa-angle-down"></i></span>
								</a>
								<!-- Dropdown list -->
								<ul class="dropdown-menu">
									<li><a class="dropdown-item @@category" href="${pageContext.request.contextPath}/okxe/home/category">Ad-Gird View</a></li>
									<li><a class="dropdown-item @@listView" href="${pageContext.request.contextPath}/okxe/home/adListView">Ad-List View</a></li>

									<li class="dropdown dropdown-submenu dropleft">
										<a class="dropdown-item dropdown-toggle" href="#!" id="dropdown0201" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sub Menu</a>
					
										<ul class="dropdown-menu" aria-labelledby="dropdown0201">
											<li><a class="dropdown-item" href="index.html">Submenu 01</a></li>
											<li><a class="dropdown-item" href="index.html">Submenu 02</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
						<ul class="navbar-nav ml-auto mt-10">
							<li class="nav-item">
								<a class="nav-link login-button" href="${pageContext.request.contextPath}/okxe/home/login">Login</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-white add-button" href="${pageContext.request.contextPath}/okxe/home/adListing"><i class="fa fa-plus-circle"></i> Add Listing</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>
<!--=================================
=            Single Blog            =
==================================-->
<section class="blog single-blog section">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<article class="single-post">
					<h2>Donec id dolor in erat imperdiet.</h2>
					<ul class="list-inline">
						<li class="list-inline-item">by <a href="${pageContext.request.contextPath}/okxe/home/userProfile">Admin</a></li>
						<li class="list-inline-item">Nov 22, 2016</li>
					</ul>
					<img src="${pageContext.request.contextPath}/resources/images/blog/post-4.jpg" alt="article-01">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt labore et dolore
						magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip.ex ea
						commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat
						nulla pariatur. Excepteur sint occaecat cupidatat non proident.
						sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
						aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
						Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>

					<p>sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est,
						qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
						incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
					<ul class="social-circle-icons list-inline">
						<li class="list-inline-item text-center"><a class="fa fa-facebook" href="https://themefisher.com/"></a></li>
						<li class="list-inline-item text-center"><a class="fa fa-twitter" href="https://themefisher.com/"></a></li>
						<li class="list-inline-item text-center"><a class="fa fa-google-plus" href="https://themefisher.com/"></a></li>
						<li class="list-inline-item text-center"><a class="fa fa-pinterest-p" href="https://themefisher.com/"></a></li>
						<li class="list-inline-item text-center"><a class="fa fa-linkedin" href="https://themefisher.com/"></a></li>
					</ul>
				</article>
				<div class="block comment">
					<h4>Leave A Comment</h4>
					<form action="#">
						<!-- Message -->
						<div class="form-group mb-30">
							<label for="message">Message</label>
							<textarea class="form-control" id="message" rows="8" required></textarea>
						</div>
						<div class="row">
							<div class="col-sm-12 col-md-6">
								<!-- Name -->
								<div class="form-group mb-30">
									<label for="name">Name</label>
									<input type="text" class="form-control" id="name" required>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<!-- Email -->
								<div class="form-group mb-30">
									<label for="email">Email</label>
									<input type="email" class="form-control" id="email" required>
								</div>
							</div>
						</div>
						<button class="btn btn-transparent">Leave Comment</button>
					</form>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="sidebar">
					<!-- Search Widget -->
					<div class="widget search p-0">
						<div class="input-group">
							<input type="text" class="form-control" id="expire" placeholder="Search...">
							<span class="input-group-addon"><i class="fa fa-search px-3"></i></span>
						</div>
					</div>
					<!-- Category Widget -->
					<div class="widget category">
						<!-- Widget Header -->
						<h5 class="widget-header">Categories</h5>
						<ul class="category-list">
							<li><a href="${pageContext.request.contextPath}/okxe/home/category">Appearel <span class="float-right">(2)</span></a></li>
							<li><a href="${pageContext.request.contextPath}/okxe/home/category">Accesories <span class="float-right">(5)</span></a></li>
							<li><a href="${pageContext.request.contextPath}/okxe/home/category">Business<span class="float-right">(7)</span></a></li>
							<li><a href="${pageContext.request.contextPath}/okxe/home/category">Entertaiment<span class="float-right">(3)</span></a></li>
							<li><a href="${pageContext.request.contextPath}/okxe/home/category">Education<span class="float-right">(9)</span></a></li>
						</ul>
					</div>
					<!-- Archive Widget -->
					<div class="widget archive">
						<!-- Widget Header -->
						<h5 class="widget-header">Archives</h5>
						<ul class="archive-list">
							<li><a href="${pageContext.request.contextPath}/okxe/home/adListView">January 2017</a></li>
							<li><a href="${pageContext.request.contextPath}/okxe/home/adListView">February 2017</a></li>
							<li><a href="${pageContext.request.contextPath}/okxe/home/adListView">March 2017</a></li>
							<li><a href="${pageContext.request.contextPath}/okxe/home/adListView">April 2017</a></li>
							<li><a href="${pageContext.request.contextPath}/okxe/home/adListView">May 2017</a></li>
						</ul>
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
            <a href="index.html">
              <!-- Icon -->
				<img src="${pageContext.request.contextPath}/resources/images/footer/phone-icon.png" alt="mobile-icon">
            </a>
            <p class="mb-0">Get the Dealsy Mobile App and Save more</p>
          </div>
			<div class="download-btn d-flex my-3">
				<a href="index.html"><img src="${pageContext.request.contextPath}/images/apps/google-play-store.png" class="img-fluid" alt=""></a>
				<a href="index.html" class=" ml-3"><img src="${pageContext.request.contextPath}/images/apps/apple-app-store.png" class="img-fluid" alt=""></a>
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
