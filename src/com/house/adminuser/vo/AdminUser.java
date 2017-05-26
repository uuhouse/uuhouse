package com.house.adminuser.vo;

/**
 * AdminUser entity. @author MyEclipse Persistence Tools
 */

public class AdminUser implements java.io.Serializable {

	// Fields

	private Integer aid;
	private String ausername;
	private String apassword;

	// Constructors

	/** default constructor */
	public AdminUser() {
	}

	/** full constructor */
	public AdminUser(String ausername, String apassword) {
		this.ausername = ausername;
		this.apassword = apassword;
	}

	// Property accessors

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getAusername() {
		return ausername;
	}

	public void setAusername(String ausername) {
		this.ausername = ausername;
	}

	public String getApassword() {
		return apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	
	
}