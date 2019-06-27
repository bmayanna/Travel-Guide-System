package t2.util;
import java.sql.Connection;
import t2.bean.*;
import t2.controllers.*;
import java.sql.DriverManager;

public class DataConnection {
	public static Connection createConnection()
	 {
	 Connection con = null;
	 String url = "jdbc:mysql://localhost:3306/travel_guide_system?autoReconnect=true&useSSL=false";
	 String username = "root";
	 String password = "root";
	  
	 try
	 {
	 try
	 {
	 Class.forName("com.mysql.jdbc.Driver");
	 } 
	 catch (ClassNotFoundException e)
	 {
	 e.printStackTrace();
	 }
	  con = DriverManager.getConnection(url, username, password);
	 } 
	 catch (Exception e) 
	 {
	 e.printStackTrace();
	 }
	 return con; 
	 }

}
