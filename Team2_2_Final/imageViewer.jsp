
<%
String imageId=request.getParameter("imgID");
response.sendRedirect("ImageController?imgID="+imageId); 

System.out.print("imageId..."+request.getParameter("imgID"));
out.print("inside imageviewer");
%>