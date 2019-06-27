<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="t2.bean.*" %>
    <%@ page import="java.util.*" %>
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

<script type="text/javascript">
function submitForm(){
    $('#product_form').submit();
}
</script>
<title>Insert title here</title>
<%
	if(session.getAttribute("user") == null)
	{
		response.sendRedirect("Home.jsp");
	}
%>
</head>
<body>
<div class="ts-main-content">
		
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">


<form action="ManageProductDetails" method="post" id="product_form" >
<h2 class="page-title">Tables</h2>

<input type="hidden" name="product_details" value="<%out.print(request.getAttribute("product_list"));%>">
<input type="hidden" name="business_type" value="<%out.print(request.getAttribute("business_type"));%>">
						
						<div class="panel panel-default">
							<div class="panel-heading">All Vendors</div>
							<div class="panel-body">
								<table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>Car Image</th>
											<th>Car Name</th>
											<th>Car Rate</th>
											<th>Availability From</th>
											<th>Availability Till</th>
											
											
										</tr>
									</thead>
<%
if(("cars").equals(request.getAttribute("business_type")))
{
	List<CarDetailsBean> product_list =(ArrayList<CarDetailsBean>) request.getAttribute("product_list");
	session.setAttribute("product_list",product_list);
	for(CarDetailsBean c : product_list )
	{
		List<MediaCarBean> media_list = c.getMedia_car();
		//System.out.println("media list size: "+media_list.size());
		
		if(media_list.size()>0)
		{
			MediaCarBean mcb = media_list.get(0);
			String img = null;
			if("image".equals(mcb.getMedia_type()))
			{
				img=mcb.getImage();
				//out.print(img);
			}
			%>



	<tbody>
							
			<tr>
			<td><img src="data:image/jpeg;base64,<%=img%>" height="40" width="40"></td>
			<td><%out.print(c.getModel());%></td>
			<td><%out.print(c.getPrice());%></td>
			<td><%out.print(c.getBegindate());%></td>
			<td><%out.print(c.getEnddate());%></td>
			<td><button type="submit" class= "btn btn-default" name="edit_cars" value="<%out.print(c.getCar_id());%>">Edit</button></td>
			</tr>	
	</tbody>
						
	
<%	
}}
%>
	
	<tr><td><button type="submit" class="btn btn-default"name="add_cars" value="<%out.print(session.getAttribute("user"));%>">ADD PRODUCT</button>
<%
}
%>

</table>
</div></div>
</form>

</div></div></div></div></div>





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