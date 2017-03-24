﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WTProject.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!DOCTYPE html>

<!-- Mirrored from wp1.themexlab.com/html/meeton-new-with-files/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Jan 2017 06:01:06 GMT -->
<meta charset="utf-8">
<title>Meeton - Conference & Event HTML5 Template | Contact Us</title>
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
            <div class="logo"><a href="index.html"><img src="images/logo.jpg" alt="Meeton" title="Meeton"></a></div>
            
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
                        <li class="dropdown"><a href="index.html">Home</a>
                            <ul class="submenu">
                                <li><a href="index.html">Home Style One</a></li>
                                <li><a href="index-2.html">Home Style Two</a></li>
                                <li><a href="index-3.html">Home Style Three</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="about.html">About</a>
                            <ul class="submenu">
                                <li><a href="services.html">Services</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="#">pages</a>
                            <ul class="submenu">
                                <li><a href="faq.html">FAQ</a></li>
                                <li class="dropdown"><a href="testimonials-v1.html">Testimonials</a>
                                    <ul class="submenu">
                                        <li><a href="testimonials-v1.html">Testimonials V1</a></li>
                                        <li><a href="testimonials-v2.html">Testimonials V2</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="gallery-style-one.html">Gallery</a>
                                    <ul class="submenu">
                                        <li><a href="gallery-style-one.html">Gallery Style One</a></li>
                                        <li><a href="gallery-style-two.html">Gallery Style Two</a></li>
                                        <li><a href="gallery-style-three.html">Gallery Style Three</a></li>
                                        <li><a href="gallery-style-four.html">Gallery Style Four</a></li>
                                    </ul>
                                </li>
                                <li><a href="ticket.html">Ticket</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="schedule.html">Schedule</a>
                            <ul class="submenu">
                                <li><a href="schedule.html">Schedule Style One</a></li>
                                <li><a href="schedule-2.html">Schedule Style Two</a></li>
                                <li><a href="single-event.html">Single Event</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="speakers.html">Speakers</a>
                            <ul class="submenu">
                                <li><a href="speakers.html">Speakers Style One</a></li>
                                <li><a href="speakers-2-col.html">Speakers Style Two</a></li>
                                <li><a href="speakers-2-col-styled.html">Speakers Style Three</a></li>
                                <li><a href="speakers-3-col.html">Speakers Style Four</a></li>
                                <li><a href="speakers-3-col-styled.html">Speakers Style Five</a></li>
                                <li><a href="single-speaker.html">Single Speaker</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="sponsors.html">Sponsors</a>
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
                        </li>
                        <li class="current "><a href="contact.html">Contact</a></li>
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
                    	<h3>Contact</h3>
                    	<div class="text">If you are in the middle of something and you don’t want to miss that important call that could be the start of an exciting new business.</div>
                    	<ul class="info">
                            <li><strong>Email</strong> <a href="mailto:meeton@email.com">meeton@email.com</a></li>
                            <li><strong>Phone</strong> <a href="#">+49 123 456 789</a></li>
                            <li><strong>Fax</strong> +49 123 456 789</li>
                            <li><strong>Website</strong> <a href="http://www.envato.com/">http://www.envato.com</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!--Contact Form Area-->
            <div class="row clearfix">
            	<div class="col-md-9 col-sm-12 col-xs-12 contact-form wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms">
                		
                        <!--Contact Form-->
                        <form id="contact-form" method="post" action="http://wp1.themexlab.com/html/meeton-new-with-files/sendemail.php">
                        	<div class="row clearfix">
                                
                                <div class="col-md-5 col-sm-6 col-xs-12">
                                    
                                    <div class="form-group">
                                    	<label class="form-label">Name</label>
                                        <input type="text" name="username" value="" placeholder="Enter Your Name">
                                    </div>
                                    
                                    <div class="form-group">
                                    	<label class="form-label">Email</label>
                                        <input type="email" name="email" value="" placeholder="Enter Your Email Address">
                                    </div>
                                    
                                    <div class="clearfix"></div>
                                    
                                    <div class="form-group">
                                    	<label class="form-label">Subject</label>
                                        <input type="text" name="subject" value="" placeholder="Enter a Subject">
                                    </div>
                                    
                                </div>
                                
                                <div class="col-md-7 col-sm-6 col-xs-12">
                                    
                                    <div class="form-group">
                                    	<label class="form-label">Message</label>
                                        <textarea name="message" placeholder="Type Your Message Here"></textarea>
                                    </div>
                                    
                                </div>
                                
                            </div>
                            
                            <div class="form-group text-right">
                                <button type="submit" name="submit-form" class="theme-btn btn-style-one hvr-bounce-to-right"><span class="fa fa-envelope"></span> Send Message</button>
                            </div>
                            
                        </form>
                        
                    </div>
                </div>
                
            </div>
        
    </section>
    
    
    <!--Intro Section-->
    <section class="intro-section" style="background-image:url(images/parallax/image-1.jpg);">
    	<div class="auto-container">
        	<div class="row clearfix">
                <div class="col-md-8 col-sm-8 col-xs-12 text-content">
                	<h2>ARE YOU READY TO MANAGE YOUR OWN EVENTS?</h2>
                	<div class="text">All of our virtual professionals are highly experienced in the areas in which they work and have been through a thorough recruitment process.</div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12 text-right">
                	<a href="#" class="theme-btn btn-style-one hvr-bounce-to-right"><span class="fa fa-play"></span>SIGN UP TODAY</a>
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
                        	<div class="text">If you are in the middle of something and you don’t want to miss that important call that could be the start of an exciting new business.</div>
                            <ul class="info">
                            	<li><strong>Email</strong> <a href="mailto:meeton@email.com">meeton@email.com</a></li>
                                <li><strong>Phone</strong> <a href="#">+49 123 456 789</a></li>
                                <li><strong>Fax</strong> +49 123 456 789</li>
                                <li><strong>Website</strong> <a href="http://www.envato.com/">http://www.envato.com</a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms">
                    	<div class="footer-widget services-widget">
                        	<h3>Our Services</h3>
                        	<ul class="links">
                            	<li><a href="#">Startup &amp; business meetings</a></li>
                                <li><a href="#">Learning courses for beginners</a></li>
                                <li><a href="#">Phone calling conferences</a></li>
                                <li><a href="#">Business speeches &amp; presentations</a></li>
                                <li><a href="#">Clients &amp; customer meetings</a></li>
                                <li><a href="#">Rent a business conference room</a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="1500ms">
                    	<div class="footer-widget support-widget">
                        	<h3>Our Support</h3>
                        	<ul class="links">
                            	<li><a href="#">How to get started?</a></li>
                                <li><a href="#">Frequently asked questions</a></li>
                                <li><a href="#">Customer testimonials</a></li>
                                <li><a href="#">Create a personal account</a></li>
                                <li><a href="#">Create a company account</a></li>
                                <li><a href="#">Help &amp; Support Center</a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="600ms" data-wow-duration="1500ms">
                    	<div class="footer-widget newsletter-widget">
                        	<h3>Newsletter</h3>
                        	<div class="text">We believe that analysis of your company and your customers is key in responding effectively.</div>
                            
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
                    	<a href="#"><img src="images/logo.png" alt=""></a>
                    </div>
                    
                    <!--Footer Nav-->
                    <div class="col-md-8 col-sm-8 col-xs-12 footer-nav wow bounceInRight" data-wow-delay="200ms" data-wow-duration="1500ms">
                    	<ul>
                        	<li><a href="#">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Meetings</a></li>
                            <li><a href="#">Schedule</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                    
                </div>
            </div>
        </div>
        
        
        <!--Footer Bottom-->
        <div class="footer-bottom">
        	<div class="auto-container">
            	<div class="row clearfix">
                    <div class="col-md-12 col-sm-12 col-xs-12 footer-logo">Copryright 2015 by Meeton | All rights reserved</div>
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
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var $_Tawk_API={},$_Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/569cfc09aeafd72017dd6ea9/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->

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