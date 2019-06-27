package t2.bean;

public class BookInfoBean {
	private String firstname;
	private String lastname;
	private String email;
	private String contactinfo;
	private int carid;
	private int hotelid;
	private int price;
	private int restaurantid;
	private String numberoftables;
	
	private String Bookfrom;
	private String Bookto;
	private String drivinglicensenumber;
	private String numberofrooms;
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public int getCarid() {
		return carid;
		}
	public int getHotelid() {
		return hotelid;
	}
	
	public String getNumberofrooms() {
		return numberofrooms;
	}
	public void setNumberofrooms(String numberofrooms) {
		this.numberofrooms = numberofrooms;
	}
	public void setHotelid(int hotelid) {
		this.hotelid = hotelid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactinfo() {
		return contactinfo;
	}
	public void setContactinfo(String contactinfo) {
		this.contactinfo = contactinfo;
	}
	public String getBookfrom() {
		return Bookfrom;
	}
	public void setBookfrom(String bookfrom) {
		Bookfrom = bookfrom;
	}
	public String getBookto() {
		return Bookto;
	}
	public void setBookto(String bookto) {
		Bookto = bookto;
	}
	public String getDrivinglicensenumber() {
		return drivinglicensenumber;
	}
	public void setDrivinglicensenumber(String drivinglicensenumber) {
		this.drivinglicensenumber = drivinglicensenumber;
	}
	public int getRestaurantid() {
		return restaurantid;
	}
	public void setRestaurantid(int restaurantid) {
		this.restaurantid = restaurantid;
	}
	public String getNumberoftables() {
		return numberoftables;
	}
	public void setNumberoftables(String numberoftables) {
		this.numberoftables = numberoftables;
	}
	

}
