package t2.bean;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

public class CarDetailsBean {
	
int car_id;
String model;
String price;
String cartype;
String begindate;
public String getBegindate() {
	return begindate;
}
public void setBegindate(Date begindate) {
	String s = (String)(new SimpleDateFormat("yyyy-mm-dd hh:mm:ss")).format(begindate);
	this.begindate = s;
}
String enddate;

public String getEnddate() {
	return enddate;
}
public void setEnddate(Date enddate) {
	String s = (String)(new SimpleDateFormat("yyyy-mm-dd hh:mm:ss")).format(enddate);
	this.enddate = s;
}
public String getCartype() {
	return cartype;
}
public void setCartype(String cartype) {
	this.cartype = cartype;
}
List<MediaCarBean> media_car;


public List<MediaCarBean> getMedia_car() {
	return media_car;
}
public void setMedia_car(List<MediaCarBean> media_car) {
	this.media_car = media_car;
}
public int getCar_id() {
	return car_id;
}
public void setCar_id(int car_id) {
	this.car_id = car_id;
}
public String getModel() {
	return model;
}
public void setModel(String model) {
	this.model = model;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}


}
