package t2.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import t2.util.DataConnection;

/**
 * Servlet implementation class HotelSelectionController
 */
@WebServlet("/HotelSelectionController")
public class HotelSelectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HotelSelectionController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String location = request.getParameter("location");
		 String zipcode = request.getParameter("zipcode");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con = null;
		Statement statement = null;
		ResultSet rs = null;
		try {
			con = DataConnection.createConnection(); //establishing connection
			statement = con.createStatement(); 
			if(zipcode==null)
			{
				if(location.contentEquals("Boston")||location.contentEquals("Albany")||location.contentEquals("Springfield")||location.contentEquals("Los Angeles")||location.contentEquals("Texas")||location.contentEquals("New York City")||location.contentEquals("Florida")||location.contentEquals("Chicago")||location.contentEquals("Michigan") )
				{
					rs = statement.executeQuery("select h.hotel_id 'hotelid', h.hotelname 'hotelname',h.price 'price',h.romms_total 'total rooms',h.description 'description', h.rooms_available 'available rooms',h.address 'address', h.location 'location',v.first_name 'first_name',v.last_name 'last_name',v.contact 'contact',v.email 'email',m.Media 'Media' from hotels h join vendor v  join hotels_media m where h.vendorusername=v.vendor_id and h.hotel_id=m.hotel_id and  h.location='"+location+"'");

				}
				else if(location.contentEquals("Select"))
				{
					System.out.println("YYYYY");
					rs = statement.executeQuery("select h.hotel_id 'hotelid', h.hotelname 'hotelname',h.price 'price',h.romms_total 'total rooms',h.description 'description', h.rooms_available 'available rooms',h.address 'address',h.location 'location',v.first_name 'first_name',v.last_name 'last_name',v.contact 'contact',v.email 'email',m.Media 'Media' from hotels h join vendor v  join hotels_media m where h.vendorusername=v.vendor_id and h.hotel_id=m.hotel_id");
				}
				else
				{
					out.print("No Data Available");
				}
			}
			else 
			{
				rs = statement.executeQuery("select h.hotel_id 'hotelid', h.hotelname 'hotelname',h.price 'price',h.romms_total 'total rooms', h.description 'description',h.rooms_available 'available rooms',h.address 'address',h.location 'location',v.first_name 'first_name',v.last_name 'last_name',v.contact 'contact',v.email 'email',m.Media 'Media' from hotels h join vendor v  join hotels_media m where h.vendorusername=v.vendor_id and h.hotel_id=m.hotel_id and  h.zipcode='"+zipcode+"'");
				
			}
		   // out.println("<form action='BookHotelController'><table BORDER=1 CELLPADDING=0 CELLSPACING=0 WIDTH=100%>"
		     //         +"<tr><th>Hotelname</th><th>Address</th><th>Total Rooms</th><th>Available Rooms</th><th>Description</th><th>Price</th><th>Contact</th><th>Email</th><th>Image</th><th>Book Hotel</th></tr>");

			ArrayList arr1=new ArrayList();
			 ArrayList arr2=new ArrayList();
			 ArrayList arr3=new ArrayList();
			 ArrayList arr4=new ArrayList();
			 ArrayList arr5=new ArrayList();
			 ArrayList arr6=new ArrayList();
			 ArrayList arr7=new ArrayList();
			 ArrayList arr8=new ArrayList();
			 ArrayList arr9=new ArrayList();
			 ArrayList arr10=new ArrayList();
			 ArrayList arr11=new ArrayList();
			 
		while(rs.next()){
			String img=null;
					
			arr9.add(getImage(rs.getBlob("Media")));
			
			arr1.add(rs.getString("hotelid"));
			arr2.add(rs.getString("hotelname"));
			arr3.add(rs.getString("price"));
			arr4.add(rs.getString("total rooms"));
			arr5.add(rs.getString("description"));
			arr6.add(rs.getString("available rooms"));
			arr7.add(rs.getString("location"));
		
			
			/*img=getImage(rs.getBlob("Media"));
			
			System.out.println(rs.getString("hotelname"));
		 out.println("<tr><td><center>"+rs.getString("hotelname")+"</center></td>"
		               + "<td><center>"+rs.getString("address")+"</center></td>"
				       + "<td><center>"+rs.getString("total rooms")+"</center></td>"
		               	+ "<td><center>"+rs.getString("available rooms")+"</center></td>"
		               	+ "<td><center>"+rs.getString("description")+"</center></td>"
		               	+ "<td><center>"+rs.getString("price")+"</center></td>"
		               	+ "<td><center>"+rs.getString("contact")+"</center></td>"
				       	+ "<td><center>"+rs.getString("email")+"</center></td>"
				       	+ "<td><img src='data:image/jpeg;base64,"+img+"' alt='hehe' height='100' width='100'></td>"
				       	+ "<td><center><a href="+request.getContextPath()+"/BookHotelController?id="+rs.getInt(1)+">Book</center></td>"
				       + "</tr>");
		}
		out.println("</table></form>");
						
						
					*/	
					
				
	}
		request.setAttribute("c1", arr1);
		request.setAttribute("c2", arr2);
		request.setAttribute("c3", arr3);
		request.setAttribute("c4", arr4);
		request.setAttribute("c5", arr5);
		request.setAttribute("c6", arr6);
		request.setAttribute("c7", arr7);
		request.setAttribute("c8", arr8);
		request.setAttribute("c9", arr9);
		request.getRequestDispatcher("/HotelShow.jsp").forward(request, response);
		}
					
			
		
		catch (SQLException e)
		{
			e.printStackTrace();
		}	
	}
	public String getImage(Blob media)
	{
		String img = null;

		try {
			byte[] imgfile = media.getBytes(1, (int) media.length());
			byte[] base64encoded = Base64.encodeBase64(imgfile);
			img = new String(base64encoded, "UTF-8");

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return img;
	}

}
