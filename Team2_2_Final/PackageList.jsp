<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<%@page import="t2.bean.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
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
<%
ArrayList<PackageListBean> ps = (ArrayList<PackageListBean>) session.getAttribute("PackageList");
%>

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
           
                                </div>
                    
                </div>
	<%
											for(int i=0;i<ps.size();i++){
											%>
											
											
                               <div class="hotels_box_detail_v2 border-box animate-reveal">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="hotel-img-v2">
								<img src="imageViewer.jsp?imgID=<%=ps.get(i).getPackage_id() %>">
                              <img  alt="logo" src="img1/place-1.jpg"></div>   
                        </div>
                        <div class="col-md-6">
                            <div class="details-text">
                                <h4><%=ps.get(i).getPackageName() %> </h4>
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
                                <p><%=ps.get(i).getPackageDetails() %></p>
                            </div>
                        </div>

                        <div class="col-md-2">
                            
                            <div class="select-sec">
                                <span>Tour Price</span>
                                <span class="pri"><%=ps.get(i).getPrice()%></span>
                                <form action="PackageDetails" method="post">
                                <input type="submit" value="Select" class="btn btn_select-v2">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <%} %>

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