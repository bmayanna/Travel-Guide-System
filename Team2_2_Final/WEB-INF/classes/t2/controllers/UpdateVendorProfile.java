package t2.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import t2.util.DataConnection;
@WebServlet("/UpdateVendorProfile")
public class UpdateVendorProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateVendorProfile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String username = request.getParameter("username");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String bname = request.getParameter("bname");
			String email = request.getParameter("email");
			String contact = request.getParameter("contact");
			String address = request.getParameter("address");
			Connection conn = DataConnection.createConnection();
			PreparedStatement pst;
			
			pst = conn.prepareStatement("UPDATE vendor SET first_name=?,last_name=?,business_name=?,email=?,contact=?,address=? WHERE vendor_username=?");
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, bname);
			pst.setString(4, email);
			pst.setString(5, contact);
			pst.setString(6, address);
			pst.setString(7, username);
			pst.execute();
			response.sendRedirect(request.getContextPath()+"/ManageProfileController");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
