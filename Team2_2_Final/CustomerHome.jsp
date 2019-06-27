<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<!--start top-bar-->

<!--end top-bar-->

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
                    <li><a href="xyz.jsp">Check</a></li>    
                    </ul>
                </li>
                <!--Find My Flight-->
                <li class="visible-lg"><span><a href="CustomerLogin.jsp" class="btn btn_order_now">Log In</a></span></li>
            </ul>
        </div>
    </div>
</nav>
<!--navigation end here-->
	
<!--inner body start from here-->
<div class="inner-body">
    <div class="wrapper-index-hotels">
        <div class="wrapper-inner">
            <!--text-box-->
            <div class="row scroll-text hidden-xs">
                <div class="col-sm-12">

                </div>
                <div class="col-sm-12">
                    <div class="text-box hidden-xs">
                        <h3>
                            <span>Travel</span>  <br>
                            THE WORLD YOU <br> NEVER SEEN <i class="fa fa-car"></i> <br>

                        </h3>

                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="text-box">
                        <h3>
                            <span>Hotels</span> <br>
                            We Provide best    <span><i class="fa fa-globe"></i> </span> quality?
                        </h3>
                    </div>
                </div>
            </div>
            <div class="container">
                <!--main-fill-->
                
            </div>
        </div>
    </div>
    <!--wrapper index-->
    <div class="container">
        <div class="row">
            <div class="col-md-12 " >
                <div class="name_pakg text-left animate-reveal" style="margin-top:10px">Featured <span>Tour</span> Packages</div>
            </div>
            <div class="col-md-4 col-sm-6">
                <!--tour_pak-->
                <div class="tour_pak animate-reveal ">
                    <div class="overflow-outer">
                        <div class="overflow-inner">
                            <span class="pull-left"><a href="#">Florence day</a></span>
                            <span class="pull-right">$<span class="counter">540.00</span></span>
                        </div>
                    </div>
                    <img src="img1/tour-pak-2.jpg" alt="tour img" class="img-responsive">
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <!--tour_pak-->
                <div class="tour_pak animate-reveal ">
                    <div class="overflow-outer">
                        <div class="overflow-inner">
                            <span class="pull-left"><a href="#">Rome City Tour</a></span>
                            <span class="pull-right">$<span class="counter">3340.00</span></span>
                        </div>
                    </div>
                    <img src="img1/tour-pak-3.jpg" alt="tour img" class="img-responsive">
                </div>
            </div>
            <div class="col-md-4 hidden-sm">
                <!--tour_pak-->
                <div class="tour_pak animate-reveal">
                    <div class="overflow-outer">
                        <div class="overflow-inner">
                            <span class="pull-left"><a href="#">Colosseum</a></span>
                            <span class="pull-right">$<span class="counter">540.00</span></span>
                        </div>
                    </div>
                    <img src="img1/tour-pak-1.jpg" alt="tour img" class="img-responsive">
                    <span class="pop-feat-two hidden-xs">10% Discount</span>
                </div>
            </div>
            <div class="col-md-12">
                <!--btn_view_all-->
                <div class="btn_view_all">
                    <p> <a href="PackageListController" class="btn btn-view-all"> <i class="fa fa-eye"></i>View All Packages(<span class="counter">60</span>)</a></p>
                </div>
            </div>
        </div>
    </div>
    

   
    
    <!--name_pakg-->
    <div class="popular_hotel_wrapper">
        <div class="container">
            <div class="name_pakg text-center animate-reveal" >Popular <span>Hotels</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu tempor velit. <br>
                    consectetur adipiscing elit. Mauris eu tempor velit. </p></div>
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <!--popular_hotel_box-->
                    <div class="popular_hotel_box animate-reveal">
                        <div class="img">
                            <a href="#">
                            <img src="img1/place-hotel-2.jpg" alt="place" class="img-responsive">
                            </a>

                        </div>
                        <div class="hotel_detail">
                            <div class="hotel-name">
                                <h4>Florence da</h4>
                                <p><i class="fa fa-map-marker"></i> Sabi sand- south Africa</p>
                            </div>
                            <div class="pull-left">Price per night from: </div> <div class="pull-right">$400.00</div>
                            <p>
                                Nunc et venenatis nibh, sed accumsan libero Quisque augue neque, augue neque, pretium <a href="#"><b>More Info</b></a>
                            </p>
                            <div class="book-now">
                                <a href="#" class="btn btn_book_now">book now</a>
                            </div>
                        </div>
                    </div>
                    <!--end popular_hotel_box-->
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <!--popular_hotel_box-->
                    <div class="popular_hotel_box animate-reveal">
                        <div class="img">
                            <a href="#">
                            <img src="img1/place-hotel-4.jpg" alt="place" class="img-responsive">
                            </a>

                        </div>
                        <div class="hotel_detail">
                            <div class="hotel-name">
                                <h4>Florence da</h4>
                                <p><i class="fa fa-map-marker"></i> Sabi sand- south Africa</p>
                            </div>
                            <div class="pull-left">Price per night from: </div> <div class="pull-right">$400.00</div>
                            <p>
                                Nunc et venenatis nibh, sed accumsan libero Quisque augue neque, augue neque, pretium <a href="#"><b>More Info</b></a>
                            </p>
                            <div class="book-now">
                                <a href="#" class="btn btn_book_now">book now</a>
                            </div>
                        </div>
                    </div>
                    <!--end popular_hotel_box-->
                </div>
                <div class="col-md-4 hidden-sm col-xs-12">
                    <!--popular_hotel_box-->
                    <div class="popular_hotel_box animate-reveal">
                        <div class="img">
                            <a href="#">
                            <img src="img1/place-hotel-3.jpg" alt="place" class="img-responsive">
                                </a>

                        </div>
                        <div class="hotel_detail">
                            <div class="hotel-name">
                                <h4>Five Start</h4>
                                <p><i class="fa fa-map-marker"></i> Sabi sand- south Africa</p>
                            </div>
                            <div class="pull-left">Price per night from: </div> <div class="pull-right">$400.00</div>
                            <p>
                                Nunc et venenatis nibh, sed accumsan libero Quisque augue neque, augue neque, pretium <a href="#"><b>More Info</b></a>
                            </p>
                            <div class="book-now">
                                <a href="#" class="btn btn_book_now">book now</a>
                            </div>
                        </div>
                    </div>
                    <!--end popular_hotel_box-->
                </div>
                <div class="btn_view_all no-margin">
                    <p> <a href="#" class="btn btn-view-all animate-reveal"> <i class="fa fa-eye"></i>See More (60)</a></p>
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
                        <%System.out.println(request.getAttribute("customer_id")); %>
                            <%if (session.getAttribute("customer_id")!=null){ %>
                            <li><a href="CustomerLogin.jsp"><i class="fa fa-hand-o-right"></i> Log In</a></li>
                            <%}
                            else {%>
                            	<li><a href="CustomerLogin.jsp"><i class="fa fa-hand-o-right"></i> Log Out</a></li>
                            <% }
                            %>
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