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
    <div class="container">
        <div class="row">
           
            <div class="col-md-12 col-xs-12">
                <div class="sort-section-v2 animate-reveal">
                    <div class="row no-margin">
                        
                        
                    </div>
                </div>
<div class="sort-section-v2 animate-reveal">
                    <div class="row no-margin">
                        <div class="col-md-3 col-sm-6 col-xs-6 no-padding">
                            <select class="select_sorting no-border-right">
                                <option selected="selected">Price</option>
                                <option>High to low</option>
                                <option>low to high</option>
                                <option>AIR BLUE</option>
                                <option>SHAHEEN</option>

                            </select>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 no-padding">
                            <select class="select_sorting no-border-right">
                                <option selected="selected">Airline</option>
                                <option>Major Airline</option>
                                <option>AMIRATES</option>
                                <option>AIR BLUE</option>
                                <option>SHAHEEN</option>
                            </select>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 no-padding">
                            <select class="select_sorting ">
                                <option selected="selected">User Rating</option>
                                <option>High to low</option>
                                <option>low to high</option>
                                <option>AIR BLUE</option>
                                <option>SHAHEEN</option>
                            </select>
                        </div>
                        <div class="col-md-3  col-sm-6 col-xs-6" style="margin-left:10px">
                           <input type="submit" class="btn btn_select-v2" value="Filter">
                        </div>
                    </div>
                </div>
                
                <div class="sort-section-v2 animate-reveal">
                    <div class="row no-margin">
                                              
                        <div class="col-md-3 col-sm-6 col-xs-6 no-padding">
                           <input type="text" name="zipcode" placeholder="Enter the zipcode" class="select_sorting " style="border-color:#ff6c26">
                        </div>
                        <div class="col-md-3  col-sm-6 col-xs-6" style="margin-left:10px">
                           <input type="submit" class="btn btn_select-v2" value="Search near by cars">
                        </div>
                    </div>
                </div>

                <div class="hotels_box_detail_v2 border-box animate-reveal">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="hotel-img-v2">
                                <span class="pop-feature-car">Feature</span>

                                <img  alt="logo" src="img1/place-hotel-2.jpg"></div>
                        </div>
                        <div class="col-md-6">
                            <div class="details-text">
                                <h4> Forte Do Vale<br><small> <i class="fa fa-map-marker"></i> Basatille, france</small></h4>
                            </div>
                            <div class="details-feature">
                                <ul class="list-inline list-unstyled">
                                    <li><i class="fa fa-wifi"></i></li>
                                    <li><i class="fa fa-music"></i></li>
                                    <li><i class="fa fa-television"></i></li>
                                    <li><i class="fa fa-cutlery"></i></li>
                                </ul>
                            </div>
                            <div class="p">
                                <p>Traveling is something everyone would like to experience from a very young age. We are introduced to other countries first by watching television programs held to inform us of different cultures, languages, food and sights other places have. Visiting countries other than your own is extremely interesting. Some travel on business, others to go on holiday. Students also travel to study, to take a post graduate course in a well-known University. </p>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="reviews">
                                <span>270 REVIEWS</span>
                                <ul class="list-inline list-unstyled">
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                </ul>
                            </div>
                            <div class="select-sec">
                                <span>AVG/NIGHT</span>
                                <span class="pri">$620</span>
                                <a href="HotelDetails.jsp" target="_blank" class="btn btn_select-v2">SELECT</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hotels_box_detail_v2 border-box animate-reveal">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="hotel-img-v2">

                                <img  alt="logo" src="img1/place-hotel-4.jpg"></div>
                        </div>
                        <div class="col-md-6">
                            <div class="details-text">
                                <h4> Forte Do Vale<br><small> <i class="fa fa-map-marker"></i> Basatille, france</small></h4>
                            </div>
                            <div class="details-feature">
                                <ul class="list-inline list-unstyled">
                                    <li><i class="fa fa-wifi"></i></li>
                                    <li><i class="fa fa-music"></i></li>
                                    <li><i class="fa fa-television"></i></li>
                                    <li><i class="fa fa-cutlery"></i></li>
                                </ul>
                            </div>
                            <div class="p">
                                <p>Nunc cursus libero purus ac congue ar lorem cursus ut sed vitae pulvinar massa idend porta nequetiam elerisque mi id, consectetur adipi deese cing elit maus fringilla bibe endum.</p>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="reviews">
                                <span>270 REVIEWS</span>
                                <ul class="list-inline list-unstyled">
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                </ul>
                            </div>
                            <div class="select-sec">
                                <span>AVG/NIGHT</span>
                                <span class="pri">$620</span>
                                <a href="HotelDetails.jsp" target="_blank" class="btn btn_select-v2">SELECT</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hotels_box_detail_v2 border-box animate-reveal">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="hotel-img-v2">
                                <span class="pop-feature-car">Feature</span>

                                <img  alt="logo" src="img1/place-hotel-3.jpg"></div>
                        </div>
                        <div class="col-md-6">
                            <div class="details-text">
                                <h4> Forte Do Vale<br><small> <i class="fa fa-map-marker"></i> Basatille, france</small></h4>
                            </div>
                            <div class="details-feature">
                                <ul class="list-inline list-unstyled">
                                    <li><i class="fa fa-wifi"></i></li>
                                    <li><i class="fa fa-music"></i></li>
                                    <li><i class="fa fa-television"></i></li>
                                    <li><i class="fa fa-cutlery"></i></li>
                                </ul>
                            </div>
                            <div class="p">
                                <p>Nunc cursus libero purus ac congue ar lorem cursus ut sed vitae pulvinar massa idend porta nequetiam elerisque mi id, consectetur adipi deese cing elit maus fringilla bibe endum.</p>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="reviews">
                                <span>270 REVIEWS</span>
                                <ul class="list-inline list-unstyled">
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                </ul>
                            </div>
                            <div class="select-sec">
                                <span>AVG/NIGHT</span>
                                <span class="pri">$620</span>
                                <a href="HotelDetails.jsp" target="_blank" class="btn btn_select-v2">SELECT</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hotels_box_detail_v2 border-box animate-reveal">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="hotel-img-v2">

                                <img  alt="logo" src="img1/place-1.jpg"></div>
                        </div>
                        <div class="col-md-6">
                            <div class="details-text">
                                <h4> Forte Do Vale<br><small> <i class="fa fa-map-marker"></i> Basatille, france</small></h4>
                            </div>
                            <div class="details-feature">
                                <ul class="list-inline list-unstyled">
                                    <li><i class="fa fa-wifi"></i></li>
                                    <li><i class="fa fa-music"></i></li>
                                    <li><i class="fa fa-television"></i></li>
                                    <li><i class="fa fa-cutlery"></i></li>
                                </ul>
                            </div>
                            <div class="p">
                                <p>Nunc cursus libero purus ac congue ar lorem cursus ut sed vitae pulvinar massa idend porta nequetiam elerisque mi id, consectetur adipi deese cing elit maus fringilla bibe endum.</p>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="reviews">
                                <span>270 REVIEWS</span>
                                <ul class="list-inline list-unstyled">
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                </ul>
                            </div>
                            <div class="select-sec">
                                <span>AVG/NIGHT</span>
                                <span class="pri">$620</span>
                                <a href="../hotels_details_two/right_sidebar.html" target="_blank" class="btn btn_select-v2">SELECT</a>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" class="btn btn-more-v2 "> <i class="fa fa-eye"></i>Loading More</a>

            </div>
            <div class="col-md-12 col-xs-12">
                <div class="list-sidebar-two animate-reveal">
                    <div class="search-item-two">
                    <span>
                      29 Result Found Matching
                        <br>
                        Your Search.</span>
                    </div>
                    <div class="detail-sidebar-two">
                        <h4>modify search</h4>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Destination?"  value="Paris" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control"  placeholder="Check In" id="datepicker-headers2" required/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control"  placeholder="Check Off" id="datepicker-headers1" required/>
                        </div>
                        <div class="form-group">
                            <button type="button" class="btn btn-collapse" data-toggle="collapse" data-target="#demo1">Price <span class="pull-right"><i class="fa fa-chevron-down"></i> </span></button>
                            <div id="demo1" class="collapse">
                                <p id="amount"></p>
                                <div id="slider-range"></div>
                                <input type="hidden" id="amount1" name="amount1">
                                <input type="hidden" id="amount2" name="amount2">
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="button" class="btn btn-collapse" data-toggle="collapse" data-target="#demo3">Host Language<span class="pull-right"><i class="fa fa-chevron-down"></i> </span></button>

                            <div id="demo3" class="collapse">
                                <div class="checkbox">
                                    <label><input type="checkbox" value="1"> English</label>
                                </div>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="2"> Frensh</label>
                                </div>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="*"> Urdu</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="button" class="btn btn-collapse" data-toggle="collapse" data-target="#demo4">Rooms<span class="pull-right"><i class="fa fa-chevron-down"></i> </span></button>

                            <div id="demo4" class="collapse">
                                <select class="select-list-sidebar">
                                    <option selected="selected">1 Room</option>
                                    <option>2 Room</option>
                                    <option>3 Room</option>
                                    <option>4 Room</option>
                                    <option>5 Room</option>
                                </select>
                            </div>
                        </div>
                        <a href="#" class="btn btn_search">SEARCH AGAIN</a>
                    </div>
                </div>
                <div class="border-box write_review_v2 animate-reveal">
                    <h3>Write a Review</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label >Your Name <span>*</span></label>
                                <input type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label >Your Email <span>*</span> </label>
                                <input type="email" class="form-control"  required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label >Review Title <span>*</span></label>
                                <input type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label >Reviews <span>*</span></label>
                                <br>
                                <span class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star		"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                </span>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label >Review Text <span>*</span></label>
                                <textarea class="form-control" rows="6" cols="6">
                                Will be implemeneted in Sprint 3</textarea>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <a href="#" class="btn_book">Leave a review</a>
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