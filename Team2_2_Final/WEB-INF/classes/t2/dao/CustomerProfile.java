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

import t2.bean.RegisterBean;
import t2.util.DataConnection;

@WebServlet("/CustomerProfile")
public class CustomerProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CustomerProfile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println("line38");
			Connection con = DataConnection.createConnection();
			PreparedStatement pst = con.prepareStatement("SELECT * FROM customer WHERE customer_username=?");
			String id =  (request.getAttribute("id") != null) ?request.getAttribute("id").toString():request.getParameter("id").toString();
			pst.setString(1, id);
			ResultSet rs = pst.executeQuery();
			RegisterBean v = new RegisterBean();
			while(rs.next())
			{
				
				int cust_id = rs.getInt(1);
				String uname = rs.getString(2).toString();
				String fname = rs.getString(3).toString();
				String lname = rs.getString(4).toString();
				// String dob = rs.getString(5).toString();
				String email = rs.getString(6).toString();
				String contact = rs.getString(8).toString();
				String address = rs.getString(9).toString();
				//String address2 = rs.getString(10).toString();
				String city = rs.getString(11).toString();
				String state = rs.getString(12).toString();
			//	String gender = rs.getString(13).toString();

				v.setCustomerid(cust_id);
				v.setUsername(uname);
				v.setFirstname(fname);
				v.setLastname(lname);
				v.setEmail(email);
				v.setContactnumber(contact);
				v.setAddress(address);
				//v.setAddress2(address2);
				v.setCity(city);
				v.setState(state);
				//v.setGender(gender);
			}
			request.setAttribute("customer_profile", v);
			System.out.println("line73");
			request.getRequestDispatcher("CustomerProfile.jsp").forward(request, response);
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
