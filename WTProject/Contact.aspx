﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WTProject.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!DOCTYPE html>

<!-- Mirrored from wp1.themexlab.com/html/meeton-new-with-files/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Jan 2017 06:01:06 GMT -->
<meta charset="utf-8">
<title>Cook - A - Roo | Khao aur Khilao | Contact Us</title>
<!-- Stylesheets -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/revolution-slider.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link href="css/responsive.css" rel="stylesheet" >
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>
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
                        <li class="current"><a href="Default.aspx">Home</a>          
                        </li>
                        <li><a href="About.aspx">About</a>                            
                        </li>
                        <li><a href="BlogLoader.aspx">Posts</a></li>
                            
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
    <section class="page-banner" style="background-image:url(images/background/page-banner.jpg);">
    	<div class="auto-container">
        	<h1>Contact us</h1>
        </div>
    </section>
    
    <!--Contact Section-->
    <section class="contact-section">
    	<div class="auto-container">
        	
            <div class="row clearfix">
            	
                <!--Map Area-->
            	<div class="col-md-9 col-sm-7 col-xs-12">
                	<div class="map-area" id="map-location"></div>
                </div>
                
                <!--Contact Info-->
                <div class="col-md-3 col-sm-5 col-xs-12">
                	<div class="contact-info">
                    	<h3>Contact Us</h3>
                    	<div class="text">Interested for a Collaboration? Created a new recipe? Hit us up!</div>
                    	<ul class="info">
                            <li><strong>Email</strong> <a href="mailto:burp@cookaroo.com">burp@cookaroo.com</a></li>
                            <li><strong>Phone</strong> <a href="#">+49 123 456 789</a></li>
                            <li><strong>Fax</strong> +49 123 456 789</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!--Contact Form Area-->
            <div class="row clearfix">
            	<div class="col-md-9 col-sm-12 col-xs-12 contact-form wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms">
                		
                        <!--Contact Form-->
                        <form id="contactform" runat="server">
                        	<div class="row clearfix">
                                
                                <div class="col-md-5 col-sm-6 col-xs-12">
                                    
                                    <div class="form-group">
                                    	<label class="form-label">Name</label>
                                        <input id="NameTextBox" type="text" name="username" placeholder="Enter Your Name" runat="server">
                                    </div>
                                    
                                    <div class="form-group">
                                    	<label class="form-label">Email</label>
                                        <input id="EmailTextBox" type="email" name="email"  placeholder="Enter Your Email Address" runat="server"/>
                                    </div>
                                    
                                    <div class="clearfix"></div>
                                    
                                    <div class="form-group">
                                    	<label class="form-label">Subject</label>
                                        <input id="SubjectTextBox" type="text" name="subject" placeholder="Enter a Subject" runat="server"/>
                                    </div>
                                    
                                </div>
                                
                                <div class="col-md-7 col-sm-6 col-xs-12">
                                    
                                    <div class="form-group">
                                    	<label class="form-label">Message</label>
                                        <textarea name="message" id="MessageTextArea" placeholder="Type Your Message Here" runat="server"></textarea>
                                    </div>
                                    
                                </div>
                                
                            </div>
                            
                            <div class="form-group text-right">
                                <asp:Button ID="Button1" CssClass="theme-btn btn-style-one hvr-bounce-to-right fa fa-envelope" runat="server" Text="Send Feedback" OnClick="Button1_Click1" />
                            </div>
                            
                        </form>
                        
                    </div>
                </div>
                
            </div>
        
    </section>
   
        
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
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="js/googlemaps.js"></script>
<script src="js/validate.js"></script>
<script src="js/script.js"></script>


<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-15521914-3', 'auto');
  ga('send', 'pageview');

</script>

</body>

<!-- Mirrored from wp1.themexlab.com/html/meeton-new-with-files/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Jan 2017 06:01:09 GMT -->
</html>
