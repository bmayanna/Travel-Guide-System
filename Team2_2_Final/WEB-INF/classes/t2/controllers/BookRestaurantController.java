package t2.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import t2.bean.BookInfoBean;
import t2.dao.BookDao;

/**
 * Servlet implementation class BookRestaurantController
 */
@WebServlet("/BookRestaurantController")
public class BookRestaurantController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookRestaurantController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int myid= Integer.parseInt(request.getParameter("id"));
		request.setAttribute("myid", myid);
		request.getRequestDispatcher("/BookRestaurantInfoDetails.jsp").forward(request, response);
				
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
       int restaurantid=Integer.parseInt(request.getParameter("restaurantid"));
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String contactinfo = request.getParameter("contactinfo");
		String numberoftables = request.getParameter("numberoftables");
		if(firstname.isEmpty()||lastname.isEmpty()||email.isEmpty()||contactinfo.isEmpty()||numberoftables.isEmpty())
		{
			RequestDispatcher rd = request.getRequestDispatcher("BookRestaurantInfoDetails.jsp");
			out.println("<font color=red>Please fill all the fields, all the fields are mandatory</font>");
			rd.include(request, response);
		}
		else
		{
			
				
        //int userid1=Integer.parseInt(userid);
		BookInfoBean bookinfobean = new BookInfoBean();
		bookinfobean.setRestaurantid(restaurantid);
		bookinfobean.setFirstname(firstname);
		bookinfobean.setLastname(lastname);
		bookinfobean.setEmail(email);
		bookinfobean.setContactinfo(contactinfo);
		bookinfobean.setNumberoftables(numberoftables);
		BookDao bookDao = new BookDao();

		//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		String bookRegistered = bookDao.registerBookRestaurant(bookinfobean);

		if(bookRegistered.equals("SUCCESS")) //On success, you can display a message to user on Home page
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("BookRestaurantInfoDetails.jsp");
			out.println("<font color=green>Congratulations!! You have successfully booked tables.</font>");
			rd.include(request,response);
		}
		else //On Failure, display a meaningful message to the User.
		{
		request.setAttribute("errMessage", bookRegistered);
		request.getRequestDispatcher("/BookRestaurantInfoDetails.jsp").forward(request, response);
		}
		
	
	}
	}

}
