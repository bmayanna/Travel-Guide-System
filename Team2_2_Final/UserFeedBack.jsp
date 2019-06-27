<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.ArrayList" %> 
   <%@ page import="org.apache.tomcat.util.codec.binary.Base64" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Travel Web Template">
    <meta name="keywords" content="Travel Template,Flight Template,Cars Template,Hotels Template,Responsive Template">
    <meta name="author" content="M.Bilal">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Gateway</title>
    <!--styles files-->
    <link href="css1/font-awesome.min.css" rel="stylesheet">
    <link href="css1/bootstrap.min.css" rel="stylesheet">
    <link href="css1/jqx.base.css" rel="stylesheet">
    <link href="css1/animate.css" rel="stylesheet">
    <link href="css1/select2.min.css" rel="stylesheet">
    <link href="css1/slick.css" rel="stylesheet">
    <link href="css1/style.css" rel="stylesheet">
    <!--favicon-->
    <link rel="icon" href="../../favicon.ico">
    <!--end here-->
</head>

<body>
<!--start navigation bar-->
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="CustomerHome.jsp"><img src="img1/logo-v2.png" alt="logo"></a>
        </div>
        <!--navbar-collapse-->
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <!--Home-->
                <li class="dropdown">
                    <a class="dropdown-toggle" href="CustomerHome.jsp"> <i class="fa fa-home"></i>Home
                        </a>
                </li>
                <!--Flights-->
                <li class="dropdown">
                    <a class="dropdown-toggle"  href="selection.jsp"><i class="fa fa-car"></i>Car Rentals
                        </a>
                  
                </li>
                <!--Hotels-->
                <li class="dropdown">
                    <a class="dropdown-toggle" href="hotelselection.jsp"><i class="fa fa-hotel"></i>Hotels
                        </a>
                    
                </li>
                <!--Travels-->
                <li class="dropdown">  
                	            
                    <a class="dropdown-toggle"  href="PackageListController"><i class="fa fa-globe"></i>Packages
                     </a>
						
                </li>
				
                <!--ShortCodes-->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;"> <i class="fa fa-th-list"></i>Feedback
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                   <li><a href="UserFeedBack.jsp">Feedback</a></li>      
                    </ul>
                </li>
                <!--Find My Flight-->
                <li class="visible-lg"><span><a href="CustomerLogin.jsp" class="btn btn_order_now">Log In</a></span></li>
            </ul>
        </div>
    </div>
</nav>
<div class="inner-body">
    <div class="container">
        <div class="row">
           
            <div class="col-md-12 col-xs-12">
                <div class="sort-section-v2 animate-reveal">
                    <div class="row no-margin">
                        
                        
                    </div>
                </div>

                </div>
                <div class="border-box write_review_v2 animate-reveal">
                    <h3>Customer Satisfaction is Utmost Valuable</h3>
                    <div class="row">
                    <form method="post" class="form-horizontal" name="form1" action="FeedBackControllers"  >
                        <div class="col-md-8">
                            <div class="form-group">
                                <label >Is This Your First Time Using Our Website?<span>*</span></label>
                                <select id="visit" name="visit" class="form-control">
								<option value="yes">Yes</option>
  								<option value="No">No</option>
								</select><br>
                                
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label >Could You Please Describe What you were looking forward from us? <span>*</span> </label>
                                <input type="text" name="reason" class="form-control"  required>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                  <label >Did you find what you needed from us?<span>*</span></label>
                                <select id="visit" name="need" class="form-control">
								<option value="yes">Yes</option>
  								<option value="No">No</option>
								</select><br>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Please Tell us How we can improve our services? <span>*</span> </label>
                                <input type="textarea" name="improve" class="form-control"  rows="6" cols="6" required>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label >Was it easy for you to get what you intended at the start<span>*</span></label>
                                <select id="visit" name="easy" class="form-control" >
								<option value="easy">easy</option>
  								<option value="average">average</option>
  								<option value="difficult">difficult</option>								</select><br>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="submit"  value="Leave a Review">
                            </div>
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
<!--end -->
<!--button back to top-->
<div id="back_to_top">
    <div class="button">
        <i class="fa fa-chevron-up"></i>
    </div>
