package com.musunsul29;

import java.sql.Timestamp;

public class DTOMember {
	
	private int mem_pk;
	private String mem_id;
	private String mem_email;
	private String mem_pw;
	private String mem_phonnumber;
	private String mem_nickname;
	private String mem_name;
	private String mem_sex;
	
	public int getMem_pk() {
		return mem_pk;
	}
	public void setMem_pk(int mem_pk) {
		this.mem_pk = mem_pk;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_phonnumber() {
		return mem_phonnumber;
	}
	public void setMem_phonnumber(String mem_phonnumber) {
		this.mem_phonnumber = mem_phonnumber;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_sex() {
		return mem_sex;
	}
	public void setMem_sex(String mem_sex) {
		this.mem_sex = mem_sex;
	}
	public Timestamp getMem_birthday() {
		return mem_birthday;
	}
	public void setMem_birthday(Timestamp mem_birthday) {
		this.mem_birthday = mem_birthday;
	}
	public int getMem_age() {
		return mem_age;
	}
	public void setMem_age(int mem_age) {
		this.mem_age = mem_age;
	}
	public String getMem_image() {
		return mem_image;
	}
	public void setMem_image(String mem_image) {
		this.mem_image = mem_image;
	}
	private Timestamp mem_birthday;
	private int mem_age;
	private String mem_image;
	
	

}
