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

@WebServlet("/VendorProfile")
public class VendorProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public VendorProfile() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			Connection con = DataConnection.createConnection();
			PreparedStatement pst = con.prepareStatement("SELECT * FROM vendor WHERE vendor_username=?");
			String id =  (request.getAttribute("id") != null) ?request.getAttribute("id").toString():request.getParameter("id").toString();
			System.out.println(id);
			pst.setString(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				VendorRegistrationBean v = new VendorRegistrationBean();
				int vendorid = rs.getInt(1);
				String username = rs.getString(2);
				String company = rs.getString(5);
				String businesstype = rs.getString(6);
				String contact = rs.getString(11);
				String email = rs.getString(9);
				String fname = rs.getString(3);
				String lname = rs.getString(4);
				int ssn = rs.getInt(8);
				int status = rs.getInt(15);
				String status_msg=status==0?"Your request is pending for approval":(status==1)?"Account is Active":"Account has been Suspended. Please contact us for more details";
				String regno = rs.getString(5);
				v.setVendorid(vendorid);
				
				v.setVendorusername(username);
				v.setBusinessname(company);
				v.setBusinesstype(businesstype);
				v.setVendorcontact(contact);
				v.setVendoremail(email);
				v.setFirstname(fname);
				v.setLastname(lname);
				v.setSsn(ssn);
				v.setBusinessregistrationnumber(regno);
				request.setAttribute("vendor_profile", v);
				request.setAttribute("status_msg", status_msg);
				request.getRequestDispatcher("VendorProfile.jsp").forward(request, response);
			}
			else{
				System.out.println("no match!");
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
