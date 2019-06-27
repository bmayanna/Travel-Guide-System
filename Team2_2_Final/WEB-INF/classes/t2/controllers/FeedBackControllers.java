package t2.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import t2.bean.Feedback;
import t2.dao.FeedBackDao;

/**
 * Servlet implementation class FeedBackControllers
 */
@WebServlet("/FeedBackControllers")
public class FeedBackControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedBackControllers() {
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
		doGet(request, response);
		String customer_visit  = request.getParameter("visit");
		String customer_reason = request.getParameter("reason");
		String customer_need= request.getParameter("need");
		String customer_improve = request.getParameter("improve");
		String customer_easy = request.getParameter("easy");
		
		PrintWriter out=response.getWriter();
		if(customer_visit.isEmpty()||customer_reason.isEmpty()||customer_need.isEmpty()||customer_improve.isEmpty()||customer_easy.isEmpty())
		{
			RequestDispatcher rd = request.getRequestDispatcher("UserFeedBack.jsp");
			out.println("Please Make Sure you fill all the fields");
			rd.include(request, response);
		}
		else
		{
			Feedback object=new Feedback();
			object.setCustomer_visit(customer_visit);
			object.setCustomer_need(customer_need);
			object.setCustomer_reason(customer_reason);
			object.setCustomer_improve(customer_improve);
			object.setCustomer_easy(customer_easy);
			//RequestDispatcher rd = request.getRequestDispatcher("FeedBackSuccess.jsp");
			//rd.include(request,response);
			
		
		FeedBackDao object1=new FeedBackDao();
		String feedbackr = object1.submit(object);
		
		if(feedbackr.equals("SUCCESS")) //On success, you can display a message to user on Home page
		{
			
			RequestDispatcher rd1=request.getRequestDispatcher("FeedBackSuccess.jsp");
			rd1.include(request,response);
		}
		else //On Failure, display a meaningful message to the User.
		{
		request.getRequestDispatcher("UserFeedBack.jsp").forward(request, response);
		}
			
			
		
	}

	}
}
