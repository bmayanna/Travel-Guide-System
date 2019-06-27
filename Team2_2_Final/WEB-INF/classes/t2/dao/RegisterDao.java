package t2.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import t2.bean.RegisterBean;
import t2.controllers.RegisterCustomerServlet;
import t2.util.DataConnection;

public class RegisterDao {
	public String registerUser(RegisterBean registerbean)
	{
	String firstname = registerbean.getFirstname();
	String lastname = registerbean.getLastname();
	String email = registerbean.getEmail();
	
	int userid = registerbean.getUserid();
	String password = registerbean.getPassword();
	

	Connection con = null;
	PreparedStatement preparedStatement = null;

	try
	{
	con = DataConnection.createConnection();
	String query = "insert into users(Firstname,Lastname,Email,Userid,Pass) values (?,?,?,?,?)"; //Insert user details into the table ‘USERS’
	preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	preparedStatement.setString(1, firstname);
	preparedStatement.setString(2, lastname);
	preparedStatement.setString(3, email);
	preparedStatement.setLong(4, userid);
	preparedStatement.setString(5, password);

	int i= preparedStatement.executeUpdate();

	if (i!=0) //Just to ensure data has been inserted into the database
	return "SUCCESS";
	}
	catch(SQLException e)
	{
	e.printStackTrace();
	}
	return "Oops.. Something went wrong there..!"; // On failure, send a message from here.
	}

	public String registerCustomer(RegisterBean registerbean)
	{
		
	String username = registerbean.getUsername();
	String firstname = registerbean.getFirstname();
	String lastname = registerbean.getLastname();
	String email = registerbean.getEmail();
	String password = registerbean.getPassword();
	String contactnumber = registerbean.getContactnumber();
	String address = registerbean.getAddress();
	String city=registerbean.getCity();
	String state=registerbean.getState();
	
	

	Connection con = null;
	PreparedStatement preparedStatement = null;

	try
	{
	con = DataConnection.createConnection();
	String query = "insert into customer(customer_username,first_name,last_name,email,password,contactno,address,city,state) values (?,?,?,?,?,?,?,?,?)"; //Insert user details into the table ‘USERS’
	preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	preparedStatement.setString(1, username);
	preparedStatement.setString(2, firstname);
	preparedStatement.setString(3, lastname);
	preparedStatement.setString(4, email);
	preparedStatement.setString(5, password);
	preparedStatement.setString(6, contactnumber);
	preparedStatement.setString(7, address);
	
	preparedStatement.setString(8, city);
	preparedStatement.setString(9, state);
	

	int i= preparedStatement.executeUpdate();

	if (i!=0) //Just to ensure data has been inserted into the database
	return "SUCCESS";
	}
	catch(SQLException e)
	{
	e.printStackTrace();
	}
	return "Oops.. Something went wrong there..!"; // On failure, send a message from here.
	}
}
