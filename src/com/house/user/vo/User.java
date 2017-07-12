package com.house.user.vo;

import java.util.Date;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer uid;
	private String username;
	private String password;
	private String name;
	private String idCard;
	private String mail;
	private String nicname;
	private String gender;
	private String photo;
	private String phone;
	private String qq;
	private String address;
	private String birthday;
	private String code;
	private Integer state;
	private Date loginTime;
	private Integer power;

	// Constructors

	/** default constructor */
	public User() {
	}

	

	public User(Integer uid, String username, String password, String name, String idCard, String mail, String nicname,
			String gender, String photo, String phone, String qq, String address, String birthday, String code,
			Integer state, Date loginTime, Integer power) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.idCard = idCard;
		this.mail = mail;
		this.nicname = nicname;
		this.gender = gender;
		this.photo = photo;
		this.phone = phone;
		this.qq = qq;
		this.address = address;
		this.birthday = birthday;
		this.code = code;
		this.state = state;
		this.loginTime = loginTime;
		this.power = power;
	}



	// Property accessors

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
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

	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	
	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNicname() {
		return this.nicname;
	}

	public void setNicname(String nicname) {
		this.nicname = nicname;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	
	public Date getLoginTime() {
		return loginTime;
	}



	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public Integer getPower() {
		return this.power;
	}

	public void setPower(Integer power) {
		this.power = power;
	}

}