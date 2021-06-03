package com.musunsul29;

import java.sql.Timestamp;

public class DTOReview {
	
	private int re_pk;
	private int et_pk;
	private Timestamp re_date;
	private String mem_id;
	private String mem_nickname;
	private String re_star;
	private String re_like;
	private String re_tmi;
	private String re_image;
	
	public int getRe_pk() {
		return re_pk;
	}
	public void setRe_pk(int re_pk) {
		this.re_pk = re_pk;
	}
	public int getEt_pk() {
		return et_pk;
	}
	public void setEt_pk(int et_pk) {
		this.et_pk = et_pk;
	}
	public Timestamp getRe_date() {
		return re_date;
	}
	public void setRe_date(Timestamp re_date) {
		this.re_date = re_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public String getRe_star() {
		return re_star;
	}
	public void setRe_star(String re_star) {
		this.re_star = re_star;
	}
	public String getRe_like() {
		return re_like;
	}
	public void setRe_like(String re_like) {
		this.re_like = re_like;
	}
	public String getRe_tmi() {
		return re_tmi;
	}
	public void setRe_tmi(String re_tmi) {
		this.re_tmi = re_tmi;
	}
	public String getRe_image() {
		return re_image;
	}
	public void setRe_image(String re_image) {
		this.re_image = re_image;
	}
	

}
