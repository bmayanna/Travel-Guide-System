package t2.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import t2.bean.VendorRegistrationBean;
import t2.util.DataConnection;
@WebServlet("/ManageVendor")
public class ManageVendor extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ManageVendor() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		  
	   	 try {
			Connection con = DataConnection.createConnection();
			 PreparedStatement pst = con.prepareStatement("SELECT * FROM vendor WHERE status <> 0");
			 ResultSet rs = pst.executeQuery();
			 List<VendorRegistrationBean> vendor_list = new ArrayList <VendorRegistrationBean> ();
			 while(rs.next())
			 {
				VendorRegistrationBean v = new VendorRegistrationBean();
				//int vendorid = rs.getInt(0);
				String username = rs.getString(2);
				String company = rs.getString(5);
				String businesstype = rs.getString(6);
				String contact = rs.getString(11);
				String email = rs.getString(9);
				String fname = rs.getString(3);
				String lname = rs.getString(4);
				int ssn = rs.getInt(8);
				String regno = rs.getString(5);
				//v.setVendorid(vendorid);
				 v.setVendorusername(username);
				 v.setBusinessname(company);
				 v.setBusinesstype(businesstype);
				 v.setVendorcontact(contact);
				 v.setVendoremail(email);
				 v.setFirstname(fname);
				 v.setLastname(lname);
				 v.setSsn(ssn);
				 v.setBusinessregistrationnumber(regno);
				 vendor_list.add(v);
			 }
			 request.setAttribute("vendor_profile", vendor_list);
			 request.getRequestDispatcher("ManageVendors.jsp").forward(request, response);
			 con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
