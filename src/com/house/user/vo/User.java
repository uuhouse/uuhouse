package com.house.user.vo;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer uid;
	private String username;
	private String password;
	private String mail;
	private String name;
	private String nicname;
	private String gender;
	private String photo;
	private String phone;
	private String qq;
	private String address;
	private String birthday;
	private String code;
	private Integer state;
	private Integer power;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String username, String password, String mail, String code, Integer state, Integer power) {
		this.username = username;
		this.password = password;
		this.mail = mail;
		this.code = code;
		this.state = state;
		this.power = power;
	}

	/** full constructor */
	public User(String username, String password, String mail, String name, String nicname, String gender,
			String photo, String phone, String qq, String address, String birthday, String code, Integer state,
			Integer power) {
		this.username = username;
		this.password = password;
		this.mail = mail;
		this.name = name;
		this.nicname = nicname;
		this.gender = gender;
		this.photo = photo;
		this.phone = phone;
		this.qq = qq;
		this.address = address;
		this.birthday = birthday;
		this.code = code;
		this.state = state;
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

	public Integer getPower() {
		return this.power;
	}

	public void setPower(Integer power) {
		this.power = power;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", mail=" + mail + ", name="
				+ name + ", nicname=" + nicname + ", gender=" + gender + ", photo=" + photo + ", phone=" + phone
				+ ", qq=" + qq + ", address=" + address + ", birthday=" + birthday + ", code=" + code + ", state="
				+ state + ", power=" + power + "]";
	}
	
	

}