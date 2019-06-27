package t2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import t2.bean.BookInfoBean;
//import t2.bean.RegisterBean;
import t2.util.DataConnection;

public class BookDao {
	public String registerBook(BookInfoBean bookinfobean)
	{
	int carid=bookinfobean.getCarid();
	System.out.println(carid);
	String firstname = bookinfobean.getFirstname();
	String lastname = bookinfobean.getLastname();
	String email = bookinfobean.getEmail();
	String contactinfo = bookinfobean.getContactinfo();
	String bookfrom = bookinfobean.getBookfrom();
	String bookto = bookinfobean.getBookto();
	String drivinglicensenumber = bookinfobean.getDrivinglicensenumber();
	

	Connection con = null;
	PreparedStatement preparedStatement = null;

	try
	{
	con = DataConnection.createConnection();
	String query = "insert into Bookcar(carid,Customer_First_Name,Customer_Last_Name,Email,ContactInfo,BookFrom,BookTo,DrivingLicenseNumber) values (?,?,?,?,?,?,?,?)"; //Insert user details into the table ‘USERS’
	preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	preparedStatement.setLong(1, carid);
	preparedStatement.setString(2, firstname);
	preparedStatement.setString(3, lastname);
	preparedStatement.setString(4, email);
	preparedStatement.setString(5, contactinfo);
	preparedStatement.setString(6, bookfrom);
	preparedStatement.setString(7, bookto);
	preparedStatement.setString(8, drivinglicensenumber);

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
	public String registerBookHotel(BookInfoBean bookinfobean)
	{
		int hotelid=bookinfobean.getHotelid();
		System.out.println(hotelid);
	String firstname = bookinfobean.getFirstname();
	String lastname = bookinfobean.getLastname();
	String email = bookinfobean.getEmail();
	String contactinfo = bookinfobean.getContactinfo();
	String bookfrom = bookinfobean.getBookfrom();
	String bookto = bookinfobean.getBookto();
	String numberofrooms = bookinfobean.getNumberofrooms();
	int price = bookinfobean.getPrice();

	Connection con = null;
	PreparedStatement preparedStatement = null;

	try
	{
	con = DataConnection.createConnection();
	String query = "insert into Bookhotel(hotelid,Customer_First_Name,Customer_Last_Name,Email,ContactInfo,BookFrom,BookTo,numberofrooms) values (?,?,?,?,?,?,?,?)"; //Insert user details into the table ‘USERS’
	preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	preparedStatement.setLong(1, hotelid);
	preparedStatement.setString(2, firstname);
	preparedStatement.setString(3, lastname);
	preparedStatement.setString(4, email);
	preparedStatement.setString(5, contactinfo);
	preparedStatement.setString(6, bookfrom);
	preparedStatement.setString(7, bookto);
	preparedStatement.setString(8, numberofrooms);

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
	
	public String registerBookRestaurant(BookInfoBean bookinfobean)
	{
		int restaurantid=bookinfobean.getRestaurantid();
		
	String firstname = bookinfobean.getFirstname();
	String lastname = bookinfobean.getLastname();
	String email = bookinfobean.getEmail();
	String contactinfo = bookinfobean.getContactinfo();
	
	String numberoftables = bookinfobean.getNumberoftables();
	

	Connection con = null;
	PreparedStatement preparedStatement = null;

	try
	{
	con = DataConnection.createConnection();
	String query = "insert into Bookrestaurant(Restaurantid,Customer_First_Name,Customer_Last_Name,Email,ContactInfo,numberoftables) values (?,?,?,?,?,?)"; //Insert user details into the table ‘USERS’
	preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	preparedStatement.setLong(1, restaurantid);
	preparedStatement.setString(2, firstname);
	preparedStatement.setString(3, lastname);
	preparedStatement.setString(4, email);
	preparedStatement.setString(5, contactinfo);
	
	preparedStatement.setString(6, numberoftables);

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
