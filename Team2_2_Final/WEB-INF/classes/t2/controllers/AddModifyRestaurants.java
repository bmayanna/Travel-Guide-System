package t2.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import t2.util.DataConnection;
@WebServlet("/AddModifyRestaurants")
@MultipartConfig(maxRequestSize=16177215)  

public class AddModifyRestaurants extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddModifyRestaurants() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String restaurant;
			String address;
			String optime;
			
			restaurant = request.getParameter("restaurant");
			System.out.println(restaurant);
			Map<String,String[]> map =request.getParameterMap();
			
			address = request.getParameter("restaurant_address");
			optime = request.getParameter("restaurant_optime");
			
			System.out.println("ACTION : "+request.getParameter("action"));
			Connection conn = DataConnection.createConnection();
			PreparedStatement pst;
			if(("modify").equals(request.getParameter("action").toString()))
			{
				//System.out.println("inside if");
				int restaurantid = Integer.parseInt(request.getParameter("restaurantid").toString());
				pst = conn.prepareStatement("UPDATE restaurants SET restaurant_name=?,address=?,operation_time=? WHERE restaurant_id=?");
				pst.setString(1, restaurant);
				pst.setString(2, address);
				pst.setString(3, optime);
				pst.setInt(4, restaurantid);
				//code to add media to existing product - begins
				Part item = (request.getPart("media_file"));
				String filename = request.getParameter("media_name");
				System.out.println(request.getParameter("media_name"));
				if(filename.length()>=1)
				{
					PreparedStatement pst2 = (PreparedStatement) conn.prepareStatement("INSERT INTO restaurants_media (restaurant_id,media_name,Media) VALUES (?,?,?)");
					pst2.setInt(1, restaurantid);
					pst2.setString(2, filename);
					pst2.setBlob(3, item.getInputStream());
					pst2.executeUpdate();
				}
				//code to add media to existing product - ends
				if(request.getParameterValues("media_id") != null)
				{
				String[] selected_list = request.getParameterValues("media_id");
				String list_query = "'";
				String query;
				
					for(String s : selected_list)
					{
						list_query+= s+"','";
						System.out.println(s);
					}
					list_query = list_query.substring(0, list_query.length()-2);
					query = "DELETE FROM restaurants_media WHERE media_id in ("+list_query+")";
					System.out.println(query);
					PreparedStatement pst_media = conn.prepareStatement(query);
					pst_media.executeUpdate();
				}

			}
			else
			{
				HttpSession session = request.getSession(false);
				String vendor_name = "";
				if(session != null)
				{
					vendor_name = session.getAttribute("vendor_id").toString();
				}
				pst = conn.prepareStatement("SELECT vendor_id FROM vendor WHERE vendor_username=?;");
				pst.setString(1, vendor_name);
				ResultSet rs1 = pst.executeQuery();
				int vendor = 0;
				if(rs1.next())
				{
					vendor = rs1.getInt(1);
				}
				pst = conn.prepareStatement("INSERT INTO restaurants (restaurant_name,address,operation_time,vendor_id) VALUES (?,?,?,?)");
				
				pst.setString(1, restaurant);
				pst.setString(2, address);
				pst.setString(3, optime);
				pst.setInt(4, vendor);
				pst.execute();
				pst = conn.prepareStatement("SELECT MAX(restaurant_id) FROM restaurants;");
				ResultSet rs = pst.executeQuery();
				int restaurantid=0;
				if(rs.next())
				{
					restaurantid = rs.getInt(1);
				}
				Part item = (request.getPart("file"));
				String filename = request.getParameter("filename");
				System.out.println(filename);
				//String desc = request.getParameter("desc").toString();
				if((item).getName()!=null)
				{
					
					
					PreparedStatement pst2 = (PreparedStatement) conn.prepareStatement("INSERT INTO restaurants_media (restaurant_id,media_name,Media) VALUES (?,?,?)");
					pst2.setInt(1, restaurantid);
					pst2.setString(2, filename);
					pst2.setBlob(3, item.getInputStream());
					pst2.executeUpdate();
				}
				
			}
			pst.execute();
			HttpSession session = request.getSession();
			response.sendRedirect(request.getContextPath()+"/ProductsController?id="+session.getAttribute("user"));
	}
		catch (NumberFormatException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	}

}
