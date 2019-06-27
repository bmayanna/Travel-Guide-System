package t2.dao;

import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Connection;

import t2.util.DataConnection;

public class Pagedao {

	public byte[] getImages(String imageId) throws SQLException {

			Connection con = null;
			con = DataConnection.createConnection();
		   PreparedStatement preparedStatement = con.prepareStatement("SELECT image FROM `packages` WHERE Package_id='"+imageId+"'");
			ResultSet rs= preparedStatement.executeQuery();

		   byte[] blobAsBytes=new byte[500];
		   while(rs.next()){
		   	Blob blob=rs.getBlob("image");
		   	blobAsBytes=blob.getBytes(1,(int) blob.length());
		   }
		return blobAsBytes;
}
	
}
