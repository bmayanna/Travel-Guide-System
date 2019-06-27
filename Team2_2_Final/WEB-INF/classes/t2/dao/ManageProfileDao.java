package t2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import t2.bean.*;
import t2.util.*;

public class ManageProfileDao {
	Connection con = null;
	String uname;
	PreparedStatement statement = null;
	public ManageProfileDao(String uname) {
		this.uname = uname;
	}
	public ResultSet viewProfile()
	{
		Connection con = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		
		try
		{
		con = DataConnection.createConnection(); //establishing connection
		
		statement = con.prepareStatement("select vendor_username,first_name,last_name,business_name,business_reg_no,email,contact,address,city,state from vendor where vendor_username='"+uname+"';"); //Statement is used to write queries. Read more about it.
		resultSet = statement.executeQuery(); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
		}
		catch(SQLException e)
		{
		e.printStackTrace();
		}
		return resultSet;
		
	}
}
