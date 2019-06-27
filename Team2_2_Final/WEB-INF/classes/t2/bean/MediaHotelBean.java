package t2.bean;

import java.io.UnsupportedEncodingException;
import java.sql.Blob;
import java.sql.SQLException;

import org.apache.tomcat.util.codec.binary.Base64;

public class MediaHotelBean {
	
int hotel_id;
String media_name;
Blob media;
public int getHotel_id() {
	return hotel_id;
}
public void setHotel_id(int hotel_id) {
	this.hotel_id = hotel_id;
}
public String getMedia_name() {
	return media_name;
}
public void setMedia_name(String media_name) {
	this.media_name = media_name;
}
public Blob getMedia() {
	return media;
}
public void setMedia(Blob media) {
	this.media = media;
}
public String getImage()
{
	String img = null;
		try {
			byte[] imgfile = media.getBytes(1, (int) media.length());
			byte[] base64encoded = Base64.encodeBase64(imgfile);
			  img = new String(base64encoded, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return img;
}


}
