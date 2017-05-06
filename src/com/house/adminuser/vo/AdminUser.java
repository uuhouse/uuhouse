package com.house.adminuser.vo;

/**
 * AdminUser entity. @author MyEclipse Persistence Tools
 */

public class AdminUser implements java.io.Serializable {

	// Fields

	private Integer aid;
	private String username;
	private String password;

	// Constructors

	/** default constructor */
	public AdminUser() {
	}

	/** full constructor */
	public AdminUser(String username, String password) {
		this.username = username;
		this.password = password;
	}

	// Property accessors

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}