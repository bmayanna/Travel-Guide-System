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


@WebServlet("/BookController")
public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public BookController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int myid= Integer.parseInt(request.getParameter("id"));
		request.setAttribute("myid", myid);
		request.getRequestDispatcher("/BookInfoDetails.jsp").forward(request, response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
       int carid=Integer.parseInt(request.getParameter("carid"));
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String contactinfo = request.getParameter("contactinfo");
		String bookfrom = request.getParameter("bookfrom");
		String bookto = request.getParameter("bookto");
		String drivinglicensenumber = request.getParameter("drivinglicensenumber");
		if(firstname.isEmpty()||lastname.isEmpty()||email.isEmpty()||contactinfo.isEmpty()||bookfrom.isEmpty()||bookto.isEmpty()||drivinglicensenumber.isEmpty())
		{
			RequestDispatcher rd = request.getRequestDispatcher("BookInfoDetails.jsp");
			out.println("<font color=red>Please fill all the fields, all the fields are mandatory</font>");
			rd.include(request, response);
		}
		else
		{
			
				
        //int userid1=Integer.parseInt(userid);
		BookInfoBean bookinfobean = new BookInfoBean();
		bookinfobean.setCarid(carid);
		bookinfobean.setFirstname(firstname);
		bookinfobean.setLastname(lastname);
		bookinfobean.setEmail(email);
		bookinfobean.setContactinfo(contactinfo);
		bookinfobean.setBookfrom(bookfrom);
		bookinfobean.setBookto(bookto);
		bookinfobean.setDrivinglicensenumber(drivinglicensenumber);
		BookDao bookDao = new BookDao();

		//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		String bookRegistered = bookDao.registerBook(bookinfobean);

		if(bookRegistered.equals("SUCCESS")) //On success, you can display a message to user on Home page
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("BookInfoDetails.jsp");
			out.println("<font color=green>Congratulations!! You have successfully booked a car.</font>");
			rd.include(request,response);
		}
		else //On Failure, display a meaningful message to the User.
		{
		request.setAttribute("errMessage", bookRegistered);
		request.getRequestDispatcher("/BookInfoDetails.jsp").forward(request, response);
		}
		
	
	}
		
		
		
	}
	


}
