package t2.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import t2.util.DataConnection;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try{
			Connection con = DataConnection.createConnection();
			String uname = request.getParameter("uname").toString();
			String pwd = request.getParameter("pwd").toString();
			PreparedStatement pst =  con.prepareStatement("SELECT password FROM admin_users WHERE username=?");
			pst.setString(1, uname);
			ResultSet rs = pst.executeQuery();
			if(rs.next() && pwd.equals(rs.getString(1)))
			{
				HttpSession session = request.getSession(false);
				if(session != null)
				{
					session.setAttribute("admin", uname);
					request.getRequestDispatcher("Admin.jsp").forward(request, response);
				}
			}
			else
			{
				request.setAttribute("message", "Invalid username or password");
				request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}

}
