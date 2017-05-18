package com.house.uuhouse.action;

import java.util.Date;
import java.util.List;

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
			// 查询热门房源:
			List<House> hList = houseService.findHot();
			// 保存到值栈中:
			ActionContext.getContext().getValueStack().set("hList", hList);
			// 查询最新房源:
			List<House> nList = houseService.findNew();
			// 保存到值栈中:
			ActionContext.getContext().getValueStack().set("nList", nList);
			
			// 调用Service的方法完成查询.
			house = houseService.findByHid(house.getHid());
			return "findByHid";
		}
		
		public String findByArea() {
			String village = request.getParameter("village").trim();
			String stretch = request.getParameter("streets").trim();
			// 获得response对象,向页面输出:
			/*HttpServletRequest requset = ServletActionContext.getRequest();
			requset.setCharacterEncoding();*/
			
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=UTF-8");
			System.out.println(village);
			System.out.println(stretch);
			List<House> aList = houseService.findByArea(village,stretch);	
			ActionContext.getContext().getValueStack().set("hList", aList);
			return "index";
		}
		

		/*****************************************发布信息部分***************************************/
		public String publish() {

			String identity = request.getParameter("identity").trim();
			String village = request.getParameter("village").trim();
			String stretch = request.getParameter("streets").trim();
			String htype = request.getParameter("htype").trim();
			String htime = request.getParameter("htime").trim();
			String areas = request.getParameter("xiaoqu").trim();
			String address = request.getParameter("dizhi").trim();
			String area = request.getParameter("area2").trim();
			String shi = request.getParameter("huxingshi1").trim();
			String ting = request.getParameter("huxingting").trim();
			String wei = request.getParameter("huxingwei").trim();
			String countprice = request.getParameter("MinPrice1").trim();
			String title = request.getParameter("Title1").trim();
			String floor = request.getParameter("Floor").trim();
			String maxfloor = request.getParameter("zonglouceng").trim();
			String description = request.getParameter("miaoshu").trim();
			String phone = request.getParameter("Phone").trim();
			String uname = request.getParameter("goblianxiren").trim();
			
			System.out.println(village);
			System.out.println(stretch);
			
			house.setIdentify(identity);
			house.setVillage(village);
			house.setStretch(stretch);
			house.setHtime(htime);
			house.setHtype(htype);
			house.setAreas(areas);
			house.setAddress(address);
			house.setArea("建面" + area + "m²|套内" + (Integer.parseInt(area))*0.95 + "m²");
			house.setLayout(shi + "室" + ting + "厅" + wei + "卫");
			house.setCountprice(countprice + "万元");
			house.setTitle(title);
			house.setFloor(floor + "层/共" + maxfloor + "层" );
			house.setDescription(description);
			house.setPhone(phone);
			house.setUname(uname);
			house.setHdate(new Date());
			house.setHstate("未出售");
			house.setIsHot(0);
			house.setHimage("house/house101.jpg");
			house.setProvince("陕西");
			house.setCity("西安");
			house.setUntiprice(((Integer.parseInt(countprice)*10000)/ Integer.parseInt(area)) + "元/m²");
			
			houseService.save(house);
			return "publishfinish";

		}
		
}
