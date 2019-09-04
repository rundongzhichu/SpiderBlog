package com.spiderblog.bean;

public class Admin {
	private int userid;
	private String uname;
	private String upass;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public Admin() {
	}
	public Admin(int userid, String uname, String upass) {
		this.userid = userid;
		this.uname = uname;
		this.upass = upass;
	}
	
	

}
