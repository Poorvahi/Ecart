package com.dto;

public class Contactget {
	private String email;
	private String msg;

	
	public Contactget() {
		//Default Constructor
	}
	public Contactget(String email, String msg){
		this.email=email;
		this.msg=msg;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
	
}
