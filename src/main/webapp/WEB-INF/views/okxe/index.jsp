<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 10/17/2022
  Time: 7:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>


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

    <!-- theme meta -->
    <meta name="theme-name" content="classimax" />

    <!-- favicon -->
    <link href="../../images/favicon.png" rel="shortcut icon">

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
                    <a class="navbar-brand" href="index.html">
                        <img src="${pageContext.request.contextPath}/images/logo.png" alt="">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto main-nav ">
                            <li class="nav-item active">
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
                            <li class="nav-item dropdown dropdown-slide @@pages">
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
                                    <li><a class="dropdown-item @@listView" href="ad-list-${pageContext.request.contextPath}/okxe/home/view">Ad-List View</a></li>

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
                                <a class="nav-link text-white add-button" href="ad-${pageContext.request.contextPath}/okxe/home/listing"><i class="fa fa-plus-circle"></i> Add Listing</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>

<!--===============================
=            Hero Area            =
================================-->

<section class="hero-area bg-1 text-center overly">
    <!-- Container Start -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- Header Contetnt -->
                <div class="content-block">
                    <h1>Buy & Sell Near You </h1>
                    <p>Join the millions who buy and sell from each other <br> everyday in local communities around the world</p>
                    <div class="short-popular-category-list text-center">
                        <h2>Popular Category</h2>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <a href="${pageContext.request.contextPath}/okxe/home/category"><i class="fa fa-bed"></i> Hotel</a></li>
                            <li class="list-inline-item">
                                <a href="${pageContext.request.contextPath}/okxe/home/category"><i class="fa fa-grav"></i> Fitness</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="${pageContext.request.contextPath}/okxe/home/category"><i class="fa fa-car"></i> Cars</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="${pageContext.request.contextPath}/okxe/home/category"><i class="fa fa-cutlery"></i> Restaurants</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="${pageContext.request.contextPath}/okxe/home/category"><i class="fa fa-coffee"></i> Cafe</a>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- Advance Search -->
                <div class="advance-search">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-12 col-md-12 align-content-center">
                                <form>
                                    <div class="form-row">
                                        <div class="form-group col-xl-4 col-lg-3 col-md-6">
                                            <input type="text" class="form-control my-2 my-lg-1" id="inputtext4"
                                                   placeholder="What are you looking for">
                                        </div>
                                        <div class="form-group col-lg-3 col-md-6">
                                            <select class="w-100 form-control mt-lg-1 mt-md-2">
                                                <option>Category</option>
                                                <option value="1">Top rated</option>
                                                <option value="2">Lowest Price</option>
                                                <option value="4">Highest Price</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-3 col-md-6">
                                            <input type="text" class="form-control my-2 my-lg-1" id="inputLocation4" placeholder="Location">
                                        </div>
                                        <div class="form-group col-xl-2 col-lg-3 col-md-6 align-self-center">
                                            <button type="submit" class="btn btn-primary active w-100">Search Now</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Container End -->
</section>


<!--===========================================
=            Popular deals section            =
============================================-->

<section class="popular-deals section bg-gray">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h2>Trending Adds</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas, magnam.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- offer 01 -->
            <div class="col-lg-12">
                <div class="trending-ads-slide">
                    <div class="col-sm-12 col-lg-4">
                        <!-- product card -->
                        <div class="product-item bg-light">
                            <div class="card">
                                <div class="thumb-content">
                                    <!-- <div class="price">$200</div> -->
                                    <a href="${pageContext.request.contextPath}/okxe/home/single">
                                        <img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-1.jpg" alt="Card image cap">
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okxe/home/single">11inch Macbook Air</a></h4>
                                    <ul class="list-inline product-meta">
                                        <li class="list-inline-item">
                                            <a href="${pageContext.request.contextPath}/okxe/home/single"><i class="fa fa-folder-open-o"></i>Electronics</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="${pageContext.request.contextPath}/okxe/home/category"><i class="fa fa-calendar"></i>26th December</a>
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
                    <div class="col-sm-12 col-lg-4">
                        <!-- product card -->
                        <div class="product-item bg-light">
                            <div class="card">
                                <div class="thumb-content">
                                    <!-- <div class="price">$200</div> -->
                                    <a href="${pageContext.request.contextPath}/okxe/home/single">
                                        <img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-2.jpg" alt="Card image cap">
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okxe/home/single">Full Study Table Combo</a></h4>
                                    <ul class="list-inline product-meta">
                                        <li class="list-inline-item">
                                            <a href="${pageContext.request.contextPath}/okxe/home/single"><i class="fa fa-folder-open-o"></i>Furnitures</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="${pageContext.request.contextPath}/okxe/home/category"><i class="fa fa-calendar"></i>26th December</a>
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
                    <div class="col-sm-12 col-lg-4">
                        <!-- product card -->
                        <div class="product-item bg-light">
                            <div class="card">
                                <div class="thumb-content">
                                    <!-- <div class="price">$200</div> -->
                                    <a href="${pageContext.request.contextPath}/okxe/home/single">
                                        <img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-3.jpg" alt="Card image cap">
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okxe/home/single">11inch Macbook Air</a></h4>
                                    <ul class="list-inline product-meta">
                                        <li class="list-inline-item">
                                            <a href="${pageContext.request.contextPath}/okxe/home/single"><i class="fa fa-folder-open-o"></i>Electronics</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="${pageContext.request.contextPath}/okxe/home/category"><i class="fa fa-calendar"></i>26th December</a>
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
                    <div class="col-sm-12 col-lg-4">
                        <!-- product card -->
                        <div class="product-item bg-light">
                            <div class="card">
                                <div class="thumb-content">
                                    <!-- <div class="price">$200</div> -->
                                    <a href="${pageContext.request.contextPath}/okxe/home/single">
                                        <img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/images/products/products-2.jpg" alt="Card image cap">
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h4 class="card-title"><a href="${pageContext.request.contextPath}/okxe/home/single">Full Study Table Combo</a></h4>
                                    <ul class="list-inline product-meta">
                                        <li class="list-inline-item">
                                            <a href="${pageContext.request.contextPath}/okxe/home/single"><i class="fa fa-folder-open-o"></i>Furnitures</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="${pageContext.request.contextPath}/okxe/home/category"><i class="fa fa-calendar"></i>26th December</a>
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
        </div>
    </div>
