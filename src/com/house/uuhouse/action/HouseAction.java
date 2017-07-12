package com.house.uuhouse.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.house.user.service.UserService;
import com.house.user.vo.User;
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
		
		UserService userService = new UserService(); 
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
			for (House house : hList) {
				String image = house.getHimage();
				String arr[] = image.split(",");
				house.setHimage(arr[0]);
			}
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
		
		public String findHouse() {
			String search_keyword = "";
			if(request.getParameter("search_keyword").trim()==null||request.getParameter("search_keyword").trim()==""){
				return "index";
			}
			else{
				search_keyword = request.getParameter("search_keyword");
				System.out.println(search_keyword);
				List<House> result = houseService.findHouse(search_keyword);
				System.out.println(result.toString());
				if(result.size() > 0 ||  result != null){
					ActionContext.getContext().getValueStack().set("hList", result);
					return "index";
				}
				else{
					request.setAttribute("msg", "没有符合您要求的房屋信息！");
					return "error";
				}
			}
			
		}
		

		/*****************************************发布信息部分***************************************/
		public String publish() {
				int uid = (int) request.getSession().getAttribute("uid");
				User user = userService.findByUid(uid);
				
				String identity = request.getParameter("identity").trim();
				String village = request.getParameter("village").trim();
				String stretch = request.getParameter("streets").trim();
				String htype = request.getParameter("htype").trim();
				String propertyright = request.getParameter("htime").trim();
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
				
				String uname = request.getParameter("goblianxiren").trim();
				String decorate = request.getParameter("decorate").trim();
				String cx = request.getParameter("cx1").trim();
				String htime = request.getParameter("jianzhuniandai").trim();
				String elevator = request.getParameter("elevator").trim();
				String cq = request.getParameter("cq1").trim();
				
				String image = request.getParameter("thumbnail").trim();
				System.out.println(image);
				
				house.setKind("出售");
				house.setElevator(elevator);
				house.setHtime(htime+"年");
				house.setDecorate(decorate);
				house.setCx(cx);
				house.setIdentify(identity);
				house.setVillage(village);
				house.setStretch(stretch);
				house.setPropertyRight(propertyright + "-" + cq);;
				house.setHtype(htype);
				house.setAreas(areas);
				house.setAddress(address);
				house.setArea(Integer.parseInt(area));
				house.setLayout(shi + "室" + ting + "厅" + wei + "卫");
				house.setCountprice(Integer.parseInt(countprice));
				house.setTitle(title);
				house.setFloor(floor + "层/共" + maxfloor + "层" );
				house.setDescription(description);
				house.setPhone(user.getPhone());
				house.setUname(uname);
				house.setHdate(new Date());
				house.setHstate("未出售");
				house.setIsHot(0);
				house.setHimage("house/" + image);
				house.setProvince("陕西");
				house.setCity("西安");
				house.setUntiprice(((Integer.parseInt(countprice)*10000)/ Integer.parseInt(area)));
				
				houseService.save(house);
				return "publishfinish";
		}
		
		//发布求购信息
		public String publishbuy() {
			int uid = (int) request.getSession().getAttribute("uid");
			User user = userService.findByUid(uid);

			String title = request.getParameter("title1").trim();
			String address = request.getParameter("diduan").trim();
			String shi = request.getParameter("huxingshi1").trim();
			String ting = request.getParameter("huxingting").trim();
			String wei = request.getParameter("huxingwei").trim();
			String price1 = request.getParameter("MinPrice1").trim();
			String price2 = request.getParameter("MinPrice2").trim();
			String area1 = request.getParameter("area1").trim();
			String area2 = request.getParameter("area2").trim();
			String description = request.getParameter("Content1").trim();
			String uname = request.getParameter("goblianxiren").trim();
			String htype = request.getParameter("htype").trim();
			String propertyright = request.getParameter("propertyright").trim();
			
			house.setKind("求购");
			house.setHimage("house/housebuy.png");
			house.setPropertyRight(propertyright);
			house.setHtype(htype);
			house.setVillage(address);
			house.setIdentify(area1 + "m²-" + area2 + "m²"); //用来存放面积区域
			house.setLayout(shi + "室" + ting + "厅" + wei + "卫");
			house.setFeature(price1 + "万元-" + price2 + "万元"); //用来存放价格区域
			house.setTitle(title);
			house.setPhone(user.getPhone());
			house.setUname(uname);
			house.setHdate(new Date());
			house.setIsHot(0);
			house.setDescription(description);
			houseService.save(house);
			return "publishfinish";
		}
		
		
		public String findByPage(){
			PageBean<House> pageBean = houseService.findByPage(page);
			// 将PageBean数据存入到值栈中.
			ActionContext.getContext().getValueStack().set("hList", pageBean.getList());
			ActionContext.getContext().getValueStack().set("pageBean", pageBean);
			// 页面跳转
			return "findAll";
		}
		
		
		public String findByProperty(){
			Integer price1=0;
			Integer price2=0;
			if(request.getParameter("price1").trim()==null||request.getParameter("price1").trim()==""
					||request.getParameter("price2").trim()==null||request.getParameter("price2").trim()==""){
				price1=price2=0;
			}
			else{
				price1 = Integer.valueOf(request.getParameter("price1").trim());
				price2 = Integer.valueOf(request.getParameter("price2").trim());
			}
			String shitingwei = request.getParameter("shitingwei");
			String shi = request.getParameter("shi");
			String ting = request.getParameter("ting");
			String wei = request.getParameter("wei");
			Integer countprice= house.getCountprice();
			String village = house.getVillage();
			Integer area = house.getArea();
			List<House> result = houseService.findByProperty(countprice,price1,price2,shitingwei,shi,ting,wei,area,village);
			if(result.size() > 0 ||  result != null){
				ActionContext.getContext().getValueStack().set("hList", result);
				return "index";
			}
			else{
				request.setAttribute("msg", "没有符合您要求的房屋信息！");
				return "error";
			}
			
			
			
		}
		
}
