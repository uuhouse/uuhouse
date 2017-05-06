package com.house.category.vo;

/**
 * Category entity. @author MyEclipse Persistence Tools
 */

public class Category implements java.io.Serializable {

	// Fields

	private Integer cid;
	private String cname;

	// Constructors

	/** default constructor */
	public Category() {
	}

	/** full constructor */
	public Category(String cname) {
		this.cname = cname;
	}

	// Property accessors

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

}