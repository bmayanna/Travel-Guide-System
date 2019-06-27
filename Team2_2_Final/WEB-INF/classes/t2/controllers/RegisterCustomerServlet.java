package t2.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import t2.bean.RegisterBean;
import t2.dao.RegisterDao;

/**
 * Servlet implementation class RegisterCustomerServlet
 */
@WebServlet("/registercustomerservlet")
public class RegisterCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("sa");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String contactnumber = request.getParameter("contactnumber");
		String address = request.getParameter("address");
		
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		
		if(username.isEmpty()||firstname.isEmpty()||lastname.isEmpty()|| email.isEmpty()||password.isEmpty()||contactnumber.isEmpty()||address.isEmpty() ||city.isEmpty()||state.isEmpty())
		{
			RequestDispatcher rd = request.getRequestDispatcher("CustomerRegistration.jsp");
			out.println("<font color=red>Please fill all the fields, all the fields are mandatory</font>");
			rd.include(request, response);
		}
		else
		{
			
				
       
		RegisterBean registerbean = new RegisterBean();
		registerbean.setUsername(username);
		registerbean.setFirstname(firstname);
		registerbean.setLastname(lastname);
		registerbean.setEmail(email);
		registerbean.setPassword(password);
		registerbean.setContactnumber(contactnumber);
		registerbean.setAddress(address);
		//registerbean.setAddress2(address2);
		registerbean.setCity(city);
		registerbean.setState(state);
		RegisterDao registerDao = new RegisterDao();

		//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		String customerRegistered = registerDao.registerCustomer(registerbean);

		if(customerRegistered.equals("SUCCESS")) //On success, you can display a message to user on Home page
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("CustomerLogin.jsp");
			out.println("<font color=green>Congratulations!! You are successfully registered.</font>");
			rd.include(request,response);
		}
		else //On Failure, display a meaningful message to the User.
		{
		request.setAttribute("errMessage", customerRegistered);
		request.getRequestDispatcher("/RegisterCustomerServlet.jsp").forward(request, response);
		}
		
		
		
		
			
			
			
	
		}
	}

}
