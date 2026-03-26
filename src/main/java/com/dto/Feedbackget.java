package com.dto;

public class Feedbackget {
	private String name;
	private String email;
	private String experience;
	private String rating;
	private String usability;
	private String design;
	private String performance;
	private String suggestion;

public Feedbackget() {
	//Default Constructor
}
public Feedbackget(String name,String email, String experience, String rating, String usability, String design, String performance, String suggestion){
	this.name=name;
	this.email=email;
	this.experience=experience;
	this.rating=rating;
	this.usability=usability;
	this.design=design;
	this.performance=performance;
	this.suggestion=suggestion;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getExperience() {
	return experience;
}
public void setExperience(String experience) {
	this.experience = experience;
}
public String getRating() {
	return rating;
}
public void setRating(String rating) {
	this.rating = rating;
}
public String getUsability() {
	return usability;
}
public void setUsability(String usability) {
	this.usability = usability;
}
public String getDesign() {
	return design;
}
public void setDesign(String design) {
	this.design = design;
}
public String getPerformance() {
	return performance;
}
public void setPerformance(String performance) {
	this.performance = performance;
}
public String getSuggestion() {
	return suggestion;
}
public void setSuggestion(String suggestion) {
	this.suggestion = suggestion;
}


}
