package com.house.uuhouse.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

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
		HouseService houseService = new HouseService();

		// 接收分类cid
		private Integer cid;
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();


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

			String identity = (String)request.getParameter("identity").trim();
			String village = (String)request.getParameter("village").trim();
			String stretch = (String)request.getParameter("streets").trim();
			String htype = (String)request.getParameter("htype").trim();
			String htime = (String)request.getParameter("htime").trim();
			String areas = (String)request.getParameter("xiaoqu").trim();
			String address = (String)request.getParameter("dizhi").trim();
			String area = (String)request.getParameter("area2").trim();
			String shi = (String)request.getParameter("huxingshi1").trim();
			String ting = (String)request.getParameter("huxingting").trim();
			String wei = (String)request.getParameter("huxingwei").trim();
			String countprice = (String)request.getParameter("MinPrice1").trim();
			String title = (String)request.getParameter("Title1").trim();
			String floor = (String)request.getParameter("Floor").trim();
			String maxfloor = (String)request.getParameter("zonglouceng").trim();
			String description = (String)request.getParameter("miaoshu").trim();
			String phone = (String)request.getParameter("Phone").trim();
			String uname = (String)request.getParameter("goblianxiren").trim();
			System.out.println(village + "      ");
			house.setIdentify(identity);
			house.setVillage(village);
			house.setStretch(stretch);
			house.setHtime(htime);
			house.setHtype(htype);
			house.setAreas(areas);
			house.setAddress(address);
			house.setArea(area);
			house.setLayout(shi + "室" + ting + "厅" + wei + "卫");
			house.setCountprice(countprice);
			house.setTitle(title);
			house.setFloor(floor);
			house.setDescription(description);
			house.setPhone(phone);
			house.setUname(uname);
			house.setUntiprice((Integer.parseInt(countprice) / Integer.parseInt(area)) + "");
			
			houseService.save(house);
			return "publishfinish";

		}
		
}
