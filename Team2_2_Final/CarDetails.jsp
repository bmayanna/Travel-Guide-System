<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="t2.bean.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car Details</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
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
<%
	if (session.getAttribute("user") == null) {
		response.sendRedirect("Home.jsp");
	}
%>
<body>

	<form action="AddModifyCars" method="post" name="dispList" style= "overflow-y: hidden" enctype="multipart/form-data" >
	
		<div class="row">
			<div class="col-md-12" >
				<h2 class="page-title">Tables</h2>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-bordered table-striped">
										<thead>
											
										</thead>

										<%
											if (request.getAttribute("b") != null) {
												CarDetailsBean cb = (CarDetailsBean) request.getAttribute("b");
										%>
										<input type="hidden" name="action"	value="modify">
										<tbody>
											<tr>
												<th>Car Id:</th>
												<td><input type="text" name="carid"
													value="<%out.print(cb.getCar_id());%>" readonly></td>
											</tr>
											<tr>
												<th>Model:</th>
												<td><input type="text" name="car_model"
													value="<%=cb.getModel()%>"></td>
											</tr>
											<tr>
												<th>Price/Hour:</th>
												<td><input type="text" name="car_price"
													value="<%=cb.getPrice()%>"></td>
											</tr>
											<tr>
												<th>Available:</th>
												<td><input type="text" name="car_begindate" value="<%=cb.getBegindate()%>">
													to <input type="text" name="car_enddate" value="<%=cb.getEnddate()%>"></td>
											</tr>
											<tr>
												<th>Media Name:</th>
												<td><input type="text" name="media_name"></td>
											</tr>
											<tr>
												<th>Media:</th>
												<td><input type="file" name="media_file"></td>
											</tr>
											<tr>
												<th>Media Type:</th>
												<td><input type="text" name="media_type"></td>
											</tr>
										</tbody>
									</table>
									<table caption="Images">
		<tr>
			<%
				List<MediaCarBean> bb = cb.getMedia_car();
					int col = 1;
					for (MediaCarBean m : bb) {
						if (col <= 4) {
			%>

			<td style="padding-right: 20px"><input type="checkbox" name="media_id" value="<%=m.getCar_id()%>"><img
				src="data:image/jpeg;base64,<%out.print(m.getImage());%>"
				height="100" width="100"></td>
			<%
				col++;
						} else {
			%>
		</tr>

		<tr>
			<%
				col = 1;
						}
					}
			%>
		</tr>
	</table>
	<br><br>
	<a href="#"><input type="submit" value="Update"
										name="Submit" class="btn btn-default" style="width: 4cm"></a>
	</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<br>
	<br>
	
	<%
		} else {
	%>
	<div class="content-wrapper" >
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<h2 class="page-title">Add Product:</h2>
					<div class="row">
						<div class="col-md-8" style="margin-left: 1cm"">
							<div class="panel panel-default">
								<div class="panel-heading">Form fields</div>
								<div class="panel-body">
										<input type="hidden" name="action"	value="add">
										<div class="form-group">
										
											<label class="col-sm-4 control-label">Car ID:</label>
											
											<div class="col-sm-10">
												<input type="text" class="form-control" name="carid" readonly>
												<br>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Model:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="car_model">
												<br>
											</div>
										</div>
										<br><br><br>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Car Price/Hour:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="car_price">
												<br>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Availablity</label>
											<div class="col-sm-10">
												<input type="date" class="form-control" name="car_begindate">
												</div>
													<div class="col-sm-10">To
													</div>										
												<div class="col-sm-10">
												<input type="date" class="form-control"name="car_enddate">
												<br>
											</div>
											<br>
										</div>
										
										<div class="form-group">
										
											<label class="col-sm-4 control-label">File Name:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="filename">
												<br>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">File Upload:</label>
											<div class="col-sm-10">
												<input type="file" class="form-control" name="file">
												<br>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">File Type:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="filetype">
												<br>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Description:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="desc">
												<br>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Location:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="location">
												<br>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-4 control-label">Zipcode:</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="zipcode">
												<br>
											</div>
										</div>
										<button type="submit" class="btn btn-default"name="add_cars" value="<%out.print(session.getAttribute("user"));%>">Add Car</button>

								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%
		}
	%>

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