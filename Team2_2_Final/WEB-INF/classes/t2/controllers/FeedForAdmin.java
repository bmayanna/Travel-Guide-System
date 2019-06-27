package t2.controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import t2.bean.Feedback;
import t2.dao.FeedBackDao;
import t2.dao.FeedbackListDAO;

/**
 * Servlet implementation class FeedForAdmin
 */
@WebServlet("/FeedForAdmin")
public class FeedForAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

   	
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   		HttpSession session=request.getSession(); 
		List<Feedback> feedlist=new ArrayList<Feedback>();
		FeedbackListDAO feed=new FeedbackListDAO();
		try {
		feedlist= feed.FeedbackList();
		//System.out.println("Size Of List:"+inactivelist.size());
		session.setAttribute("feedlist", feedlist);
		response.sendRedirect("FeedList.jsp");
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
}


   		
		doGet(request, response);
		
		
	}

}
