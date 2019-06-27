<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="t2.controllers.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  charset="UTF-8" http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor Registration</title>

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

<body>

<script type="text/javascript">

function validateForm() {

	var name=document.form1.vendorusername.value;  
	var password=document.form1.vendorpassword.value;  
	var x=document.form1.vendoremail.value;  
	var atposition=x.indexOf("@");  
	var dotposition=x.lastIndexOf("."); 
	  
	if (name==null || name==""){  
	  alert("Name can't be blank");  
	  return false;  
	}else if(password.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  
	
	 
	else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
	  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
	  return false;  
	  }  
	}



</script>

			<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Vendor Registration</h2>

						<div class="row">
							<div class="col-md-8" style="margin-left: 5cm"">
								<div class="panel panel-default">
									<div class="panel-heading">Form fields</div>
									<div class="panel-body">
						<form method="post" class="form-horizontal" 
										name="form1" action="VendorRegistrationControllers"
										onsubmit="return validateForm()" method="post">
											<div class="form-group">
												<label class="col-sm-2 control-label">Vendor Username</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendorusername">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											<div class="form-group">
												<label class="col-sm-2 control-label">First Name</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendorfirstname">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											<div class="form-group">
												<label class="col-sm-2 control-label">Last Name</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendorlastname">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											<div class="form-group">
												<label class="col-sm-2 control-label">Business Name</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendorbusinessname">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											<div class="form-group">
												<label class="col-sm-2 control-label">Business Type</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendorbusinesstype">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											<div class="form-group">
												<label class="col-sm-2 control-label">Business Registration Number</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="businessregistrationnumber">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											
											<div class="form-group">
												<label class="col-sm-2 control-label">SSN</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="ssn">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											
											<div class="form-group">
												<label class="col-sm-2 control-label">Email</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendoremail">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											
											<div class="form-group">
												<label class="col-sm-2 control-label">Password</label>
												<div class="col-sm-10">
													<input type="password" class="form-control" name="vendorpassword">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											
											<div class="form-group">
												<label class="col-sm-2 control-label">Contact</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendorcontact">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											
											<div class="form-group">
												<label class="col-sm-2 control-label">Address</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendoraddress">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											
											<div class="form-group">
												<label class="col-sm-2 control-label">City</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendorcity">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											<div class="form-group">
												<label class="col-sm-2 control-label">State</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" name="vendorstate">
												</div>
											</div>
											<div class="hr-dashed"></div>
											
											
											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-2">
												<input type="submit" value="Register" class="btn btn-default" style="width: 3cm"></input>
												</div>
											</div>
											
											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-2">
												<input type="reset" value="Reset" class="btn btn-default" style="width: 3cm"></input>
												</div>
											</div>

										</form>

									</div>
								</div>
							</div>
							
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