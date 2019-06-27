package t2.dao;
import t2.bean.*;
import t2.controllers.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import t2.util.*;
import t2.bean.VendorRegistrationBean;

public class VendorRegistrationDao {
	public String registerVendor(VendorRegistrationBean vendorregistrationbean)
	 {
		String vendorusername = vendorregistrationbean.getVendorusername();
		 String firstname = vendorregistrationbean.getFirstname();
		 String lastname = vendorregistrationbean.getLastname();
		 String businessname = vendorregistrationbean.getBusinessname();
		 String businesstype = vendorregistrationbean.getBusinesstype();
		 String businessregistrationnumber = vendorregistrationbean.getBusinessregistrationnumber();
		 int ssn = vendorregistrationbean.getSsn();
		 String vendoremail = vendorregistrationbean.getVendoremail();
		 String vendorpassword = vendorregistrationbean.getVendorpassword();
		 String vendorcontact = vendorregistrationbean.getVendorcontact();
		 String vendoraddress = vendorregistrationbean.getVendoraddress();
		 String vendorcity = vendorregistrationbean.getVendorcity();
		 String vendorstate =vendorregistrationbean.getVendorstate(); 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	  
	 try
	 {
	 con = DataConnection.createConnection();
	 String query = "insert into vendor(vendor_username,first_name,last_name,business_name,business_type,business_reg_no,ssn,email,password,contact,address,city,state,status) values (?,?,?,?,?,?,?,?,?,?,?,?,?,0)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1, vendorusername);
	 preparedStatement.setString(2, firstname);
	 preparedStatement.setString(3, lastname);
	 preparedStatement.setString(4, businessname);
	 preparedStatement.setString(5, businesstype);
	 preparedStatement.setString(6, businessregistrationnumber);
	 preparedStatement.setInt(7, ssn);
	 preparedStatement.setString(8, vendoremail);
	 preparedStatement.setString(9, vendorpassword );
	 preparedStatement.setString(10, vendorcontact);
	 preparedStatement.setString(11, vendoraddress);
	 preparedStatement.setString(12, vendorcity);
	 preparedStatement.setString(13, vendorstate);
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


}
