package t2.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import t2.bean.RegisterBean;
import t2.util.DataConnection;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class ManageCustomerProfileDao {
	Connection con = null;
	PreparedStatement statement = null;
	public ResultSet viewProfile(String userid)
	{
		
		
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		
		try
		{
		con = DataConnection.createConnection(); //establishing connection
		
	//String userid=session
		statement = (Statement) con.createStatement(); //Statement is used to write queries. Read more about it.
		resultSet = statement.executeQuery("select customer_id,customer_username,first_name,last_name,email,password,contactno,address,city,state from customer where customer_username='"+userid+"'"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
		System.out.println(resultSet.getRow());
		}
		catch(SQLException e)
		{
		e.printStackTrace();
		}
		return resultSet;
		
	}

	
	public String updateProfile(RegisterBean registerbean)
	{   int customerid=registerbean.getCustomerid();
		String firstname = registerbean.getFirstname();
	String lastname = registerbean.getLastname();
	//String dateofbirth = registerbean.getDateofbirth();
	String email = registerbean.getEmail();
	String contactnumber = registerbean.getContactnumber();
	//String address1 = registerbean.getAddress1();
	String address2 = registerbean.getAddress();
	String city = registerbean.getCity();
	String state = registerbean.getState();
	//String gender = registerbean.getGender();
	
		Connection con = null;
	    PreparedStatement preparedStatement = null;

	try
	{
		System.out.println("yess2");
		con = DataConnection.createConnection();
	String query = "update customer set first_name=?,last_name=?,email=?,contactno=?,address=?,city=?,state=? where customer_id="+customerid; //Insert user details into the table ‘USERS’
	preparedStatement = (PreparedStatement) con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	preparedStatement.setString(1, firstname);
	preparedStatement.setString(2, lastname);
	//preparedStatement.setString(3, dateofbirth);
	preparedStatement.setString(3, email);
	preparedStatement.setString(4, contactnumber);
	//preparedStatement.setString(6, address1);
	preparedStatement.setString(5, address2);
	preparedStatement.setString(6, city);
	preparedStatement.setString(7, state);
	//preparedStatement.setString(10, gender);
	int i= preparedStatement.executeUpdate();

	if (i!=0) 
		System.out.println("yess3");//Just to ensure data has been inserted into the database
	return "SUCCESS";
	}
	catch(SQLException e)
	{
	e.printStackTrace();
	}
	return "Oops.. Something went wrong there..!"; // On failure, send a message from here.
	}


}
