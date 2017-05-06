package com.house.uuhouse.vo;

import java.util.Date;

/**
 * 房屋的实体对象
 */

public class House implements java.io.Serializable {

	// Fields

	private Integer hid;
	private String htype;
	private String layout;
	private String title;
	private String untiprice;
	private String area;
	private String countprice;
	private String province;
	private String city;
	private String village;
	private String address;
	private String floor;
	private String htime;
	private String hphoto;
	private String description;
	private Integer isHot;
	private Date hdate;
	private String hstate;
	private Integer uid;
	private String uname;
	private String phone;
	private Integer cid;
	
	// Constructors

	/** default constructor */
	public House() {
	}

	/** full constructor */
	public House(String htype, String layout, String title, String untiprice, String area, String countprice,
			String province, String city, String village, String address, String floor, String htime, String hphoto,
			String description, Integer isHot, Date hdate, String hstate, Integer uid, String uname, String phone,Integer cid) {
		this.htype = htype;
		this.layout = layout;
		this.title = title;
		this.untiprice = untiprice;
		this.area = area;
		this.countprice = countprice;
		this.province = province;
		this.city = city;
		this.village = village;
		this.address = address;
		this.floor = floor;
		this.htime = htime;
		this.hphoto = hphoto;
		this.description = description;
		this.isHot = isHot;
		this.hdate = hdate;
		this.hstate = hstate;
		this.uid = uid;
		this.uname = uname;
		this.phone = phone;
		this.cid = cid;
	}

	// Property accessors

	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public String getHtype() {
		return this.htype;
	}

	public void setHtype(String htype) {
		this.htype = htype;
	}

	public String getLayout() {
		return this.layout;
	}

	public void setLayout(String layout) {
		this.layout = layout;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUntiprice() {
		return this.untiprice;
	}

	public void setUntiprice(String untiprice) {
		this.untiprice = untiprice;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCountprice() {
		return this.countprice;
	}

	public void setCountprice(String countprice) {
		this.countprice = countprice;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getVillage() {
		return this.village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFloor() {
		return this.floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getHtime() {
		return this.htime;
	}

	public void setHtime(String htime) {
		this.htime = htime;
	}

	public String getHphoto() {
		return this.hphoto;
	}

	public void setHphoto(String hphoto) {
		this.hphoto = hphoto;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getIsHot() {
		return this.isHot;
	}

	public void setIsHot(Integer isHot) {
		this.isHot = isHot;
	}

	public Date getHdate() {
		return this.hdate;
	}

	public void setHdate(Date hdate) {
		this.hdate = hdate;
	}

	public String getHstate() {
		return this.hstate;
	}

	public void setHstate(String hstate) {
		this.hstate = hstate;
	}

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}
	
}