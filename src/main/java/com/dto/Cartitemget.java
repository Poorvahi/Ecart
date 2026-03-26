package com.dto;

public class Cartitemget {
	private int cartid;
	private int productid;
	private String name;
	private double price;
	private String img;
	private int quantity;
	private double total;
	private String email;
	
	public Cartitemget() {
		//default constructor
	}
	
	public Cartitemget(int cartid,int productid, String name, double price, String img, int quantity, double total, String email) {
		this.cartid=cartid;
		this.productid=productid;
		this.name=name;
		this.price=price;
		this.img=img;
		this.quantity=quantity;
		this.total=total;
		this.email=email;
	
	}

	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	
	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

}
