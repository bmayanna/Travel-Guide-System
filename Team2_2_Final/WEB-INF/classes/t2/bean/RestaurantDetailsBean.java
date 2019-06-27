package t2.bean;

import java.util.List;

public class RestaurantDetailsBean {
	
	int restaurant_id;
	String restaurant_name;
	String address;
	String optime;
	List<MediaRestaurantBean> media_restaurant;
	public int getRestaurant_id() {
		return restaurant_id;
	}
	public void setRestaurant_id(int restaurant_id) {
		this.restaurant_id = restaurant_id;
	}
	public String getRestaurant_name() {
		return restaurant_name;
	}
	public void setRestaurant_name(String restaurant_name) {
		this.restaurant_name = restaurant_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOptime() {
		return optime;
	}
	public void setOptime(String optime) {
		this.optime = optime;
	}
	public List<MediaRestaurantBean> getMedia_restaurant() {
		return media_restaurant;
	}
	public void setMedia_restaurant(List<MediaRestaurantBean> media_restaurant) {
		this.media_restaurant = media_restaurant;
	}

}
