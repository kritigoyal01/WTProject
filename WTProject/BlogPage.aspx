﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlogPage.aspx.cs" Inherits="WTProject.BlogPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


<!-- Mirrored from wp1.themexlab.com/html/meeton-new-with-files/blog-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Jan 2017 06:00:53 GMT -->
<meta charset="utf-8">
<title>Meeton - Conference & Event HTML5 Template | Blog Details</title>
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
<div class="page-wrapper">
 	
    <!-- Preloader -->
    <div class="preloader"></div>
 	
    <!-- Main Header -->
    <header class="main-header">
        <div class="auto-container clearfix">
            <!--Logo-->
            <div class="logo"><a href="Default.aspx"><img src="images/logo.jpg" alt="Cook-a-roo" title="Cook-a-roo"></a></div>
            
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
    <section class="page-banner" style="background-image:url(images/background/blog3.jpg);">
    	<div class="auto-container">
        	<h1>Blog Details</h1>
        </div>
    </section>
    
	<!-- Blog Section Begins -->
    <section id="blog" class="blog-area single section">
        <div class="auto-container">
            <div class="row">
                <!-- Blog Left Side Begins -->
                <div class="col-md-8">
                    <!-- Post -->
                    <div class="post-item">
                        <!-- Post Title -->
                        <h2 class="wow fadeInLeft"><asp:Label ID="lb1" runat="server" ></asp:Label></h2>
                        <div class="post wow fadeInUp">
                            <!-- Image -->
                            <!--<img class="img-responsive" src="images/blog/1.jpg" alt="" />-->
                            <img src="" id ="headimage" runat="server" class="img-responsive" />
                            <div class="post-content wow fadeInUp">	
                                <!-- Meta -->
                                <div runat="server" id="detailSection" class="posted-date"></div>
                                <!-- Text -->
                                <asp:Label ID="lb2" runat="server" ></asp:Label>
                               <!-- <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It has survived not only five centuries. </p>
                                <p><i>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</i></p>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                                <!-- Heading -->
                                <!--<h5>Managing Your Credit Cards</h5>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                                --><div class="share-btn">
                                    <a href="#" class="btn fb-bg">Share on <b>Facebook</b></a>
                                    <a href="#" class="btn twitter-bg">Share on <b>Twitter</b></a>
                                </div>
                            </div>
                        </div>
                    </div><!-- End Post -->	
                    
                    <!-- Author Section -->
                    <h2 class="wow fadeInLeft">About the author</h2>
                    <div style="height:300px" runat="server" id="authorData" class="author wow fadeInUp">
                  
                        							
                    </div><!-- Author Section Ends-->

                    <!-- Comment Section -->
                    <div class="post-comments">
                        <!-- Heading -->
                        <div class="title-head wow fadeInUp" > <asp:Label ID="total" runat="server"></asp:Label></div>
                            <ul id="CommentList" class="comment-list" runat="server">
                                
                            </ul>
                    </div>
                    
                    
                    <!-- Add Your Comments -->
                    <div class="comments-form wow fadeInUp">
                        <!-- Heading -->
                        <div class="title-head">Add Your Comment</div>
                        <!-- Form -->
                        <div class="row form">
                            <div class="col-sm-12">
                                <form class="comment-area" runat="server">
                              
                                <div class="form-group">
                                    <asp:TextBox runat="server" TextMode="MultiLine" Columns="50" Rows="10" id="message" class="form-control"  placeholder="Your Comment"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="comment required"
                                    SetFocusOnError="true" ForeColor="Red" ControlToValidate="message" ></asp:RequiredFieldValidator>
                                </div>
                                <div class="text-right">
                                    <asp:Button  runat="server" Text="Add Comment" OnClick="SubmitOnClick"></asp:Button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                </div><!-- Blog Left Side Ends -->
                
                
                <!-- Blog Sidebar Begins -->
                <div class="col-md-4">
                
                    <div class="sidebar">
                    
                        <!-- Search -->
                        <div class="search wow fadeInUp">
                            <form>
                                <input type="search" name="name" placeholder="SEARCH..">
                                <input type="submit" value="submit">
                            </form>
                        </div>
                        
                        <!-- Popular Post -->
                        <div class="blog/popular-post widget wow fadeInUp">
                            <!-- Title -->
                            <h2>most popular posts</h2>
                            <ul class="popular-list">
                                <!-- Item -->
                                <li>
                                    <!-- Post Image -->
                                    <a href="#"><img src="images/blog/popular-post/1.jpg" alt="" /></a>
                                    <!-- Details -->
                                    <div class="content">
                                        <h3><a href="#">Lorem ipsum blog post</a></h3>
                                        <div class="posted-date">July 19, 2014</div>
                                    </div>
                                </li>
                                <!-- Item -->
                                <li>
                                    <!-- Post Image -->
                                    <a href="#"><img src="images/blog/popular-post/2.jpg" alt="" /></a>
                                    <!-- Details -->
                                    <div class="content">
                                        <h3><a href="#">Lorem ipsum blog post</a></h3>
                                        <div class="posted-date">July 19, 2014</div>
                                    </div>
                                </li>
                                <!-- Item -->
                                <li>
                                    <!-- Post Image -->
                                    <a href="#"><img src="images/blog/popular-post/3.jpg" alt="" /></a>
                                    <!-- Details -->
                                    <div class="content">
                                        <h3><a href="#">Lorem ipsum blog post</a></h3>
                                        <div class="posted-date">July 19, 2014</div>
                                    </div>
                                </li>
                                <!-- Item -->
                                <li>
                                    <!-- Post Image -->
                                    <a href="#"><img src="images/blog/popular-post/4.jpg" alt="" /></a>
                                    <!-- Details -->
                                    <div class="content">
                                        <h3><a href="#">Lorem ipsum blog post</a></h3>
                                        <div class="posted-date">July 19, 2014</div>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- Popular Post Ends-->
                        
                        <!-- Newest Posts -->
                        <div class="blog/popular-post widget wow fadeInUp">
                            <!-- Title -->
                            <h2>Newest posts</h2>
                            <ul class="popular-list">
                                <!-- Item -->
                                <li>
                                    <!-- Post Image -->
                                    <a href="#"><img src="images/blog/popular-post/1.jpg" alt="" /></a>
                                    <!-- Details -->
                                    <div class="content">
                                        <h3><a href="#">Lorem ipsum blog post</a></h3>
                                        <div class="posted-date">July 19, 2014</div>
                                    </div>
                                </li>
                                <!-- Item -->
                                <li>
                                    <!-- Post Image -->
                                    <a href="#"><img src="images/blog/popular-post/2.jpg" alt="" /></a>
                                    <!-- Details -->
                                    <div class="content">
                                        <h3><a href="#">Lorem ipsum blog post</a></h3>
                                        <div class="posted-date">July 19, 2014</div>
                                    </div>
                                </li>
                                <!-- Item -->
                                <li>
                                    <!-- Post Image -->
                                    <a href="#"><img src="images/blog/popular-post/3.jpg" alt="" /></a>
                                    <!-- Details -->
                                    <div class="content">
                                        <h3><a href="#">Lorem ipsum blog post</a></h3>
                                        <div class="posted-date">July 19, 2014</div>
                                    </div>
                                </li>
                                <!-- Item -->
                                <li>
                                    <!-- Post Image -->
                                    <a href="#"><img src="images/blog/popular-post/4.jpg" alt="" /></a>
                                    <!-- Details -->
                                    <div class="content">
                                        <h3><a href="#">Lorem ipsum blog post</a></h3>
                                        <div class="posted-date">July 19, 2014</div>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- Newest Post Ends-->
                        
                        
                        <!-- Category Posts -->
                        <div class="category widget wow fadeInUp">
                            <!-- Title -->
                            <h2>Categories</h2>
                            <ul class="category-list">
                                <li>
                                    <h3><a href="#">Asset Protection</a></h3>
                                </li>
                                <li>
                                    <h3><a href="#">Bankruptcy</a></h3>
                                </li>
                                <li>
                                    <h3><a href="#">Bankruptcy Alternatives</a></h3>
                                </li>
                                <li>
                                    <h3><a href="#">Clients</a></h3>
                                </li>
                                <li>
                                    <h3><a href="#">Credit Cards</a></h3>
                                </li>
                                <li>
                                    <h3><a href="#">Pilates</a></h3>
                                </li>
                                <li>
                                    <h3><a href="#">Running</a></h3>
                                </li>
                                <li>
                                    <h3><a href="#">Estate Planning</a></h3>
                                </li>
                            </ul>
                        </div><!-- Category Ends-->
                        
                    </div>
                    
                </div><!-- Blog Sidebar Ends -->
                
            </div>
        
        </div>
    </section><!-- Our Blog Section Ends -->
	
    
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

</body>

<!-- Mirrored from wp1.themexlab.com/html/meeton-new-with-files/blog-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Jan 2017 06:01:03 GMT -->
</html>
