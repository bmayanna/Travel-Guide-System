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
                    <a class="dropdown-toggle" href="#"> <i class="fa fa-home"></i>Home
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

               <form action="CarSelectionController">
                <div class="sort-section-v2 animate-reveal">
                    <div class="row no-margin">
                        <div class="col-md-3 col-sm-6 col-xs-6 no-padding">
                            <select class="select_sorting" name="location">
                          	<option value="Select">Select</option>
      		             	<option value="Boston">Boston</option>
							<option value="Albany">Albany</option>
							<option value="Springfield">Springfield</option>
							<option value="Los Angeles">Los Angeles</option>
							<option value="Texas">Texas</option>
							<option value="New York City">New York City</option>
							<option value="Florida">Florida</option>
							<option value="Chicago">Chicago</option>
							<option value="Michigan">Michigan</option>
                            </select>
                            
                            
							</form>
                        </div>
                        
                        <div class="col-md-3  col-sm-6 col-xs-6" style="margin-left:10px">
                           <input type="submit" class="btn btn_select-v2" value="Filter">
                        </div>
                    </div>
                       </div>
                    <form action="CarSelectionController">        
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
                
                </div>
            </form>
                               <% 
            
            
            ArrayList arr1 = (ArrayList) request.getAttribute("c1");
            ArrayList arr2 = (ArrayList) request.getAttribute("c2");
            ArrayList arr3 = (ArrayList) request.getAttribute("c3");
            ArrayList arr4 = (ArrayList) request.getAttribute("c4");
            ArrayList arr5 = (ArrayList) request.getAttribute("c5");
            ArrayList arr6 = (ArrayList) request.getAttribute("c6");
            ArrayList arr7 = (ArrayList) request.getAttribute("c7");
            ArrayList arr8 = (ArrayList) request.getAttribute("c8");
            ArrayList arr9 = (ArrayList) request.getAttribute("c9");
         // out.println("<tr><th>Start Date</th><th>End Date</th><th>Employee Id</th><th>Leave Reason</th><th>Leave Type</th></tr>");
              
			
                
				 for(int f=0; f < arr1.size(); f++){%>
                <div class="hotels_box_detail_v2 border-box animate-reveal">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="hotel-img-v2">
                                <span class="pop-feature-car">Feature</span>
								
                                <img  alt="logo" src="data:image/jpeg;base64,<%out.println(arr9.get(f));%>"></div>
                        </div>
				
                       
                        <div class="col-md-6">
                            <div class="details-text">
                                <h4><%out.println(arr2.get(f));%><br><small> <i class="fa fa-map-marker"></i><%out.println(arr4.get(f));%></small></h4>
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
                                <span>Per Day</span>
                                <span class="pri"><%out.println(arr3.get(f));%>$</span>
                             <!--   ${pageContext.request.contextPath}-->
                                <a href="BookController?id=<%out.println(arr1.get(f));%>" target="_blank" class="btn btn_select-v2">SELECT</a>
                            </div>
                        </div>
                    </div>
                </div>
<%}%>                 
         	
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
