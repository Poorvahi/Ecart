package com.dto;

public class Subcategoryget {
	private int subid;
	private String subnm;
	private int cid;
	private String cnm;
	
	public Subcategoryget() {
		//Default Constructor
	}
	public Subcategoryget(int subid,String subnm, int cid,String cnm){
		this.subid=subid;
		this.subnm=subnm;
		this.cid=cid;
		this.cnm=cnm;
}
	public int getSubid() {
		return subid;
	}
	public void setSubid(int subid) {
		this.subid = subid;
	}
	public String getSubnm() {
		return subnm;
	}
	public void setSubnm(String subnm) {
		this.subnm = subnm;
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
