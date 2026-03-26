package com.dto;

public class Productget {
	private int productid;
	private String productname;
	private double price;
	private String category;
	private String description;
	private String brand;
	private int quantity;
	private double total;
	private double subtotal;
	private String image;
	
	public Productget() {
		//default constructor
	}
	
	public Productget(int productid, String productname,double price,String category, String description,String brand,int quantity,double total, double subtotal,String image){
		this.productid=productid;
		this.productname=productname;
		this.price=price;
		this.category=category;
		this.description=description;
		this.brand=brand;
		this.quantity=quantity;
		this.total=total;
		this.subtotal=subtotal;
		this.image=image;
		}
	
	
	public int getProductid() {
		return productid;
	}


	public void setProductid(int productid) {
		this.productid = productid;
	}


	public String getProductname() {
		return productname;
	}


	public void setProductname(String productname) {
		this.productname = productname;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public double getTotal() {
		return total;
	}


	public void setTotal(double total) {
		this.total = total;
	}


	public double getSubtotal() {
		return subtotal;
	}


	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	

}
