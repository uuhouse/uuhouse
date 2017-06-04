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
	public String index(){
		// 查询热门房源:
		List<House> hList = houseService.findHot();
		for (House house : hList) {
			String image = house.getHimage();
			String arr[] = image.split(",");
			house.setHimage(arr[0].trim());
		}
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("hList", hList);
		// 查询最新房源:
		List<House> nList = houseService.findNew();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("nList", nList);
		return "index";
	}
	
	public String indexbuy(){
		// 查询最新房源:
		List<House> bList = houseService.findBuy();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("hList", bList);
		return "indexbuy";
	}
	
	
}
