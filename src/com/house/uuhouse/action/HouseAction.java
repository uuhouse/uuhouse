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

public class HouseAction extends ActionSupport implements ModelDriven<House>{
	private static final long serialVersionUID = 1L;
		// 用于接收数据的模型驱动.
		private House house = new House();
		// 注入房屋的Service
		private HouseService houseService;
		// 接收分类cid
		private Integer cid;
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();

		// 接收当前页数:
		private int page;
		
		public void setPage(int page) {
			this.page = page;
		}

		public void setCid(Integer cid) {
			this.cid = cid;
		}

		public Integer getCid() {
			return cid;
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

		// 根据分类的id查询房屋:
		public String findByCid() {
			// List<Category> cList = categoryService.findAll();
			PageBean<House> pageBean = houseService.findByPageCid(cid, page);// 根据一级分类查询房屋,带分页查询
			// 将PageBean存入到值栈中:
			ActionContext.getContext().getValueStack().set("pageBean", pageBean);
			return "findByCid";
		}
		
		/*****************************************发布信息部分***************************************/
		public String publish() {
			String identity = (String)request.getParameter("identity").trim();
			String village = (String)request.getParameter("village").trim();
			String streets = (String)request.getParameter("streets").trim();
			String htype = (String)request.getParameter("htype").trim();
			String htime = (String)request.getParameter("htime").trim();
			String xiaoqu = (String)request.getParameter("xiaoqu").trim();
			String dizhi = (String)request.getParameter("dizhi").trim();
			String huxingshi = (String)request.getParameter("huxingshi1").trim();
			String huxingting = (String)request.getParameter("huxingting").trim();
			String huxingwei = (String)request.getParameter("huxingwei").trim();
			String minPrice = (String)request.getParameter("MinPrice1").trim();
			String  = (String)request.getParameter("").trim();
			String  = (String)request.getParameter("").trim();
			
			return "publishfinish";
		}
		
}
