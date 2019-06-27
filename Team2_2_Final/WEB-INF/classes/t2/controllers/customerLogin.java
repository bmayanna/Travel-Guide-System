package t2.controllers;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import t2.util.DataConnection;

@WebServlet("/customerLogin")
public class customerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		if(request.getParameter("register")!=null)
		{
			HttpSession session = request.getSession(false);
			if(session !=null)
			{
				session.invalidate();
			}
			response.sendRedirect("CustomerRegister.jsp");
		}
		else
		{
			try{
			Connection con = (Connection) DataConnection.createConnection();
			String uname = request.getParameter("username");
			String pwd = request.getParameter("password");
				PreparedStatement verify_user = (PreparedStatement) con.prepareStatement("SELECT * FROM customer WHERE customer_username=? AND password=?");
				verify_user.setString(1,uname);
				verify_user.setString(2, pwd);
				ResultSet rs = verify_user.executeQuery();
				//System.out.println(rs.next());
				//System.out.println(uname+"   "+pwd);
				//System.out.println(uname+"   "+rs.getString(6));
				if(rs.next())
				{
					String fname = rs.getString(2).toString();
					String lname = rs.getString(3).toString();
					System.out.println("2");
					request.setAttribute("id", uname);
					HttpSession session = request.getSession(false);
					if(session != null)
					{
						session.setAttribute("customer_id", uname);
						//session.setAttribute("user", uname);
						session.setAttribute("fname", fname);
						session.setAttribute("lname", lname);
						request.setAttribute("customer_username", uname);
						request.getRequestDispatcher("CustomerHome.jsp").forward(request, response);
						System.out.println("here");
					}
				}

				else
				{
					System.out.println("print 1");
					request.setAttribute("message", "Invalid username or password");
					request.getRequestDispatcher("CustomerLogin.jsp").forward(request, response);
				}
				con.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		}
	}

}
