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
            <div class="col-md-12">
                
            </div>
            <div class="col-md-12">
                
            </div>

            <div class="col-md-9 col-xs-12">
                <div class="scroll-image-v2">
                  
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="detail-panel-v2 animate-reveal">
                            <div class="panel">
                                <div class="panel-heading">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#details" data-toggle="tab">Description</a></li>
                                        <li><a href="#Inflight" data-toggle="tab"> Room Feature</a></li>
                                        <li><a href="#selection" data-toggle="tab">Reviews</a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">

                                    <div class="tab-content">
                                        <div class="tab-pane fade in active" id="details">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="detail_flight_number">
                                                        <div class="pull-left">
                                                            <ul class="list-unstyled">
                                                                <li>Hotel Name:</li>
                                                                <li>Room:</li>
                                                                <li>Extra Charge:</li>
                                                                <li>Minimum stay:</li>
                                                                <li>Security Charge</li>
                                                                <li>Country:</li>
                                                                <li>City</li>
                                                                <li>Cancellation</li>
                                                                <li>TOTAL PRICE:</li>
                                                            </ul>
                                                        </div>
                                                        <div class="pull-right">
                                                            <ul class="list-unstyled">
                                                                <li>Five Star</li>
                                                                <li>2</li>
                                                                <li>No charge</li>
                                                                <li>Two Night</li>
                                                                <li>$34</li>
                                                                <li>Paris</li>
                                                                <li>Fsd</li>
                                                                <li>Strict</li>
                                                                <li>$567</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="feature-inflight">
                                                        <div class="clr-selection">
                                                            <div class="row">
                                                                <div class="col-md-3  col-sm-6  col-xs-6">
                                                                    <img src="img1/place-hotel-2.jpg" alt="image" class="img-responsive">
                                                                </div>
                                                                <div class="col-md-6  col-sm-3 col-xs-6">
                                                                    <div class="dw">
                                                                        <h4> Standard Family Room
                                                                            <br> <small>MAX GUESTS:3 PERSONS</small></h4>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 col-sm-3">
                                                                    <div class="seat-price">
                                                                        <span class="no-margin">AVG/NIGHT <br> <span class="pri no-margin">$620</span></span>
                                                                        <a href="../../../html/hotel/hotels_details_two/right_sidebar.html" target="_blank" class="btn btn_select-v2">SELECT</a>
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                        <hr>
                                                        <div class="clr-selection">
                                                            <div class="row">
                                                                <div class="col-md-3  col-sm-6  col-xs-6">
                                                                    <img src="img1/place-hotel-3.jpg" alt="image" class="img-responsive">
                                                                </div>
                                                                <div class="col-md-6  col-sm-3 col-xs-6">
                                                                    <div class="dw">
                                                                        <h4>Family Room
                                                                            <br> <small>MAX GUESTS:2 PERSONS</small></h4>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 col-sm-3">
                                                                    <div class="seat-price">
                                                                        <span class="no-margin">AVG/NIGHT <br> <span class="pri no-margin">$620</span></span>
                                                                        <a href="../../../html/hotel/hotels_details_two/right_sidebar.html" target="_blank" class="btn btn_select-v2">SELECT</a>
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                        <hr>
                                                        <div class="clr-selection">
                                                            <div class="row">
                                                                <div class="col-md-3  col-sm-6  col-xs-6">
                                                                    <img src="img1/place-hotel-4.jpg" alt="image" class="img-responsive">
                                                                </div>
                                                                <div class="col-md-6  col-sm-3 col-xs-6">
                                                                    <div class="dw">
                                                                        <h4> Standard Family Room
                                                                            <br> <small>MAX GUESTS:3 PERSONS</small></h4>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 col-sm-3">
                                                                    <div class="seat-price">
                                                                        <span class="no-margin">AVG/NIGHT <br> <span class="pri no-margin">$620</span></span>
                                                                        <a href="../../../html/hotel/hotels_details_two/right_sidebar.html" target="_blank" class="btn btn_select-v2">SELECT</a>
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                        <hr>
                                                        <div class="clr-selection">
                                                            <div class="row">
                                                                <div class="col-md-3  col-sm-6  col-xs-6">
                                                                    <img src="img1/place-hotel-4.jpg" alt="image" class="img-responsive">
                                                                </div>
                                                                <div class="col-md-6  col-sm-3 col-xs-6">
                                                                    <div class="dw">
                                                                        <h4> Standard Family Room
                                                                            <br> <small>MAX GUESTS:3 PERSONS</small></h4>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3 col-sm-3">
                                                                    <div class="seat-price">
                                                                        <span class="no-margin">AVG/NIGHT <br> <span class="pri no-margin">$620</span></span>
                                                                        <a href="../../../html/hotel/hotels_details_two/right_sidebar.html" target="_blank" class="btn btn_select-v2">SELECT</a>
                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="white-box">
                                                        <h3 class="h3-v2">About Five Star Hotels</h3>
                                                        <p class="p-v2">Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit. </p>
                                                        <p class="p-v2">Sed aliquam nunc eget velit imperdiet, in rutrum mauris malesuada. Quisque ullamcorper vulputate nisi, et fringilla ante convallis quis. Nullam vel tellus non elit suscipit volutpat. Integer id felis et nibh rutrum dignissim ut non risus. In tincidunt urna quis sem luctus, sed accumsan magna pellentesque. Donec et iaculis tellus. Vestibulum ut iaculis justo, auctor sodales lectus. Donec et tellus tempus, dignissim maurornare, consequat lacus. Integer dui neque, scelerisque nec sollicitudin sit amet, sodales a erat. Duis vitae condimentum ligula. Integer eu mi nisl. Donec massa dui, commodo id arcu quis, venenatis scelerisque velit. </p>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="tab-pane fade in" id="Inflight">
                                            <div class="feature-inflight">
                                                <h4>Amenities</h4>

                                                <p> Maecenas vitae turpis condimentum metus tincidunt semper bibendum ut orci. Donec eget accumsan est. Duis laoreet sagittis elit et vehicula. Cras viverra posuere condimentum. Donec urna arcu, venenatis quis augue sit amet, mattis gravida nunc. Integer faucibus, tortor a tristique adipiscing, arcu metus luctus libero, nec vulputate risus elit id nibh.
                                                </p>
                                                <ul class="list-unstyled list-inline">
                                                    <li>
                                                        <i class="fa fa-wifi"></i>
                                                        wifi
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-music"></i>
                                                        entertainment

                                                    </li>   <li>
                                                    <i class="fa fa-wifi"></i>
                                                    wifi
                                                </li>
                                                    <li>
                                                        <i class="fa fa-cutlery"></i>
                                                        Dinner

                                                    </li>
                                                    <li>
                                                        <i class="fa fa-television"></i>
                                                        Watch
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-wifi"></i>
                                                        WI_FI
                                                    </li>  <li>
                                                    <i class="fa fa-wifi"></i>
                                                    wifi
                                                </li>
                                                    <li>
                                                        <i class="fa fa-music"></i>
                                                        entertainment

                                                    </li>   <li>
                                                    <i class="fa fa-wifi"></i>
                                                    wifi
                                                </li>
                                                    <li>	
                                                        <i class="fa fa-music"></i>
                                                        entertainment

                                                    </li>
                                                    <li>
                                                        <i class="fa fa-wifi"></i>
                                                        WI_FI
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-wifi"></i>
                                                        WI_FI
                                                    </li>
                                                </ul>

                                            </div>
                                                                                    </div>
                                        <div class="tab-pane fade in" id="selection">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="full-white-box review_box">
                                                        <h3>
                                                            4/5.0</h3>
                                                       <span class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-o"></i></a>
                                                        </span>
                                                        <p>
                                                            <a href="#" class="btn_book_v3">Write Review</a>
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="detail_flight_number">
                                                                <div class="pull-left">
                                                                    <ul class="list-unstyled">
                                                                        <li>SERVICE:</li>
                                                                        <li>SLEEP QUALITY:</li>
                                                                        <li>LOCATION:</li>
                                                                        <li>SWIMMING POOL:</li>
                                                                        <li>SLEEP QUALITY:</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="pull-right">
                                                                    <ul class="list-unstyled">
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="detail_flight_number">
                                                                <div class="pull-left">
                                                                    <ul class="list-unstyled">
                                                                        <li>SERVICE:</li>
                                                                        <li>SLEEP QUALITY:</li>
                                                                        <li>LOCATION:</li>
                                                                        <li>SWIMMING POOL:</li>
                                                                        <li>SLEEP QUALITY:</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="pull-right">
                                                                    <ul class="list-unstyled">
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                                            <a href="#"><i class="fa fa-star-o"></i></a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-12">
                                                    <div id="review-carousel">
                                                        <div class='row'>
                                                            <div class='col-md-12'>
                                                                <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                                                                    <!-- Bottom Carousel Indicators -->
                                                                    <ol class="carousel-indicators">
                                                                        <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
                                                                        <li data-target="#quote-carousel" data-slide-to="1"></li>
                                                                        <li data-target="#quote-carousel" data-slide-to="2"></li>
                                                                    </ol>

                                                                    <!-- Carousel Slides / Quotes -->
                                                                    <div class="carousel-inner">

                                                                        <!-- Quote 1 -->
                                                                        <div class="item active">
                                                                            <blockquote>
                                                                                <div class="row">
                                                                                    <div class="col-sm-3 text-center">
                                                                                        <img class="img-circle" src="img1/iso-1.jpg" alt="img">
                                                                                    </div>
                                                                                    <div class="col-sm-9">
                                                                                        <p class="white-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's stand dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>
                                                                                        <small class="white-text">Jonny Deep</small>
                                                                                        <ul class="list-unstyled">
                                                                                            <li>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star"></i></a>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star"></i></a>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star-o"></i></a>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star-o"></i></a>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star-o"></i></a>

                                                                                            </li>
                                                                                        </ul>

                                                                                    </div>
                                                                                </div>
                                                                            </blockquote>
                                                                        </div>
                                                                        <div class="item">
                                                                            <blockquote>
                                                                                <div class="row">
                                                                                    <div class="col-sm-3 text-center">
                                                                                        <img class="img-circle" src="img1/iso-1.jpg" alt="img">
                                                                                    </div>
                                                                                    <div class="col-sm-9">
                                                                                        <p class="white-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's stand dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>
                                                                                        <small class="white-text">Alexendra Backy</small>
                                                                                        <ul class="list-unstyled">
                                                                                            <li>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star"></i></a>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star"></i></a>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star-o"></i></a>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star-o"></i></a>
                                                                                                <a href="#" class="yellow-text"><i class="fa fa-star-o"></i></a>

                                                                                            </li>
                                                                                        </ul>

                                                                                    </div>
                                                                                </div>
                                                                            </blockquote>
                                                                        </div>

                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12">
              


                <div class="help-to-do-v2 border-box">
                    <h4>Need Our Help?</h4>
                    <p>We would be more than happy to help you. Our team advisor are 24/7 at your service to help you.</p>
                    <div class="LTT">
                        <span class="skin-clr"> <i class="fa fa-phone"></i>+15182532710</span>
                        <span class="skin-clr"> <i class="fa fa-envelope"></i> travelgateway@gmail.com</span>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--inner body end here-->
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