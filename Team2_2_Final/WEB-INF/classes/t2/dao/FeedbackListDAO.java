package t2.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import t2.bean.Feedback;
import t2.util.DataConnection;

public class FeedbackListDAO {

	public List<Feedback> FeedbackList() throws SQLException{
		List<Feedback> feedlist=new ArrayList<Feedback>();
		//DbConnection db = new DbConnection();
		Connection con = null;
		con = DataConnection.createConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from feedback");

		while(rs.next()){
		Feedback feed = new Feedback();
		feed.setCustomer_easy(rs.getString("easy"));
		feed.setCustomer_improve(rs.getString("reason"));
		feed.setCustomer_need(rs.getString("need"));
		feed.setCustomer_reason(rs.getString("reason"));
		feed.setCustomer_visit(rs.getString("visit"));
		
		feedlist.add(feed);
		//System.out.println(modreg.getFirstName());
		}

		return feedlist;

		}

	
	
}
