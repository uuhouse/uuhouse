package com.house.uuhouse.action;

import com.house.utils.PageBean;
import com.house.uuhouse.service.HouseService;
import com.house.uuhouse.vo.House;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class HouseAction extends ActionSupport implements
	ModelDriven<House>{
	private static final long serialVersionUID = 1L;
		// 用于接收数据的模型驱动.
		private House house = new House();
		// 注入房屋的Service
		private HouseService houseService;

		// 接收当前页数:
		private int page;
		
		public void setPage(int page) {
			this.page = page;
		}

		public void setHouseService(HouseService houseService) {
			this.houseService = houseService;
		}

		public House getModel() {
			return house;
		}

		// 根据房屋的ID进行查询:执行方法:
		public String findByHid() {
			// 调用Service的方法完成查询.
			house = houseService.findByHid(house.getHid());
			return "findByHid";
		}

		/*****************************************发布信息部分***************************************/
		public String publish() {
			return "publishfinish";	
		}
}
