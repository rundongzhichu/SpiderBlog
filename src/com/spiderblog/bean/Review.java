package com.spiderblog.bean;

import java.io.Serializable;

public class Review implements Serializable{
	private int rid;
	private Blog blog;
	private UserInfo reviewer;
	private int evaluate;
	private String content;
	private String addtime;
	private int state;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	public UserInfo getReviewer() {
		return reviewer;
	}
	public void setReviewer(UserInfo reviewer) {
		this.reviewer = reviewer;
	}
	public int getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(int evalute) {
		this.evaluate = evalute;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	public Review() {
	}
	public Review(int rid, Blog blog, UserInfo reviewer, int evalute, String content, String addtime, int state) {
		this.rid = rid;
		this.blog = blog;
		this.reviewer = reviewer;
		this.evaluate = evalute;
		this.content = content;
		this.addtime = addtime;
		this.state = state;
	}
	
	
}
