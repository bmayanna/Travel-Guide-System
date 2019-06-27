package t2.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

import t2.util.DataConnection;

@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			String username = request.getParameter("cust_username");
			Connection con = DataConnection.createConnection();
			PreparedStatement pst = con.prepareStatement("SELECT * FROM bookhotel WHERE customer_username=?");
			PreparedStatement pst1 = con.prepareStatement("SELECT * FROM bookcar WHERE customer_username=?");
			PreparedStatement pst2 = con.prepareStatement("SELECT * FROM bookrestaurant WHERE customer_username=?");
			ResultSet bookcar = pst1.executeQuery();
			ResultSet bookhotel = pst.executeQuery();
			ResultSet bookrestaurant = pst2.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

}
