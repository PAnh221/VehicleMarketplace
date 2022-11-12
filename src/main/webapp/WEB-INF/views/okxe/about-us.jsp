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
					<a class="navbar-brand" href="${pageContext.request.contextPath}/okexe/home/index">
						<img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto main-nav ">
							<li class="nav-item @@home">
								<a class="nav-link" href="${pageContext.request.contextPath}/okexe/home/index">Home</a>
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
											<li><a class="dropdown-item" href="${pageContext.request.contextPath}/okxe/home/index">Submenu 01</a></li>
											<li><a class="dropdown-item" href="${pageContext.request.contextPath}/okxe/home/index">Submenu 02</a></li>
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
									<li><a class="dropdown-item active" href="${pageContext.request.contextPath}/okxe/home/aboutUs">About Us</a></li>
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
											<li><a class="dropdown-item" href="${pageContext.request.contextPath}/okxe/home/index">Submenu 01</a></li>
											<li><a class="dropdown-item" href="${pageContext.request.contextPath}/okxe/home/index">Submenu 02</a></li>
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

<!--================================
=            Page Title            =
=================================-->
<section class="page-title">
	<!-- Container Start -->
	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2 text-center">
				<!-- Title text -->
				<h3>About Us</h3>
			</div>
		</div>
	</div>
	<!-- Container End -->
</section>

<section class="section">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <div class="about-img">
          <img src="${pageContext.request.contextPath}/resources/images/about/about.jpg" class="img-fluid w-100 rounded" alt="">
        </div>
      </div>
      <div class="col-lg-6 pt-5 pt-lg-0">
        <div class="about-content">
          <h3 class="font-weight-bold">Introduction</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc est justo, aliquam nec tempor
            fermentum, commodo et libero. Quisque et rutrum arcu. Vivamus dictum tincidunt magna id
            euismod. Nam sollicitudin mi quis orci lobortis feugiat.</p>
          <h3 class="font-weight-bold">How we can help</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc est justo, aliquam nec tempor
            fermentum, commodo et libero. Quisque et rutrum arcu. Vivamus dictum tincidunt magna id
            euismod. Nam sollicitudin mi quis orci lobortis feugiat. Lorem ipsum dolor sit amet,
            consectetur adipiscing elit. Nunc est justo, aliquam nec tempor fermentum, commodo et libero. Quisque et rutrum arcu. Vivamus dictum
            tincidunt magna id euismod. Nam sollicitudin mi quis orci lobortis feugiat.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="mb-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="heading text-center text-capitalize font-weight-bold py-5">
          <h2>our team</h2>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6">
        <div class="card my-3 my-lg-0">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/team/team1.jpg" class="img-fluid w-100" alt="Card image cap">
          <div class="card-body bg-gray text-center">
            <h5 class="card-title">John Doe</h5>
            <p class="card-text">Founder / CEO</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6">
        <div class="card my-3 my-lg-0">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/team/team2.jpg" class="img-fluid w-100" alt="Card image cap">
          <div class="card-body bg-gray text-center">
            <h5 class="card-title">John Doe</h5>
            <p class="card-text">Founder / CEO</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6">
        <div class="card my-3 my-lg-0">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/team/team3.jpg" class="img-fluid w-100" alt="Card image cap">
          <div class="card-body bg-gray text-center">
            <h5 class="card-title">John Doe</h5>
            <p class="card-text">Founder / CEO</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6">
        <div class="card my-3 my-lg-0">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/team/team4.jpg" class="img-fluid w-100" alt="Card image cap">
          <div class="card-body bg-gray text-center">
            <h5 class="card-title">John Doe</h5>
            <p class="card-text">Founder / CEO</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-sm-6 my-lg-0 my-3">
        <div class="counter-content text-center bg-light py-4 rounded">
          <i class="fa fa-smile-o d-block"></i>
          <span class="counter my-2 d-block" data-count="2314">0</span>
          <h5>Happy Customers</h5>
          </script>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6 my-lg-0 my-3">
        <div class="counter-content text-center bg-light py-4 rounded">
          <i class="fa fa-user-o d-block"></i>
          <span class="counter my-2 d-block" data-count="1013">0</span>
          <h5>Active Members</h5>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6 my-lg-0 my-3">
        <div class="counter-content text-center bg-light py-4 rounded">
          <i class="fa fa-bookmark-o d-block"></i>
          <span class="counter my-2 d-block" data-count="2413">0</span>
          <h5>Verified Ads</h5>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6 my-lg-0 my-3">
        <div class="counter-content text-center bg-light py-4 rounded">
          <i class="fa fa-smile-o d-block"></i>
          <span class="counter my-2 d-block" data-count="200">0</span>
          <h5>Happy Customers</h5>
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
            <a href="${pageContext.request.contextPath}/okxe/home/index">
              <!-- Icon -->
              <img src="${pageContext.request.contextPath}/resources/images/footer/phone-icon.png" alt="mobile-icon">
            </a>
            <p class="mb-0">Get the Dealsy Mobile App and Save more</p>
          </div>
          <div class="download-btn d-flex my-3">
            <a href="${pageContext.request.contextPath}/okxe/home/index"><img src="${pageContext.request.contextPath}/resources/images/apps/google-play-store.png" class="img-fluid" alt=""></a>
            <a href="${pageContext.request.contextPath}/okxe/home/index" class=" ml-3"><img src="${pageContext.request.contextPath}/resources/images/apps/apple-app-store.png" class="img-fluid" alt=""></a>
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