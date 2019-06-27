package t2.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import t2.bean.Feedback;
import t2.util.DataConnection;

public class FeedBackDao {
	
	public String submit(Feedback feedback){
		
	String customer_visit=feedback.getCustomer_visit() ;
	String customer_reason=feedback.getCustomer_reason();
	String customer_need=feedback.getCustomer_need();
	String customer_improve=feedback.getCustomer_improve();
	String customer_easy=feedback.getCustomer_easy();
	
	Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DataConnection.createConnection();
	 String query = "insert into feedback values (?,?,?,?,?,?)"; //Insert user details into the table 'feedback'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setInt(1, 8);
	 preparedStatement.setString(2, customer_visit);
	 preparedStatement.setString(3, customer_reason);
	 preparedStatement.setString(4, customer_need);
	 preparedStatement.setString(5, customer_improve);
	 preparedStatement.setString(6, customer_easy);
	 int i= preparedStatement.executeUpdate();
	  
	 if (i!=0)  //Just to ensure data has been inserted into the database
	 return "SUCCESS"; 
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 return "Oops.. Something went wrong there..!"; 
	}
}
