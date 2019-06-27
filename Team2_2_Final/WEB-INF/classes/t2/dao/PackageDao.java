package t2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import t2.bean.PackageListBean;
import t2.util.DataConnection;

public class PackageDao {
	
	Connection con = null;
	
	public List PackageList(){
	
		List ls= new ArrayList();
		PreparedStatement preparedStatement;
		try {
			con = DataConnection.createConnection();
			preparedStatement = con.prepareStatement("select * from packages ");
		
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()){
				PackageListBean data= new PackageListBean();
				data.setImage(rs.getBlob("image"));
				data.setPackage_id(rs.getInt("Package_id"));
				data.setPackageName(rs.getString("PackageName"));
				data.setPrice(rs.getString("Price"));
				data.setPackageDetails(rs.getString("PackageDetails"));
				ls.add(data);
			}
		}
		 catch (SQLException e) {
			e.printStackTrace();
		}
		return ls;
	}
	
	public List<PackageListBean> fetchPackage(){
		
		List<PackageListBean> allPackages = new ArrayList<PackageListBean>();
		try{
			Statement st = DataConnection.createConnection().createStatement();
			ResultSet rs=st.executeQuery("select * from packages");
			while(rs.next()){
				PackageListBean plb=new PackageListBean();
				plb.setPackage_id(rs.getInt("Package_id"));
				plb.setPackageName(rs.getString("PackageName"));
				plb.setPackageDetails(rs.getString("PackageDetails"));
				plb.setPrice(rs.getString("Price"));
				plb.setImage(rs.getBlob("image"));
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
	
