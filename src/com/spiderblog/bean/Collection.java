package com.spiderblog.bean;

import java.io.Serializable;

public class Collection implements Serializable{
	private int cid;
	private UserInfo user;
	private Blog blog;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	
	public Collection() {
	}
	public Collection(int cid, UserInfo user, Blog blog) {
		super();
		this.cid = cid;
		this.user = user;
		this.blog = blog;
	}

	
}
