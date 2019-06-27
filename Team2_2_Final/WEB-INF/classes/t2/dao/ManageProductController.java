package t2.dao;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import t2.bean.CarDetailsBean;
import t2.bean.MediaCarBean;
import t2.bean.VendorRegistrationBean;
import t2.util.DataConnection;
@WebServlet("/ManageProductController")
public class ManageProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		int id = Integer.parseInt(request.getParameter("id"));
		try{
			String query = "SELECT business_type FROM vendor WHERE vendor_id="+id;
			Connection con =  (Connection) DataConnection.createConnection();
			PreparedStatement pst = con.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				String business_type = rs.getString(1);
				if("cars".equals(business_type))
				{
					String query1 = "SELECT * FROM cars WHERE vendor_id="+id;
					PreparedStatement pst1 = con.prepareStatement(query);
					ResultSet rs1 = pst.executeQuery();
					ArrayList<CarDetailsBean> product_list = new ArrayList<CarDetailsBean> ();
					while(rs1.next())
					{
						CarDetailsBean v = new CarDetailsBean();
						v.setCar_id(rs1.getInt(1));
						v.setModel(rs1.getString(2));
						v.setPrice(rs1.getString(3));
						//v.setBegindate(rs1.getDate(4));
						//v.setBegindate(rs1.getString(4));
						//v.setEnddate(rs1.getDate(5));
						PreparedStatement pst_media = con.prepareStatement("SELECT * FROM cars_media WHERE car_id=?");
						pst_media.setInt(1,v.getCar_id());
						ResultSet rs2 = pst_media.executeQuery();
						ArrayList<MediaCarBean> product_media = new ArrayList<MediaCarBean> ();
						while(rs2.next())
						{ 
							MediaCarBean mv=new MediaCarBean();
							mv.setCar_id(rs2.getInt(1));
							mv.setMedia_name(rs2.getString(2));
							mv.setMedia_type(rs2.getString(3));
							Blob file = rs2.getBlob(4);
							mv.setMedia(file);
							product_media.add(mv);
						}
						v.setMedia_car(product_media);
					}
					request.setAttribute("product_list", product_list);
					request.getRequestDispatcher("ProductList.jsp").forward(request, response);

				}
				
			}
			
		}catch(SQLException s)
		{
			s.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

	}

}
