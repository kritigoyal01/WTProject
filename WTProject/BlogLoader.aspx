﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlogLoader.aspx.cs" Inherits="WTProject.BlogLoader" %>
<%--<%@ OutputCache VaryByParam="None" Duration="20" %>--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- Mirrored from wp1.themexlab.com/html/meeton-new-with-files/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Jan 2017 06:00:30 GMT -->
<meta charset="utf-8">
<title>Cook - A - Roo | Khao aur Khilao | Our Posts</title>
<!-- Stylesheets -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/revolution-slider.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>
 <form id="form1" runat="server">  
       
<div class="page-wrapper">
 	
    <!-- Preloader -->
    <div class="preloader"></div>
 	
    <!-- Main Header -->
    <header class="main-header">
    	<div class="auto-container clearfix">
        	<!--Logo-->
            <div class="logo"><a href="Default.aspx"><img class="img-wrap img-circle" src="images/pablo.png" height="100px" width="270px" alt="Cook-a-roo" title="Cook-a-roo"></a></div>
            
            <!--Main Menu-->
            <nav class="main-menu">
                <div class="navbar-header">
                    <!-- Toggle Button -->      
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                
                <div class="navbar-collapse collapse clearfix">                                                                                              
                    <ul class="navigation">
                        <li><a href="Default.aspx">Home</a>          
                        </li>
                        <li><a href="About.aspx">About</a>                            
                        </li>
                        <li class="current"><a href="BlogLoader.aspx">Posts</a></li>
                            
                        <li><a href="Faq.aspx">FAQ
                            </a>
                        </li>

                        <li><a href="MyProfile.aspx">My Profile</a>                            
                        </li>
                        <%--<li class="dropdown"><a href="sponsors.html">Sponsors</a>
                            <ul class="submenu">
                                <li><a href="single-sponsors.html">Single Sponsors</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="blog.html">Blog</a>
                            <ul class="submenu">
                                <li><a href="blog.html">Blog Style One</a></li>
                                <li><a href="blog-full.html">Blog Style Two</a></li>
                                <li><a href="blog-left-right.html">Blog Style Three</a></li>
                                <li><a href="blog-left.html">Blog Style Four</a></li>
                                <li><a href="blog-detail.html">Blog Details</a></li>
                            </ul>
                        </li>--%>
                        <li><a href="Contact.aspx">Contact Us</a></li>
                    </ul>
                </div>
            </nav>
            <!--Main Menu End-->
            
        </div>
    </header>
    <!--End Main Header -->
    
    <!-- Page Banner -->
    <section class="page-banner" style="background-image:url(images/background/blog3.jpg);">
    	<div class="auto-container">
        	<p style="font-family:Calibri; font-size:50px;color:white">Help yourselves</p>
        </div>
    </section>
   
	<!-- Blog -->
    <section id="blog" class="blog-area section">
        <div class="auto-container">
            <div class="col-md-4">
                
                        <div class="sidebar">
                    
                            <!-- Search -->
                            <%--<div class="search wow fadeInUp">
                                <form>
                                    <input type="search" name="name" placeholder="SEARCH..">
                                    <input type="submit" value="submit">
                                </form>
                            </div>--%>
                        
                        <!-- Popular Post -->
                        <div class="blog/popular-post widget wow fadeInUp">
                            <!-- Title -->
                            <h2>Most Popular Posts</h2>
                            <ul runat="server" id="PopularList" class="popular-list">
                                
                            </ul>
                        </div><!-- Popular Post Ends-->
                        
                        <!-- Newest Posts -->
                        <div class="blog/popular-post widget wow fadeInUp">
                            <!-- Title -->
                            <h2>Latest Additions</h2>
                            <ul runat="server" id="RecentList" class="popular-list">
                               
                            </ul>
                        </div><!-- Newest Post Ends-->
                        
                        
                        <!-- Cuisine List -->
                        <div class="category widget wow fadeInUp">
                            <!-- Title -->
                            <h2>Categories</h2>
                            <ul runat="server" id="CuisineList" class="category-list">
                               
                            </ul>
                        </div><!-- Cuisine Ends-->
                        
                    </div>
                    
                </div><!-- Blog Sidebar Ends -->
            <!-- Blog Left Side Ends -->
                <div runat="server" id="PostArea" CssClass="row">

                </div>
                    <!-- Blog Sidebar Begins -->
                    
        </div>
        </div>
    </section>
    <!-- Our Blog Section Ends -->

  
    <!--Main Footer-->
    <footer class="main-footer">
    	<!--Footer Upper-->
    	<div class="footer-upper">
        	<div class="auto-container">
            	<div class="row clearfix">
                	
                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                    	<div class="footer-widget contact-widget">
                        	<h3>Contact Us</h3>
                        	<div class="text">Tired of your normal day recipe's? Try something new. </div>
                            <ul class="info">
                            	<li><strong>Email</strong> <a href="mailto:meeton@email.com">burp@cookaroo.com</a></li>
                                <li><strong>Phone</strong> <a href="#">+49 123 456 789</a></li>
                                <li><strong>Fax</strong> +49 123 456 789</li>
                            </ul>
                        </div>
                    </div>
                    
                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms">
                    	<div class="footer-widget services-widget">
                        	<h3>Our Clients</h3>
                        	<ul class="links">
                            	<li><a href="#">Dominos Pizza</a></li>
                                <li><a href="#">August Spice</a></li>
                                <li><a href="#">Taco Bell</a></li>
                                <li><a href="#">Sagar Ratna</a></li>
                                <li><a href="#">Taj Hotels</a></li>
                                <li><a href="#">Foodpanda.com</a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms">
                    	<div class="footer-widget support-widget">
                        	<h3>Site Map</h3>
                        	<ul class="links">
                            	<li><a href="Default.aspx">Home</a></li>
                                <li><a href="BlogLoader.aspx">Our Posts</a></li>
                                <li><a href="FAQ.aspx">FAQ</a></li>
                                <li><a href="Contact.aspx">Contact Us</a></li>
                                <li><a href="MyProfile.aspx">My Profile</a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                    	<div class="footer-widget newsletter-widget">
                        	<h3>Newsletter</h3>
                        	<div class="text">We send out tasty newsletters everymonth with a Coupon Code. Subscribe below to receive one.</div>
                            
                            <div class="form">
                            	<form method="post" action="http://wp1.themexlab.com/html/meeton-new-with-files/index.html">
                                	<div class="form-group">
                                    	<input type="email" name="email" value="" placeholder="Enter your email address" required autocomplete="off">
                                        <button type="submit" name="submit" class="hvr-bounce-to-right"><span class="fa fa-paper-plane"></span></button>
                                    </div>
                                </form>
                            </div>
                            
                            <div class="social-links wow fadeInRight" data-wow-delay="1000ms" data-wow-duration="1500ms">
                            	<a href="#"><span class="fa fa-facebook-f"></span></a>
                                <a href="#"><span class="fa fa-twitter"></span></a>
                                <a href="#"><span class="fa fa-google"></span></a>
                                <a href="#"><span class="fa fa-pinterest-p"></span></a>
                                <a href="#"><span class="fa fa-instagram"></span></a>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        
        
        <!--Footer Lower-->
        <div class="footer-lower">
        	<div class="auto-container">
            	<div class="row clearfix">
                	
                    <!--Footer Logo-->
                    <div class="col-md-4 col-sm-4 col-xs-12 footer-logo wow bounceInLeft" data-wow-delay="200ms" data-wow-duration="1500ms">
                    	<a href="#"><img src="images/pablo.png" alt=""></a>
                    </div>
                    
                    <!--Footer Nav-->
                    <div class="col-md-8 col-sm-8 col-xs-12 footer-nav wow bounceInRight" data-wow-delay="200ms" data-wow-duration="1500ms">
                    	:)
                    </div>
                    
                </div>
            </div>
        </div>
        
        
        <!--Footer Bottom-->
        <div class="footer-bottom">
        	<div class="auto-container">
            	<div class="row clearfix">
                    <div class="col-md-12 col-sm-12 col-xs-12 footer-logo">Copryright 2017 by Cook - A - Roo | All rights reserved</div>
                </div>
            </div>
        </div>
        
    </footer>
    
</div>
<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top"></div>


<script src="js/jquery.js"></script> 
<script src="js/bootstrap.min.js"></script>
<script src="js/revolution.min.js"></script>
<script src="js/bxslider.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/wow.js"></script>
<script src="js/jquery.countdown.js"></script>
<script src="js/script.js"></script>


<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-15521914-3', 'auto');
  ga('send', 'pageview');

</script>
</form>
</body>

<!-- Mirrored from wp1.themexlab.com/html/meeton-new-with-files/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Jan 2017 06:00:31 GMT -->
</html>
