<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="UpdateController">
<table><tr><td>my info</td></tr>

													
										<tr>
														<th>Customer ID</th>
														<td><input type="text" name="a" value="<%=request.getAttribute("c1")%>" readonly></td>
														
													</tr>			

													
													<tr>
														<th>First Name</th>
														<td><input type="text" name="c" value="<%=request.getAttribute("c3")%>"></td>
														
													</tr>
													
													<tr>
														<th>Last Name</th>
														<td><input type="text" name="d" value="<%=request.getAttribute("c4")%>"></td>
														
													</tr>
													
													<%-- <tr>
														<th>Date Of Birth</th>
														<td><input type="text" name="e" value="<%=request.getAttribute("c5")%>"></td>
														
													</tr>
													 --%>
													<tr>
														<th>Email</th>
														<td><input type="text" name="f" value="<%=request.getAttribute("c5")%>"></td>
														
													</tr>
													
													<tr>
														<th>Contact Number</th>
														<td><input type="text" name="g" value="<%=request.getAttribute("c7")%>"></td>
														
													</tr>
													
												<%-- 	<tr>
														<th>Address1</th>
														<td><input type="text" name="h" value="<%=request.getAttribute("c9")%>"></td>
														
													</tr>
												 --%>	
													<tr>
														<th>Address2</th>
														<td><input type="text" name="i" value="<%=request.getAttribute("c8")%>"></td>
														
													</tr>
													
													<tr>
														<th>City</th>
														<td><input type="text" name="j" value="<%=request.getAttribute("c9")%>"></td>
														
													</tr>
													<tr>
														<th>State</th>
														<td><input type="text" name="k" value="<%=request.getAttribute("c10")%>"></td>
														
													</tr>
													<%-- <tr>
														<th>Gender</th>
														<td><input type="text" name="l" value="<%=request.getAttribute("c13")%>"></td>
														
													</tr>
													 --%>
												<tr>
														
														<td><input type="submit"  value="Update"></td>
														
													</tr>	
													
													
													
													</table>
												
    </form>  
    
	
</body>
</html>