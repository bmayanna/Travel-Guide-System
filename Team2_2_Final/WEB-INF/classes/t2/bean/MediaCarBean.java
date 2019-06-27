package t2.bean;
import java.sql.*;

import org.apache.tomcat.util.codec.binary.Base64;

import java.io.*;

public class MediaCarBean {
	int car_id;
	String media_type;
	String media_name;
	Blob Media;
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public String getMedia_type() {
		return media_type;
	}
	public void setMedia_type(String media_type) {
		this.media_type = media_type;
	}
	public String getMedia_name() {
		return media_name;
	}
	public void setMedia_name(String media_name) {
		this.media_name = media_name;
	}
	
	public Blob getMedia() {
		return Media;
	}
	public void setMedia(Blob media) {
		Media = media;
	}
	public String getImage()
	{
		String img = null;
		if("image".equals(media_type))
		{
			try {
				byte[] imgfile = Media.getBytes(1, (int) Media.length());
				byte[] base64encoded = Base64.encodeBase64(imgfile);
				  img = new String(base64encoded, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return img;
	}

}
