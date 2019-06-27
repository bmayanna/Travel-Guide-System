<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
                    <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;"> <i class="fa fa-th-list"></i>Offers
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                    <li><a href="#">  Special Discounts for Members</a></li>
                        <li><a href="#l">  25% off on Discover</a></li>
                        <li><a href="#">  Student Discount</a></li>
                        <li><a href="#">  Find more Offers</a></li>
                        
                    </ul>
                </li>
                <!--Find My Flight-->
                <li class="visible-lg"><span><a href="CustomerLogin.jsp" class="btn btn_order_now">Log In</a></span></li>
            </ul>
        </div>
    </div>
</nav>

<div class="inner-body">
    <div class="login_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6 col-md-offset-15" style="margin-top:170px; margin-bottom:300px">
                    <div class="login-widget animte-reavel">
                            <div class="sec-img" style="height:200px">
                                <h3>Provide Details</h3>
                            </div>
                        <div class="login-box" style="margin-bottom: 50px">
                            	<form action="registercustomerservlet" method="post" name="form1">
                                <div class="form-group">
                                 <h2>Registration Form</h2>
                                   </div>
                                
                                <div class="form-group">
                                  <span><i class="fa fa-user"></i></span> 
                                   <input type="text" class="form-control" placeholder="Customer Username" name="username" required="required">
                                </div>
                                
                                <div class="form-group">
                                  <span><i class="fa fa-user"></i></span> 
                                   <input type="text" class="form-control" placeholder="First Name" name="firstname" required="required">
                                </div>
                                
                                <div class="form-group">
                                  <span><i class="fa fa-user"></i></span> 
                                   <input type="text" class="form-control" placeholder="Last Name" name="lastname" required="required">
                                </div>
                                
                                <div class="form-group">
                                  <span><i class="fa fa-user"></i></span> 
                                   <input type="text" class="form-control" placeholder="Email" name="email" required="required">
                                </div>
                                
                                <div class="form-group">
                                  <span><i class="fa fa-lock"></i></span> 
                                   <input type="password" class="form-control" placeholder="Password" name="password" required="required">
                                </div>
                                
                                <div class="form-group">
                                  <span><i class="fa fa-user"></i></span> 
                                   <input type="text" class="form-control" placeholder="Contact Number" name="contactnumber" required="required">
                                </div>
                                
                                <div class="form-group">
                                  <span><i class="fa fa-user"></i></span> 
                                   <input type="text" class="form-control" placeholder="Address" name="address" required="required">
                                </div>
                                
                                <div class="form-group">
                                  <span><i class="fa fa-user"></i></span> 
                                   <input type="text" class="form-control" placeholder="City" name="city" required="required">
                                </div>
                                
                                <div class="form-group">
                                  <span><i class="fa fa-user"></i></span> 
                                   <input type="text" class="form-control" placeholder="State" name="state" required="required">
                                </div>
                                
                                <div class="form-actions clearfix">
                                   
                                    <div class="submit-form text-center">
                                        <input type="submit" value="Register" class="btn submit-btn">
                                       	<input type="reset" value="Reset" class="btn submit-btn">
                                        <%
										try {
											String message = request.getAttribute("message").toString();

											if ("".equals(message) == false) {
												out.print("<tr><td colspan='2' align = 'center'><span style= 'color : red'>" + message
														+ "</span></td></tr>");
											}
										} catch (Exception e) {
											e.printStackTrace();
										}
									%>
                                    </div>
                                    
                                </div>
                            </form>
                        </div>
                      
                        <div><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></div>
                    </div><div></div>
                </div>
            </div>
        </div>
    </div>
</div>


<!--footer start here-->
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
<script src="js1/parallax/parallax.min.js"></script>
<script src="js1/jqwidgets/scripts/date-picker.js"></script>
<script src="js1/slick.min.js"></script>
<script src="js1/custom.js"></script>
<!--end script files-->
</body>
</html>