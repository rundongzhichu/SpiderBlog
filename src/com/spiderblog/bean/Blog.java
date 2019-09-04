package com.spiderblog.bean;

import java.io.Serializable;

public class Blog implements Serializable{
	private int bid;
	private UserInfo writer;
	private Kinds kind;
	private String title;
	private String content;
	private String addtime;
	private int up;
	private int down;
	private int click;
	private int state;
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public UserInfo getWriter() {
		return writer;
	}
	public void setWriter(UserInfo writer) {
		this.writer= writer;
	}
	public Kinds getKind() {
		return kind;
	}
	public void setKind(Kinds kind) {
		this.kind = kind;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public int getUp() {
		return up;
	}
	public void setUp(int up) {
		this.up = up;
	}
	public int getDown() {
		return down;
	}
	public void setDown(int down) {
		this.down = down;
	}
	public int getClick() {
		return click;
	}
	public void setClick(int click) {
		this.click = click;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	public Blog() {
	}
	public Blog(int bid, UserInfo writer, Kinds kind, String title, String content, String addtime, int up, int down,
			int click, int state) {
		this.bid = bid;
		this.writer = writer;
		this.kind = kind;
		this.title = title;
		this.content = content;
		this.addtime = addtime;
		this.up = up;
		this.down = down;
		this.click = click;
		this.state = state;
	}
	public Blog(int bid) {
		super();
		this.bid = bid;
	}
	
	
}