</section>



<!--==========================================
=            All Category Section            =
===========================================-->

<section class=" section">
    <!-- Container Start -->
    <div class="container">
        <div class="row">
            <div class="col-12">
                <!-- Section title -->
                <div class="section-title">
                    <h2>All Categories</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis, provident!</p>
                </div>
                <div class="row">
                    <!-- Category list -->
                    <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6">
                        <div class="category-block">
                            <div class="header">
                                <i class="fa fa-laptop icon-bg-1"></i>
                                <h4>Electronics</h4>
                            </div>
                            <ul class="category-list">
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Laptops <span>93</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Iphone <span>233</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Microsoft <span>183</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Monitors <span>343</span></a></li>
                            </ul>
                        </div>
                    </div> <!-- /Category List -->
                    <!-- Category list -->
                    <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6">
                        <div class="category-block">
                            <div class="header">
                                <i class="fa fa-apple icon-bg-2"></i>
                                <h4>Restaurants</h4>
                            </div>
                            <ul class="category-list">
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Cafe <span>393</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Fast food <span>23</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Restaurants <span>13</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Food Track<span>43</span></a></li>
                            </ul>
                        </div>
                    </div> <!-- /Category List -->
                    <!-- Category list -->
                    <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6">
                        <div class="category-block">
                            <div class="header">
                                <i class="fa fa-home icon-bg-3"></i>
                                <h4>Real Estate</h4>
                            </div>
                            <ul class="category-list">
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Farms <span>93</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Gym <span>23</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Hospitals <span>83</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Parolurs <span>33</span></a></li>
                            </ul>
                        </div>
                    </div> <!-- /Category List -->
                    <!-- Category list -->
                    <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6">
                        <div class="category-block">
                            <div class="header">
                                <i class="fa fa-shopping-basket icon-bg-4"></i>
                                <h4>Shoppings</h4>
                            </div>
                            <ul class="category-list">
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Mens Wears <span>53</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Accessories <span>212</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Kids Wears <span>133</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">It & Software <span>143</span></a></li>
                            </ul>
                        </div>
                    </div> <!-- /Category List -->
                    <!-- Category list -->
                    <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6">
                        <div class="category-block">
                            <div class="header">
                                <i class="fa fa-briefcase icon-bg-5"></i>
                                <h4>Jobs</h4>
                            </div>
                            <ul class="category-list">
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">It Jobs <span>93</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Cleaning & Washing <span>233</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Management <span>183</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Voluntary Works <span>343</span></a></li>
                            </ul>
                        </div>
                    </div> <!-- /Category List -->
                    <!-- Category list -->
                    <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6">
                        <div class="category-block">
                            <div class="header">
                                <i class="fa fa-car icon-bg-6"></i>
                                <h4>Vehicles</h4>
                            </div>
                            <ul class="category-list">
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Bus <span>193</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Cars <span>23</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Motobike <span>33</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Rent a car <span>73</span></a></li>
                            </ul>
                        </div>
                    </div> <!-- /Category List -->
                    <!-- Category list -->
                    <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6">
                        <div class="category-block">
                            <div class="header">
                                <i class="fa fa-paw icon-bg-7"></i>
                                <h4>Pets</h4>
                            </div>
                            <ul class="category-list">
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Cats <span>65</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Dogs <span>23</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Birds <span>113</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Others <span>43</span></a></li>
                            </ul>
                        </div>
                    </div> <!-- /Category List -->
                    <!-- Category list -->
                    <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6">
                        <div class="category-block">

                            <div class="header">
                                <i class="fa fa-laptop icon-bg-8"></i>
                                <h4>Services</h4>
                            </div>
                            <ul class="category-list">
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Cleaning <span>93</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Car Washing <span>233</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Clothing <span>183</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/okxe/home/category">Business <span>343</span></a></li>
                            </ul>
                        </div>
                    </div> <!-- /Category List -->


                </div>
            </div>
        </div>
    </div>
    <!-- Container End -->
</section>


<!--====================================
=            Call to Action            =
=====================================-->

<section class="call-to-action overly bg-3 section-sm">
    <!-- Container Start -->
    <div class="container">
        <div class="row justify-content-md-center text-center">
            <div class="col-md-8">
                <div class="content-holder">
                    <h2>Start today to get more exposure and
                        grow your business</h2>
                    <ul class="list-inline mt-30">
                        <li class="list-inline-item"><a class="btn btn-main" href="${pageContext.request.contextPath}/okxe/home/adListing">Add Listing</a></li>
                        <li class="list-inline-item"><a class="btn btn-secondary" href="${pageContext.request.contextPath}/okxe/home/category">Browser Listing</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Container End -->
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




