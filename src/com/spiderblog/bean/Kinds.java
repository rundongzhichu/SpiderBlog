package com.spiderblog.bean;

public class Kinds {
	private int kid;
	private String kname;

	public int getKid() {
		return kid;
	}
	public void setKid(int kid) {
		this.kid = kid;
	}
	public String getKname() {
		return kname;
	}
	public void setKname(String kname) {
		this.kname = kname;
	}
	
	public Kinds() {
	}
	public Kinds(int kid, String kname) {
		this.kid = kid;
		this.kname = kname;
	}
	public Kinds(int kid) {
		super();
		this.kid = kid;
	}
	

}
