package t2.bean;

import java.sql.Blob;

public class PackageListBean {
	
	public int Package_id;
	public int getPackage_id() {
		return Package_id;
	}
	public void setPackage_id(int package_id) {
		Package_id = package_id;
	}
	public int getVendor_id() {
		return Vendor_id;
	}
	public void setVendor_id(int vendor_id) {
		Vendor_id = vendor_id;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public String getPackageName(){
		return PackageName;
	}
	public void setPackageName(String packageName) {
		PackageName = packageName;
	}
	public String getPackageDetails() {
		return PackageDetails;
	}
	public void setPackageDetails(String packageDetails) {
		PackageDetails = packageDetails;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	public int Vendor_id;
	public Blob image;
	public String PackageName;
	public String PackageDetails;
	public String Price;

}
