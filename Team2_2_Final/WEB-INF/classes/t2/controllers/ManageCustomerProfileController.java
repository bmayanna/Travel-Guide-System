package t2.controllers;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import t2.dao.ManageCustomerProfileDao;

/**
 * Servlet implementation class ManageCustomerProfileController
 */
@WebServlet("/ManageCustomerProfileController")
public class ManageCustomerProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ManageCustomerProfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
	HttpSession session = request.getSession();
		t2.dao.ManageCustomerProfileDao manageprofiledao= new t2.dao.ManageCustomerProfileDao();
		String userid= (String) session.getAttribute("customer_id");
		System.out.println("The customer id from controller:"+userid);
		ResultSet resultSet= manageprofiledao.viewProfile(userid);
		
		try {
			while(resultSet.next())
			{   
				/*VendorRegistrationBean vv=new VendorRegistrationBean();
			    vv.setVendorusername(resultSet.getString("vendor_username"));
				vv.setFirstname(resultSet.getString("first_name"));
				vv.setLastname(resultSet.getString("last_name"));
				vv.setBusinessname(resultSet.getString("business_name"));
				vv.setBusinessregistrationnumber(resultSet.getString("business_reg_no"));
				vv.setVendoremail(resultSet.getString("email"));
				vv.setVendorcontact(resultSet.getString("contact"));
				vv.setVendoraddress(resultSet.getString("address"));
				vv.setVendorcity(resultSet.getString("city"));
				vv.setVendorstate(resultSet.getString("state"));
				vv.setVendorstatus(resultSet.getInt("status"));*/
				
				
				request.setAttribute("c1", resultSet.getString("customer_id"));
				request.setAttribute("c2", resultSet.getString("customer_username"));
				request.setAttribute("c3", resultSet.getString("first_name"));
				request.setAttribute("c4", resultSet.getString("last_name"));
				//request.setAttribute("c5", resultSet.getString("dob"));
				request.setAttribute("c5", resultSet.getString("email"));
				request.setAttribute("c6", resultSet.getString("password"));
				request.setAttribute("c7", resultSet.getString("contactno"));
				request.setAttribute("c8", resultSet.getString("address"));
				//request.setAttribute("c10", resultSet.getString("address2"));
				request.setAttribute("c9", resultSet.getString("city"));
				request.setAttribute("c10", resultSet.getString("state"));
				//request.setAttribute("c13", resultSet.getString("gender"));
				request.getRequestDispatcher("/ProfileCustomer.jsp").forward(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
