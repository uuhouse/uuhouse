package com.house.index.action;

import java.util.List;

import com.house.category.service.CategoryService;
import com.house.category.vo.Category;
import com.house.uuhouse.service.HouseService;
import com.house.uuhouse.vo.House;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 首页访问的Action
 *
 */
public class IndexAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// 注入一级分类的Service:
	private CategoryService categoryService = new CategoryService();
	// 注入房屋的Service
	private HouseService houseService;
	
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public void setProductService(HouseService houseService) {
		this.houseService = houseService;
	}

	/**
	 * 执行的访问首页的方法:
	 */
	public String execute(){
		// 查询所有一级分类集合
		List<Category> cList = categoryService.findAll();
		// 将一级分类存入到Session的范围:
		ActionContext.getContext().getSession().put("cList", cList);
		// 查询热门房源:
		List<House> hList = houseService.findHot();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("hList", hList);
		// 查询最新房源:
		List<House> nList = houseService.findNew();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("nList", nList);
		return "index";
	}
	
	
}
