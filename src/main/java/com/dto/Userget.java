package com.dto;

public class Userget {
	private String username;
	private String firstname;
	private String lastname;
	private String password;
	private String email;
	private long contact;
	private String gender;
	private String dob;
	private String address;
	private String state;
	private String city;
	private int postal;
	private String role;
	
	
	public Userget() {
		//Default Constructor
	}
	public Userget(String username, String firstname, String lastname,String password, String email, long contact, String gender,String dob,String address, String state, String city, int postal, String role){
		this.username=username;
		this.firstname=firstname;
		this.lastname=lastname;
		this.password=password;
		this.email=email;
		this.contact=contact;
		this.gender=gender;
		this.dob=dob;
		this.address=address;
		this.state=state;
		this.city=city;
		this.postal=postal;
		this.role=role;
		}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPostal() {
		return postal;
	}
	public void setPostal(int postal) {
		this.postal = postal;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	

}
