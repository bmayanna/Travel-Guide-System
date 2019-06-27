		package t2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import t2.bean.HotelsListBean;
import t2.util.DataConnection;

public class HotelsListDao {
	
	Connection con = null;
	
	public List HotelsList(){
	
		List hs= new ArrayList();
		PreparedStatement preparedStatement;
		try {
			con = DataConnection.createConnection();
			preparedStatement = con.prepareStatement("select * from hotel ");
		
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
				HotelsListBean data= new HotelsListBean();
				data.setHotelName(rs.getString("HotelName"));
				data.setHotelLocation(rs.getString("HotelLocation"));
				data.setHotelDescription(rs.getString("HotelDescription"));
				data.setHotelZipCode(rs.getString("HotelZipCode"));
				data.setRoomPrice(rs.getString("RoomPrice"));
				hs.add(data);
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}
		return hs;
	}
	
	public List<HotelsListBean> fetchPackage(){
		
		List<HotelsListBean> allPackages = new ArrayList<HotelsListBean>();
		try{
			Statement st = DataConnection.createConnection().createStatement();
			ResultSet rs=st.executeQuery("select * from hotel");
			while(rs.next()){
				HotelsListBean plb=new HotelsListBean();
				plb.setImage(rs.getBlob("image"));
				plb.setHotelName(rs.getString("HotelName"));
				plb.setHotelLocation(rs.getString("HotelLocation"));
				plb.setHotelDescription(rs.getString("HotelDescription"));
				plb.setHotelZipCode(rs.getString("HotelZipCode"));
				plb.setRoomPrice(rs.getString("RoomPrice"));
				allPackages.add(plb);
			}
			st.close();
			
		}
		catch(Exception e){
			System.out.println(e);
			
			
		}
		
		
		return allPackages;
	}
}	
	

