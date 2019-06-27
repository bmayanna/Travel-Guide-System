package t2.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import t2.bean.*;
import t2.controllers.*;
import t2.dao.*;
import t2.util.*;




/**
 * Servlet implementation class VendorRegistrationControllers
 */
@WebServlet("/VendorRegistrationControllers")
public class VendorRegistrationControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VendorRegistrationControllers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String vendorusername = request.getParameter("vendorusername");
		 String firstname = request.getParameter("vendorfirstname");
		 String lastname = request.getParameter("vendorlastname");
		 String businessname = request.getParameter("vendorbusinessname");
		 String businesstype = request.getParameter("vendorbusinesstype");
		 String businessregistrationnumber = request.getParameter("businessregistrationnumber");
		 String ssn = request.getParameter("ssn");
		 String vendoremail = request.getParameter("vendoremail");
		 String vendorpassword = request.getParameter("vendorpassword");
		 String vendorcontact = request.getParameter("vendorcontact");
		 String vendoraddress = request.getParameter("vendoraddress");
		 String vendorcity = request.getParameter("vendorcity");
		 String vendorstate = request.getParameter("vendorstate");
		 
		 if(vendorusername.isEmpty()||firstname.isEmpty()||lastname.isEmpty()||businessname.isEmpty()||businesstype.isEmpty()||businessregistrationnumber.isEmpty()||ssn.isEmpty()||vendoremail.isEmpty()||vendorpassword.isEmpty()||vendoraddress.isEmpty()||vendorcity.isEmpty()||vendorstate.isEmpty())
			{
				RequestDispatcher rd = request.getRequestDispatcher("VendorRegister.jsp");
				out.println("<font color=red>Please fill all the fields, all the fields are mandatory</font>");
				rd.include(request, response);
			}
			else
			{
				
					
	        
			VendorRegistrationBean vendorregistrationbean = new VendorRegistrationBean();
			vendorregistrationbean.setVendorusername(vendorusername);
			vendorregistrationbean.setFirstname(firstname);
			vendorregistrationbean.setLastname(lastname);
			vendorregistrationbean.setBusinessname(businessname);
			vendorregistrationbean.setBusinesstype(businesstype);
			vendorregistrationbean.setBusinessregistrationnumber(businessregistrationnumber);
			vendorregistrationbean.setSsn(Integer.parseInt(ssn));
			vendorregistrationbean.setVendoremail(vendoremail);
			vendorregistrationbean.setVendorpassword(vendorpassword);
			vendorregistrationbean.setVendorcontact(vendorcontact);
			vendorregistrationbean.setVendorcontact(vendorcontact);
			vendorregistrationbean.setVendoraddress(vendoraddress);
			vendorregistrationbean.setVendorcity(vendorcity);
			vendorregistrationbean.setVendorstate(vendorstate);
			
			VendorRegistrationDao vendorregistrationdao = new VendorRegistrationDao();

			//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
			String userRegistered = vendorregistrationdao.registerVendor(vendorregistrationbean);

			if(userRegistered.equals("SUCCESS")) //On success, you can display a message to user on Home page
			{
				
				RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
				//request.setAttribute("congo", message);
				out.println("<font color=green>Congratulations!! You are successfully registered.</font>");
				rd.include(request,response);
			}
			else //On Failure, display a meaningful message to the User.
			{
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/VendorRegister.jsp").forward(request, response);
			}
			
			
			
			
				}
				
	
				
			}
	
	public static boolean isNumeric(String str)
	{
	    for (char c : str.toCharArray())
	    {
	        if (!Character.isDigit(c)) return false;
	    }
	    return true;
	}
	public static boolean isText(String str)
	{
	    for (char c : str.toCharArray())
	    {
	        if (!Character.isAlphabetic(c)) return false;
	    }
	    return true;
	}
}
