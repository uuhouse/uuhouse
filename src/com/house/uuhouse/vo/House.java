package com.house.uuhouse.vo;

import java.util.Date;

/**
 * House entity. @author MyEclipse Persistence Tools
 */

public class House implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer hid;
	private String identify;
	private String areas;
	private String village;
	private String title;
	private String htype;
	private String htime;
	private String floor;
	private String description;
	private String himage;
	private Integer uid;
	private String phone;
	private String uname;
	private String hstate;
	private String stretch;
	private String address;
	private String layout;
	private String area;
	private String countprice;
	private Integer is_hot;
	private Date hdate;
	private String province;
	private String city;
	private String untiprice;
	private Integer cid;

	// Constructors

	/** default constructor */
	public House() {
	}

	/** full constructor */
	public House(String identify, String areas, String village, String title, String htype, String htime, String floor,
			String description, String himage, Integer uid, String phone, String uname, String hstate, String stretch,
			String address, String layout, String area, String countprice, Integer is_hot, Date hdate, String province,
			String city, String untiprice, Integer cid) {
		this.identify = identify;
		this.areas = areas;
		this.village = village;
		this.title = title;
		this.htype = htype;
		this.htime = htime;
		this.floor = floor;
		this.description = description;
		this.himage = himage;
		this.uid = uid;
		this.phone = phone;
		this.uname = uname;
		this.hstate = hstate;
		this.stretch = stretch;
		this.address = address;
		this.layout = layout;
		this.area = area;
		this.countprice = countprice;
		this.is_hot = is_hot;
		this.hdate = hdate;
		this.province = province;
		this.city = city;
		this.untiprice = untiprice;
		this.cid = cid;
	}

	// Property accessors

	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public String getIdentify() {
		return this.identify;
	}

	public void setIdentify(String identify) {
		this.identify = identify;
	}

	public String getAreas() {
		return this.areas;
	}

	public void setAreas(String areas) {
		this.areas = areas;
	}

	public String getVillage() {
		return this.village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getHtype() {
		return this.htype;
	}

	public void setHtype(String htype) {
		this.htype = htype;
	}

	public String getHtime() {
		return this.htime;
	}

	public void setHtime(String htime) {
		this.htime = htime;
	}

	public String getFloor() {
		return this.floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getHimage() {
		return this.himage;
	}

	public void setHimage(String himage) {
		this.himage = himage;
	}

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getHstate() {
		return this.hstate;
	}

	public void setHstate(String hstate) {
		this.hstate = hstate;
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

	public String getLayout() {
		return this.layout;
	}

	public void setLayout(String layout) {
		this.layout = layout;
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

	public Integer getIs_hot() {
		return is_hot;
	}

	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}

	public Date getHdate() {
		return this.hdate;
	}

	public void setHdate(Date hdate) {
		this.hdate = hdate;
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

	public String getUntiprice() {
		return this.untiprice;
	}

	public void setUntiprice(String untiprice) {
		this.untiprice = untiprice;
	}

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	@Override
	public String toString() {
		return "House [hid=" + hid + ", identify=" + identify + ", areas=" + areas + ", village=" + village + ", title="
				+ title + ", htype=" + htype + ", htime=" + htime + ", floor=" + floor + ", description=" + description
				+ ", himage=" + himage + ", uid=" + uid + ", phone=" + phone + ", uname=" + uname + ", hstate=" + hstate
				+ ", stretch=" + stretch + ", address=" + address + ", layout=" + layout + ", area=" + area
				+ ", countprice=" + countprice + ", is_hot=" + is_hot + ", hdate=" + hdate + ", province=" + province
				+ ", city=" + city + ", untiprice=" + untiprice + ", cid=" + cid + "]";
	}
	
	

}