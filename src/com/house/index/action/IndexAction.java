package com.house.index.action;

import java.util.List;

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
	// 注入房屋的Service
	private HouseService houseService = new HouseService();
	
	public void setHouseService(HouseService houseService) {
		this.houseService = houseService;
	}

	/**
	 * 执行的访问首页的方法:
	 */
	public String execute(){
		// 查询所有房源:
		List<House> cList = houseService.findByHid();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("cList", cList);
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
