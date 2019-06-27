<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="t2.bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
</head>

<body>
<!-- <form action="RequestApproval" method="post"> --> 
<input type="hidden" name="pageName" value="popup">
<div class="content-wrapper">
		<div class="container-fluid">
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
<%
VendorRegistrationBean v = (VendorRegistrationBean) request.getAttribute("vendor_profile");
%>
						<tr>
						<th>Vendor Id</th>
						<td><%out.print(v.getVendorusername()); %></td>
						</tr>
													
						<tr>
						<th>First Name</th>
						<td><% out.print(v.getFirstname()); %></td>
						</tr>
													
						<tr>
						<th>Last Name</th>
					    <td><% out.print(v.getLastname()); %></td>
						</tr>
							
						<tr>
						<th>Business Name</th>
						<td><% out.print(v.getBusinessname()); %></td>
						</tr>
													
						<tr>
						<th>Business Registration Number</th>
						<td><% out.print(v.getBusinessregistrationnumber()); %></td>
						</tr>
						
						<tr>
						<th>SSN</th>
						<td><% out.print(v.getSsn()); %></td>
						</tr>
																	
						<tr>
						<th>Email</th>
						<td><% out.print(v.getVendoremail()); %></td>
						</tr>
													
						<tr>
						<th>Contact</th>
						<td><%out.print(v.getVendorcontact()); %></td>
						</tr>
													
			
						<tr>
            			<td colspan="2" align = "Center" ><h1 style= "color: red"><%=request.getAttribute("status_msg") %></h1></td>
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
</div>
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