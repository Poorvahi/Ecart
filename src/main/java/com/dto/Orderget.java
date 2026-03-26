package com.dto;

public class Orderget {
	private int order_id;
	private String payment_id;
	private double price;
	private String email;
	private int product_id;
	private String product_name;
	private String createddate;
	private String image;


public Orderget() {
	//default constructor
	}

	public Orderget(int order_id, String payment_id,double price,String email,int product_id,String product_name, String createddate,String image){
		this.order_id=order_id;
		this.payment_id=payment_id;
		this.price=price;
		this.email=email;
		this.product_id=product_id;
		this.product_name=product_name;
		this.createddate=createddate;
		this.image=image;
		}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public String getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getCreateddate() {
		return createddate;
	}

	public void setCreateddate(String createddate) {
		this.createddate = createddate;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}
