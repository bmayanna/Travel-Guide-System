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

@WebServlet("/ManageUpdateCustomerProfileController")
public class ManageUpdateCustomerProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ManageUpdateCustomerProfileController() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
HttpSession session = request.getSession();

		ManageCustomerProfileDao manageprofiledao= new ManageCustomerProfileDao();
		String userid= (String) session.getAttribute("customer_id");
		ResultSet resultSet= manageprofiledao.viewProfile(userid);
		
		
		try {
			while(resultSet.next())
			{   

				
				
	request.setAttribute("c1", resultSet.getString("customer_id"));
	System.out.println(resultSet.getString("customer_id"));
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
				request.getRequestDispatcher("/UpdateProfileCustomer.jsp").forward(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
