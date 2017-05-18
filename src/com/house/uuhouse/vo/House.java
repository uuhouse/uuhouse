package com.house.uuhouse.vo;

import java.util.Date;

/**
 * House entity. @author MyEclipse Persistence Tools
 */

public class House implements java.io.Serializable {

	// Fields

	private Integer hid;
	private String kind;
	private String htype;
	private String identify;
	private String layout;
	private String title;
	private String areas;
	private String floor;
	private String untiprice;
	private String area;
	private String countprice;
	private String province;
	private String city;
	private String village;
	private String stretch;
	private String address;
	private String cx;
	private String htime;
	private String propertyRight;
	private String elevator;
	private String decorate;
	private String himage;
	private String description;
	private String feature;
	private String ownerMood;
	private String areasInfo;
	private String amEnvironment;
	private String monthPay;
	private String map;
	private String hstate;
	private Integer uid;
	private String uname;
	private String phone;
	private Integer isHot;
	private Date hdate;
	private Integer cid;

	// Constructors

	/** default constructor */
	public House() {
	}

	/** full constructor */
	public House(String kind, String htype, String identify, String layout, String title, String areas, String floor,
			String untiprice, String area, String countprice, String province, String city, String village,
			String stretch, String address, String cx, String htime, String propertyRight, String elevator,
			String decorate, String himage, String description, String feature, String ownerMood, String areasInfo,
			String amEnvironment, String monthPay, String map, String hstate, Integer uid, String uname, String phone,
			Integer isHot, Date hdate, Integer cid) {
		this.kind = kind;
		this.htype = htype;
		this.identify = identify;
		this.layout = layout;
		this.title = title;
		this.areas = areas;
		this.floor = floor;
		this.untiprice = untiprice;
		this.area = area;
		this.countprice = countprice;
		this.province = province;
		this.city = city;
		this.village = village;
		this.stretch = stretch;
		this.address = address;
		this.cx = cx;
		this.htime = htime;
		this.propertyRight = propertyRight;
		this.elevator = elevator;
		this.decorate = decorate;
		this.himage = himage;
		this.description = description;
		this.feature = feature;
		this.ownerMood = ownerMood;
		this.areasInfo = areasInfo;
		this.amEnvironment = amEnvironment;
		this.monthPay = monthPay;
		this.map = map;
		this.hstate = hstate;
		this.uid = uid;
		this.uname = uname;
		this.phone = phone;
		this.isHot = isHot;
		this.hdate = hdate;
		this.cid = cid;
	}

	// Property accessors

	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public String getKind() {
		return this.kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getHtype() {
		return this.htype;
	}

	public void setHtype(String htype) {
		this.htype = htype;
	}

	public String getIdentify() {
		return this.identify;
	}

	public void setIdentify(String identify) {
		this.identify = identify;
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

	public String getAreas() {
		return this.areas;
	}

	public void setAreas(String areas) {
		this.areas = areas;
	}

	public String getFloor() {
		return this.floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
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

	public String getStretch() {
		return this.stretch;
	}

	public void setStretch(String stretch) {
		this.stretch = stretch;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCx() {
		return this.cx;
	}

	public void setCx(String cx) {
		this.cx = cx;
	}

	public String getHtime() {
		return this.htime;
	}

	public void setHtime(String htime) {
		this.htime = htime;
	}

	public String getPropertyRight() {
		return this.propertyRight;
	}

	public void setPropertyRight(String propertyRight) {
		this.propertyRight = propertyRight;
	}

	public String getElevator() {
		return this.elevator;
	}

	public void setElevator(String elevator) {
		this.elevator = elevator;
	}

	public String getDecorate() {
		return this.decorate;
	}

	public void setDecorate(String decorate) {
		this.decorate = decorate;
	}

	public String getHimage() {
		return this.himage;
	}

	public void setHimage(String himage) {
		this.himage = himage;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFeature() {
		return this.feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}

	public String getOwnerMood() {
		return this.ownerMood;
	}

	public void setOwnerMood(String ownerMood) {
		this.ownerMood = ownerMood;
	}

	public String getAreasInfo() {
		return this.areasInfo;
	}

	public void setAreasInfo(String areasInfo) {
		this.areasInfo = areasInfo;
	}

	public String getAmEnvironment() {
		return this.amEnvironment;
	}

	public void setAmEnvironment(String amEnvironment) {
		this.amEnvironment = amEnvironment;
	}

	public String getMonthPay() {
		return this.monthPay;
	}

	public void setMonthPay(String monthPay) {
		this.monthPay = monthPay;
	}

	public String getMap() {
		return this.map;
	}

	public void setMap(String map) {
		this.map = map;
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

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

}