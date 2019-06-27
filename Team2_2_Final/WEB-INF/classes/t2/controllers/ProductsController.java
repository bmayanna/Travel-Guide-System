package t2.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;

import t2.bean.*;
import t2.util.DataConnection;
@WebServlet("/ProductsController")
public class ProductsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			Connection con = DataConnection.createConnection();
			PreparedStatement pst = con.prepareStatement("SELECT business_type,vendor_id FROM vendor where vendor_username=?");
			String uname = request.getParameter("id");
			System.out.println("ProductsController id : "+uname);
			pst.setString(1, uname);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				String btype = rs.getString(1);
				int vendorid=rs.getInt(2);
				if("cars".equalsIgnoreCase(btype))
				{
					PreparedStatement pst_1 = con.prepareStatement("SELECT * FROM cars WHERE vendorid=?");
					pst_1.setInt(1, vendorid);
					ResultSet rs_1=pst_1.executeQuery();
					List<CarDetailsBean> c_list = new ArrayList<CarDetailsBean> ();
					int i=1;
					while(rs_1.next())
					{
						System.out.println(i);
						i++;
						CarDetailsBean c = new CarDetailsBean();
						int car_id=rs_1.getInt(1);
						c.setCar_id(car_id);
						c.setModel(rs_1.getString(3));
						c.setPrice(rs_1.getString(4));
						c.setBegindate(rs_1.getDate(5));
						c.setEnddate(rs_1.getDate(6));
						
						PreparedStatement pst_media = con.prepareStatement("SELECT * FROM cars_media WHERE cars_id=?");
						pst_media.setInt(1, car_id);
						System.out.println("car_id: "+car_id);
						ResultSet rs_media = pst_media.executeQuery();
						ArrayList<MediaCarBean> product_media = new ArrayList<MediaCarBean> ();
						while(rs_media.next())
						{

							MediaCarBean mv=new MediaCarBean();
							mv.setCar_id(rs_media.getInt(1));
							mv.setMedia_name(rs_media.getString(4));
							mv.setMedia_type(rs_media.getString(3));
							Blob file = rs_media.getBlob(5);
							mv.setMedia(file);
							product_media.add(mv);
						}
						c.setMedia_car(product_media);
					   c_list.add(c);
					}
					request.setAttribute("product_list",c_list);
					request.setAttribute("business_type", "cars");
					request.getRequestDispatcher("ProductList.jsp").forward(request, response);
					
				}
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
