package com.spiderblog.bean;

public class UserInfo {
	private int userid;
	private String uname;
	private String upass;
	private int age;
	private String sex;
	private int state;
	
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	public UserInfo() {
	}
	
	public UserInfo(int userid, String uname, String upass, int age, String sex, int state) {
		this.userid = userid;
		this.uname = uname;
		this.upass = upass;
		this.age = age;
		this.sex = sex;
		this.state = state;
	}
	
}
