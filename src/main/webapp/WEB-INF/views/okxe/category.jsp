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

<section class="page-search">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Advance Search -->
				<div class="advance-search nice-select-white">
					<form>
						<div class="form-row align-items-center">
							<div class="form-group col-xl-4 col-lg-3 col-md-6">
								<input type="text" class="form-control my-2 my-lg-0" id="inputtext4" placeholder="What are you looking for">
							</div>
							<div class="form-group col-lg-3 col-md-6">
								<select class="w-100 form-control my-2 my-lg-0">
									<option>Category</option>
									<option value="1">Top rated</option>
									<option value="2">Lowest Price</option>
									<option value="4">Highest Price</option>
								</select>
							</div>
							<div class="form-group col-lg-3 col-md-6">
								<input type="text" class="form-control my-2 my-lg-0" id="inputLocation4" placeholder="Location">
							</div>
							<div class="form-group col-xl-2 col-lg-3 col-md-6">

								<button type="submit" class="btn btn-primary active w-100">Search Now</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section-sm">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="search-result bg-gray">
					<h2>Results For "Electronics"</h2>
					<p>123 Results on 12 December, 2017</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-md-4">
				<div class="category-sidebar">
					<div class="widget category-list">
	<h4 class="widget-header">All Category</h4>
	<ul class="category-list">
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">Laptops <span>93</span></a></li>
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">Iphone <span>233</span></a></li>
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">Microsoft  <span>183</span></a></li>
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">Monitors <span>343</span></a></li>
	</ul>
</div>

<div class="widget category-list">
	<h4 class="widget-header">Nearby</h4>
	<ul class="category-list">
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">New York <span>93</span></a></li>
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">New Jersy <span>233</span></a></li>
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">Florida  <span>183</span></a></li>
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">California <span>120</span></a></li>
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">Texas <span>40</span></a></li>
		<li><a href="${pageContext.request.contextPath}/okexe/home/category">Alaska <span>81</span></a></li>
	</ul>
</div>

<div class="widget filter">
	<h4 class="widget-header">Show Produts</h4>
	<select>
		<option>Popularity</option>
		<option value="1">Top rated</option>
		<option value="2">Lowest Price</option>
		<option value="4">Highest Price</option>
	</select>
</div>

<div class="widget price-range w-100">
	<h4 class="widget-header">Price Range</h4>
	<div class="block">
						<input class="range-track w-100" type="text" data-slider-min="0" data-slider-max="5000" data-slider-step="5"
						data-slider-value="[0,5000]">
				<div class="d-flex justify-content-between mt-2">
						<span class="value">$10 - $5000</span>
				</div>
	</div>
</div>

<div class="widget product-shorting">
	<h4 class="widget-header">By Condition</h4>
	<div class="form-check">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" value="">
	    Brand New
	  </label>
	</div>
	<div class="form-check">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" value="">
	    Almost New
	  </label>
	</div>
	<div class="form-check">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" value="">
	    Gently New
	  </label>
	</div>
	<div class="form-check">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" value="">
	    Havely New
	  </label>
	</div>
</div>

				</div>
			</div>
			<div class="col-lg-9 col-md-8">
				<div class="category-search-filter">
					<div class="row">
						<div class="col-md-6 text-center text-md-left">
							<strong>Short</strong>
							<select>
								<option>Most Recent</option>
								<option value="1">Most Popular</option>
								<option value="2">Lowest Price</option>
								<option value="4">Highest Price</option>
							</select>
						</div>
						<div class="col-md-6 text-center text-md-right mt-2 mt-md-0">
							<div class="view">
								<strong>Views</strong>
								<ul class="list-inline view-switcher">
									<li class="list-inline-item">
										<a href="#!" onclick="event.preventDefault();" class="text-info"><i class="fa fa-th-large"></i></a>
									</li>
									<li class="list-inline-item">
										<a href="${pageContext.request.contextPath}/okexe/home/adListView"><i class="fa fa-reorder"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="product-grid-list">
					<div class="row mt-30">
						<div class="col-lg-4 col-md-6">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="${pageContext.request.contextPath}/okexe/home/single">
				<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-1.jpg" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okexe/home/single">11inch Macbook Air</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/single"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/category"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



						</div>
						<div class="col-lg-4 col-md-6">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="${pageContext.request.contextPath}/okexe/home/single">
				<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-2.jpg" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okexe/home/single">Study Table Combo</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/single"><i class="fa fa-folder-open-o"></i>Furnitures</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/category"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



						</div>
						<div class="col-lg-4 col-md-6">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="${pageContext.request.contextPath}/okexe/home/single">
				<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-3.jpg" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okexe/home/single">11inch Macbook Air</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/single"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/category"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



						</div>
						<div class="col-lg-4 col-md-6">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="${pageContext.request.contextPath}/okexe/home/single">
				<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-1.jpg" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okexe/home/single">11inch Macbook Air</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/single"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/category"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



						</div>
						<div class="col-lg-4 col-md-6">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="${pageContext.request.contextPath}/okexe/home/single">
				<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-2.jpg" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okexe/home/single">Study Table Combo</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/single"><i class="fa fa-folder-open-o"></i>Furnitures</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/category"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



						</div>
						<div class="col-lg-4 col-md-6">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="${pageContext.request.contextPath}/okexe/home/single">
				<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-3.jpg" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okexe/home/single">11inch Macbook Air</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/single"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/category"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



						</div>
						<div class="col-lg-4 col-md-6">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="${pageContext.request.contextPath}/okexe/home/single">
				<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-1.jpg" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okexe/home/single">11inch Macbook Air</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/single"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/category"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



						</div>
						<div class="col-lg-4 col-md-6">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="${pageContext.request.contextPath}/okexe/home/single">
				<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-2.jpg" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okexe/home/single">Study Table Combo</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/single"><i class="fa fa-folder-open-o"></i>Furnitures</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/category"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



						</div>
						<div class="col-lg-4 col-md-6">
							<!-- product card -->
<div class="product-item bg-light">
	<div class="card">
		<div class="thumb-content">
			<!-- <div class="price">$200</div> -->
			<a href="${pageContext.request.contextPath}/okexe/home/single">
				<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-3.jpg" alt="Card image cap">
			</a>
		</div>
		<div class="card-body">
		    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okexe/home/single">11inch Macbook Air</a></h4>
		    <ul class="list-inline product-meta">
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/single"><i class="fa fa-folder-open-o"></i>Electronics</a>
		    	</li>
		    	<li class="list-inline-item">
		    		<a href="${pageContext.request.contextPath}/okexe/home/category"><i class="fa fa-calendar"></i>26th December</a>
		    	</li>
		    </ul>
		    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
		    <div class="product-ratings">
		    	<ul class="list-inline">
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
		    		<li class="list-inline-item"><i class="fa fa-star"></i></li>
		    	</ul>
		    </div>
		</div>
	</div>
</div>



						</div>
					</div>
				</div>
				<div class="pagination justify-content-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item">
								<a class="page-link" href="${pageContext.request.contextPath}/okexe/home/category" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
								</a>
							</li>
							<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/okexe/home/category">1</a></li>
							<li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/okexe/home/category">2</a></li>
							<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/okexe/home/category">3</a></li>
							<li class="page-item">
								<a class="page-link" href="${pageContext.request.contextPath}/okexe/home/category" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
									<span class="sr-only">Next</span>
								</a>
							</li>
						</ul>
					</nav>
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