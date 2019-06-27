package t2.controllers;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import t2.*;
import t2.bean.*;
import t2.dao.ManageProfileDao;

/**
 * Servlet implementation class ManageProfileController
 */
@WebServlet("/ManageProfileController")
public class ManageProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageProfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doPost(request,response);
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		System.out.println("mamam");
		String uname = session.getAttribute("user").toString(); 
				//request.getParameter("user_name");
		ManageProfileDao manageprofiledao= new ManageProfileDao(uname);
		ResultSet resultSet= manageprofiledao.viewProfile();
		System.out.println("manageprofile");
		
		
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
				
				
				request.setAttribute("vv1", resultSet.getString("vendor_username"));
				request.setAttribute("vv2", resultSet.getString("first_name"));
				request.setAttribute("vv3", resultSet.getString("last_name"));
				request.setAttribute("vv4", resultSet.getString("business_name"));
				request.setAttribute("vv5", resultSet.getString("business_reg_no"));
				request.setAttribute("vv6", resultSet.getString("email"));
				request.setAttribute("vv7", resultSet.getString("contact"));
				request.setAttribute("vv8", resultSet.getString("address"));
				request.setAttribute("vv9", resultSet.getString("city"));
				request.setAttribute("vv10", resultSet.getString("state"));
				request.getRequestDispatcher("Profile.jsp").forward(request, response);
				
			}
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
		response.setContentType("text/html");
		String uname = request.getParameter("user_name");
		ManageProfileDao manageprofiledao= new ManageProfileDao(uname);
		ResultSet resultSet= manageprofiledao.viewProfile();
		System.out.println("manageprofile");
		
		
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
				
				
				request.setAttribute("vv1", resultSet.getString("vendor_username"));
				request.setAttribute("vv2", resultSet.getString("first_name"));
				request.setAttribute("vv3", resultSet.getString("last_name"));
				request.setAttribute("vv4", resultSet.getString("business_name"));
				request.setAttribute("vv5", resultSet.getString("business_reg_no"));
				request.setAttribute("vv6", resultSet.getString("email"));
				request.setAttribute("vv7", resultSet.getString("contact"));
				request.setAttribute("vv8", resultSet.getString("address"));
				request.setAttribute("vv9", resultSet.getString("city"));
				request.setAttribute("vv10", resultSet.getString("state"));
				request.getRequestDispatcher("/Profile.jsp").forward(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
	}

}
