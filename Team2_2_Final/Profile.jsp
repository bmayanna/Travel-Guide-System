<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="t2.controllers.*" %>
    <%@page import="t2.bean.*" %>
    <%@page import="t2.dao.*" %>
    <%@page import="t2.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
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
<%
	if(session.getAttribute("user") == null)
	{
		response.sendRedirect("Home.jsp");
	}
%>
<body>
<form>
<div class="container-fluid" style="margin-top: 2cm;"  >

				<div class="row">
					<div class="col-md-12">

						<h2 class="page-title">Profile</h2>


						<div class="row">
							<div class="col-lg-12">
								<div class="panel panel-default">
									<div class="panel-body">
										
										
										<div class="table-responsive">
											<table class="table table-bordered table-striped">
												<thead>
													<tr>
														<th></th>
														<th>
															Information
														</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th>User Name</th>
														<td><%=request.getAttribute("vv1")%></td>
														
													</tr>
													
													
													<tr>
														<th>First Name</th>
														<td><%=request.getAttribute("vv2")%></td>
														
													</tr>
													
													<tr>
														<th>Last Name</th>
														<td><%=request.getAttribute("vv3")%></td>
														
													</tr>
													
													<tr>
														<th>Business Name</th>
														<td><%=request.getAttribute("vv4")%></td>
														
													</tr>
													
													<tr>
														<th>Business Registration Number</th>
														<td><%=request.getAttribute("vv5")%></td>
														
													</tr>
													
													<tr>
														<th>Email</th>
														<td><%=request.getAttribute("vv6")%></td>
														
													</tr>
													
													<tr>
														<th>Contact</th>
														<td><%=request.getAttribute("vv7")%></td>
														
													</tr>
													
													<tr>
														<th>Address</th>
														<td><%=request.getAttribute("vv8")%></td>
														
													</tr>
													
													<tr>
														<th>City</th>
														<td><%=request.getAttribute("vv9")%></td>
														
													</tr>
													
													<tr>
														<th>State</th>
														<td><%=request.getAttribute("vv10")%></td>
														
													</tr>
												</tbody>
											</table>
										</div>
										
									</div>
								</div>
							</div>
							<!-- /.col-lg-12 -->
						</div>


						

			</div>
		</div>
	</div>
    </form>  
    
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