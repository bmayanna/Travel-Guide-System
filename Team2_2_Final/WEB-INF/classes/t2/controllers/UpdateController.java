package t2.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import t2.bean.RegisterBean;
import t2.dao.ManageCustomerProfileDao;
import t2.dao.RegisterDao;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int customerid = Integer.parseInt(request.getParameter("a"));
		String firstname = request.getParameter("c");
		String lastname = request.getParameter("d");
//		String dateofbirth = request.getParameter("e");
		String email = request.getParameter("f");
		String contactnumber = request.getParameter("g");
	//	String address1 = request.getParameter("h");
		String address2 = request.getParameter("i");
		String city = request.getParameter("j");
		String state = request.getParameter("k");
		//String gender = request.getParameter("l");
		
		RegisterBean registerbean = new RegisterBean();
		registerbean.setCustomerid(customerid);
		registerbean.setFirstname(firstname);
		registerbean.setLastname(lastname);
		//registerbean.setDateofbirth(dateofbirth);
		registerbean.setEmail(email);
		registerbean.setContactnumber(contactnumber);
	//	registerbean.setAddress1(address1);
		registerbean.setAddress(address2);
		registerbean.setCity(city);
		registerbean.setState(state);
	//	registerbean.setGender(gender);
		System.out.println("yess1");
		ManageCustomerProfileDao manageprofiledao= new ManageCustomerProfileDao();
		String ss= manageprofiledao.updateProfile(registerbean);

		if(ss.equals("SUCCESS")) //On success, you can display a message to user on Home page
		{
			System.out.println("yess");
			RequestDispatcher rd=request.getRequestDispatcher("selection.jsp");
			out.println("<font color=green>Congratulations!! You are successfully updated.</font>");
			rd.include(request,response);
		}
		else //On Failure, display a meaningful message to the User.
		{
			RequestDispatcher rd=request.getRequestDispatcher("selection.jsp");
			out.println("<font color=green>oops!! You are not successfully updated.</font>");
			rd.include(request,response);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
