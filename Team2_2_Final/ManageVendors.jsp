<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
 <%@page import="t2.bean.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

<script type="text/javascript">
function checkAll(all)
{
	checkboxx = document.getElementsByName("radio_select");
	
	 for(var i=0; i<checkboxx.length;i++)
	 {
		 checkboxx[i].checked = all.checked;
	 }
}

	function uncheckSAll(id) {
		var allcheck = document.getElementById("select_all");
		if (allcheck.checked == true && id.checked == false)
			allcheck.checked = false;
		else {

			var f = true;
			checkboxx = document.getElementsByName("radio_select");
			for (var i = 0; i < checkboxx.length; i++) {
				if (checkboxx[i].checked == false)
					f = false;
			}
			if (f)
				allcheck.checked = true;
		}
	}
	function dispPopup(id)
	{
							var popupBox = document.getElementById("popbox1");
							var popupBox1 = document.getElementById("popupBox");
							if(popupBox.style.display == "block")
							{
								popupBox.style.display = "none";
								popupBox1.style.display = "none";

							} else 
							{
								
								popupBox.style.display = "block";
								popupBox1.style.display = "block";
							}
							
							var tbl_data='<object type="text/html" height = "300px" width = "700px" data="VendorProfile?id='+id+'"></object>';
							
							document.getElementById("divBody").innerHTML = tbl_data;
							return(0);
	}
	function hidePopup()
	{
		var popupBox = document.getElementById("popbox1");
		var popupBox1 = document.getElementById("popupBox");
		if(popupBox.style.display == "block")
		{
			popupBox.style.display = "none";
			popupBox1.style.display = "none";

		} else 
		{
			popupBox.style.display = "block";
			popupBox1.style.display = "block";
		}
		
	}
</script>

</head>
<body>
<div class="ts-main-content">
		
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">

						
<form action="RequestApproval" method="post" name="dispList">
<input type="hidden" name="pageName" value="manageVendors">
<h2 class="page-title">Tables</h2>

						<div class="panel panel-default">
							<div class="panel-heading">All Vendors</div>
							<div class="panel-body">
								<table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th><input type="checkbox" id="select_all" onclick="checkAll(this)"></th>
											<th>Business Name</th>
											<th>Business Type</th>
											<th>Action</th>
											
										</tr>
									</thead>


<%
ArrayList <VendorRegistrationBean> vendor_profile = (ArrayList<VendorRegistrationBean>) request.getAttribute("vendor_profile");

for(VendorRegistrationBean v : vendor_profile)
{
	%>
	
	<tbody>
							<tr>
							<td><input type="checkbox" name="radio_select" value="<%out.print(v.getVendorusername());%>" onclick="uncheckSAll(this);"></td>
							<td><a href="#" onclick="dispPopup('<%out.print(v.getVendorusername());%>');"><%out.print(v.getBusinessname());%></a></td>
							<td><%out.print(v.getBusinesstype());%></td>
							<td><button type="submit" class="btn btn-default"  name="activate" value="<%out.print(v.getVendorusername());%>">Activate</button>
							<button type="submit" class="btn btn-default" name="suspend" value="<%out.print(v.getVendorusername());%>">Suspend</button>
							</td>
							</tr>
						</tbody>
						
	
	
<div class="panel-heading" style="position:absolute;left:50px;top:150px;height:500px;width:100%;display:none;z-index:100;overflow-y:auto" id="popbox1">
<div style="display:none;position:absolute;left:10%;top:0px;margin: 0px auto;z-index: 100;border-radius: 8px;padding: 10px;" id="popupBox">
<div style="background: #E0E0E0;border: #3B5998 1px solid;border-bottom:none;padding:6px; padding-bottonm : 10px;color:#13a3f7;font-size:12px">
<span>Vendor Profile</span>
<button style="float : right;" onmousedown="hidePopup()"><b>X</b></button></div>
<div id="divBody" style="font-family:Arial,Helvetica,sans-serif;background: #FFF;border: #666 1px solid;border-top:none;border-bottom:none;padding:10px;color:#000;font-size:10px;">
</div>
<div style="background: #E0E0E0;border: #666 1px solid;border-top: #CCC 1px solid;padding:6px;color: #333;font-size:12px;text-align:right;">
</div>
</div>
</div>
<%}
%>
<tr>
<td colspan="2"><button type="submit" class="btn btn-default" name="activate" value="selected_list">Activate</button>
<button type="submit" class="btn btn-default" name="suspend" value="selected_list">Suspend</button></td>
</tr>
</table>
</form>
</div></div></div></div></div>
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