package com.dto;

public class Categoryget {
	private int cid;
	private String cnm;
	
	public Categoryget() {
		//Default Constructor
	}
	public Categoryget(int cid,String cnm){
		this.cid=cid;
		this.cnm=cnm;

}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCnm() {
		return cnm;
	}
	public void setCnm(String cnm) {
		this.cnm = cnm;
	}
}