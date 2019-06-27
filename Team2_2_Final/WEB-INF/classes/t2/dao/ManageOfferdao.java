package t2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import t2.bean.ManageOfferbean;
import t2.util.DataConnection;

public class ManageOfferdao {
	public String RegisterOffer(ManageOfferbean ManageBean)
	{
		String OfferName = ManageBean.getOfferName();
		String Price = ManageBean.getPrice();
		String Details = ManageBean.getDetails();
		String Validity_From = ManageBean.getValidity_From();
		String Validity_To = ManageBean.getValidity_To();
		
		
		 Connection con = null;
		 PreparedStatement preparedStatement = null;
		  
		 try
		 {
		 con = DataConnection.createConnection();
		 String query = "insert into manageOffer(OfferName,Price,Details,Validity_From,Validity_To) values (?,?,?,?,?)";
		 preparedStatement = con.prepareStatement(query);
		 preparedStatement.setString(1,OfferName);
		 preparedStatement.setString(2,Price);
		 preparedStatement.setString(3, Details);
		 preparedStatement.setString(4, Validity_From);
		 preparedStatement.setString(5, Validity_To);
		 
		
		 int i= preparedStatement.executeUpdate();
		  
		 if (i!=0)  //Just to ensure data has been inserted into the database
		 return "SUCCESS"; 
		 }
		 catch(SQLException e)
		 {
		 e.printStackTrace();
		 }
		 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
		 }
	
    
	public ResultSet DisplayOffer()
	{
		
		
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		
		try
		{
		con = DataConnection.createConnection(); //establishing connection
		
		statement = (Statement) con.createStatement(); //Statement is used to write queries. Read more about it.
		resultSet = statement.executeQuery("select OfferName,Price,Details,Validity_From,Validity_To from manageoffer where VendorId=12345"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
		System.out.println(resultSet.getRow());
		}
		catch(SQLException e)
		{
		e.printStackTrace();
		}
		return resultSet;

	

	
}
}





