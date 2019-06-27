package t2.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
//import java.util.Date;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mysql.jdbc.Blob;

import t2.util.DataConnection;
@WebServlet("/AddModifyCars")
@MultipartConfig(maxRequestSize=16177215)  
public class AddModifyCars extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddModifyCars() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
				String carmodel;
				int car_price;
				java.sql.Date begindate = null;
				java.sql.Date enddate = null;
				
					carmodel = request.getParameter("car_model");
					car_price = Integer.parseInt(request.getParameter("car_price").toString());
					SimpleDateFormat formatDate=new SimpleDateFormat("yyyy-MM-dd");  
					try {
						java.util.Date begindate_1 = formatDate.parse(request.getParameter("car_begindate").toString());
					begindate = new Date(begindate_1.getTime());
					System.out.println(begindate);
					java.util.Date enddate_1 = formatDate.parse(request.getParameter("car_enddate").toString());
					enddate = new Date(enddate_1.getTime());
				} catch (ParseException e) {
					e.printStackTrace();
				}
				
				System.out.println("ACTION : "+request.getParameter("action"));
				Connection conn = DataConnection.createConnection();
				PreparedStatement pst;
				if(("modify").equals(request.getParameter("action").toString()))
				{
					//System.out.println("inside if");
					int carid = Integer.parseInt(request.getParameter("carid").toString());
					pst = conn.prepareStatement("UPDATE cars SET model=?,price=?,avail_date_begin=?,avail_date_end=? WHERE cars_id=?");
					pst.setString(1, carmodel);
					pst.setInt(2, car_price);
					pst.setDate(3, (Date) begindate);
					pst.setDate(4,(Date) enddate);
					pst.setInt(5, carid);
					//code to add media to existing product - begins
					Part item = (request.getPart("media_file"));
					String filename = request.getParameter("media_name").toString();
					String filetype = request.getParameter("media_type").toString();
										if((item).getName()!=null)
					{
						
						
						PreparedStatement pst2 = (PreparedStatement) conn.prepareStatement("INSERT INTO cars_media (cars_id,media_type,media_name,Media) VALUES (?,?,?,?)");
						pst2.setInt(1, carid);
						pst2.setString(2, filetype);
						pst2.setString(3, filename);
						pst2.setBlob(4, item.getInputStream());
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
						query = "DELETE FROM cars_media WHERE media_id in ("+list_query+")";
						System.out.println(query);
						PreparedStatement pst_media = conn.prepareStatement(query);
						pst_media.executeUpdate();
					}

				}
				else
				{
					HttpSession session = request.getSession(false);
					String vendor_name = "";
					String location = request.getParameter("location");
					String zipcode = request.getParameter("zipcode");

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
					pst = conn.prepareStatement("INSERT INTO cars (model,price,avail_date_end,avail_date_begin,vendorid,location,zipcode) VALUES (?,?,?,?,?,?,?)");
					
					pst.setString(1, carmodel);
					pst.setInt(2, car_price);
					pst.setDate(3, (Date) begindate);
					pst.setDate(4,(Date) enddate);
					pst.setInt(5, vendor);
					pst.setString(6, location);
					pst.setString(7, zipcode);
					pst.execute();
					pst = conn.prepareStatement("SELECT MAX(cars_id) FROM cars;");
					ResultSet rs = pst.executeQuery();
					int carid=0;
					if(rs.next())
					{
						carid = rs.getInt(1);
					}
					Part item = (request.getPart("file"));
					String filename = request.getParameter("filename").toString();
					String filetype = request.getParameter("filetype").toString();
					//String desc = request.getParameter("desc").toString();
					if((item).getName()!=null)
					{
						
						
						PreparedStatement pst2 = (PreparedStatement) conn.prepareStatement("INSERT INTO cars_media (cars_id,media_type,media_name,Media) VALUES (?,?,?,?)");
						pst2.setInt(1, carid);
						pst2.setString(2, filetype);
						pst2.setString(3, filename);
						pst2.setBlob(4, item.getInputStream());
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
