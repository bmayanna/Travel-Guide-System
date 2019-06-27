package t2.bean;

import java.sql.Blob;

public class HotelsListBean {

	private String HotelName;
	private String HotelLocation;
	private String HotelDescription;
	private String HotelZipCode;
	private String RoomPrice;
	private int Hotel_Id;
	private Blob image;
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public int getHotel_Id() {
		return Hotel_Id;
	}
	public void setHotel_Id(int hotel_Id) {
		Hotel_Id = hotel_Id;
	}
	public String getHotelName() {
		return HotelName;
	}
	public void setHotelName(String hotelName) {
		HotelName = hotelName;
	}
	public String getHotelLocation() {
		return HotelLocation;
	}
	public void setHotelLocation(String hotelLocation) {
		HotelLocation = hotelLocation;
	}
	public String getHotelDescription() {
		return HotelDescription;
	}
	public void setHotelDescription(String hotelDescription) {
		HotelDescription = hotelDescription;
	}
	public String getHotelZipCode() {
		return HotelZipCode;
	}
	public void setHotelZipCode(String hotelZipCode) {
		HotelZipCode = hotelZipCode;
	}
	public String getRoomPrice() {
		return RoomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		RoomPrice = roomPrice;
	}





}