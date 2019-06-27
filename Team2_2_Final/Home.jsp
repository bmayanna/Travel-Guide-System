<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor Login</title>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Font awesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="css/fileinput.min.css">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="css/style.css">

	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<%
//if(session.getAttribute("uid")!=null)
	//response.sendRedirect("welcome.jsp");

%>

	<form action="login" method="post">
	<div class="login-page bk-img" style="background-image: url(img/login-bg.jpg);">
		<div class="form-content">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<h1 class="text-center text-bold text-light mt-4x">Vendor Login</h1>
						<div class="well row pt-2x pb-3x bk-light">
							<div class="col-md-8 col-md-offset-2">
		<label for="" class="text-uppercase text-sm">Your Username </label>
		<input type="text" name="uname" placeholder="Username" class="form-control mb">
		<label for="" class="text-uppercase text-sm">Password</label>
		<input type="password" name="pwd" placeholder="Password" class="form-control mb">
		<input type="submit" value="signin" name = "signin" class="btn btn-default" style="width: 3cm">
		<input type="submit" value="register" name = "register" class="btn btn-default" style="width: 3cm">
		<br>
		
	<%
	try
	{
		String message = request.getAttribute("message").toString();
	
	if ( "".equals(message) == false)
		{
			out.print("<tr><td colspan='2' align = 'center'><span style= 'color : red'>"+message+"</span></td></tr>");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
		%>
	<!-- <c: remove var="message" scope="session" /> --> 
	
	</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
	<div id="content" style="background-image : url('backgroundimages/bgImage.jpg');background-repeat : no-repeat;background-size : 100%">
	<!-- <img src="backgroundimages/bgImage.jpg" alt="Smiley face" height="100%" width="100%"> -->
	</div>
	<div style="height : 50px; width : 100%"><table align="right" width="60%"><tr><td><a href="#" onclick="alert()">About Us</a></td><td><a href="#" onclick="alert()">Careers</a></td><td><a href="#" onclick="alert()">Contact</a></td><td><a href="#" onclick="alert()">Help</a></td></tr></table></div>
<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</body>
</html>