</div>

<footer class="main-footer">
    <!--end button here-->
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="inner-footer">
                    <a href="CustomerHome.jsp"><img src="img1/logo.png" alt="logo" class="img-responsive"></a>
                    <p class="footer-content">
                        
                    </p>
                    <br>
                    <p class="footer-text"><span><a href="#"><i class="fa fa-phone"></i></a></span> Call Us 5182532710  Or 5189862450</p>
                    <p class="footer-text"><span><a href="#"><i class="fa fa-envelope"></i></a></span>  Email travelgateway@gmail.com</p>
                    <p class="footer-text"><span><a href="#"><i class="fa fa-map-marker"></i></a></span> Visit Us - 1400 Washington Ave, Albany, New York, USA</p>
                   
                </div>
            </div>

            <div class="col-md-3 hidden-sm col-xs-12">
                <div class="list-of-nav">
                    <div class="inner-footer1">
                        <h4>PAGES</h4>
                        <ul class="list-unstyled">
                            <li><a href="CustomerHome.jsp"><i class="fa fa-hand-o-right"></i> Home</a></li>
                            <li><a href="#"><i class="fa fa-hand-o-right"></i> About Us</a></li>
                            <li><a href="#"><i class="fa fa-hand-o-right"></i> Contact Us</a></li>
                        
                        </ul>
                    </div>
                </div>
            </div>
             <div class="col-md-3 hidden-sm col-xs-12">
                <div class="list-of-nav">
                    <div class="inner-footer1">
                       <h4>Pages</h4>
                        <ul class="list-unstyled">
                            
                            <li><a href="CustomerLogin.jsp"><i class="fa fa-hand-o-right"></i> Log In</a></li>
                            <li><a href="CustomerRegistration.jsp"><i class="fa fa-hand-o-right"></i> Sign Up</a></li>
                            <li><a href="#"><i class="fa fa-hand-o-right"></i> Coming Soon</a></li>
                           
                        </ul>
                    </div>
                </div>
            </div>
         
            <div class="col-md-3 hidden-sm col-xs-12">
                <div class="inner-footer2">
                    <h4>AMAZING PLACES</h4>
                    <ul class="list-inline list-unstyled">
                        <li>
                            <div class="img-news">
                                <img src="img1/iso-1.jpg" alt="image" class="img-responsive">
                            </div>
                            <div class="content-news">
                                <p><a href="#">Hotel Hyatt having the biggest food festival.</a></p>
                                <small>April 1 - 2017</small>
                            </div>
                        </li>
                        <li>
                            <div class="img-news">
                                <img src="img1/new-index3-3.jpg" alt="image" class="img-responsive">
                            </div>
                            <div class="content-news">
                                <p><a href="#">Visit the Place of the month with special offers</a></p>
                                <small>May - June 2017</small>
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <p class="footer-bottom">&copy; copyright 2017 by Travel Gateway</p>
    <!--button back to top-->

</footer>
<!--footer end here-->

<!--page loader-->


<!--end here-->

<!--script files-->
<script src="js1/jquery.min.js"></script>
<script src="js1/bootstrap.min.js"></script>
<script src="js1/counter-Up-master/jquery.counterup.min.js"></script>
<script src="js1/jqwidgets/scripts/date-picker.js"></script>
<script src="js1/isotop/isotope-docs.min.js"></script>
<script src="js1/select2/select2.js"></script>
<script src="js1/slick.min.js"></script>
<script src="js1/parallax/parallax.min.js"></script>
<script src="js1/scrollreveal.min.js"></script>
<script src="js1/custom.js"></script>
<!--end script files-->

</body>
</html>
