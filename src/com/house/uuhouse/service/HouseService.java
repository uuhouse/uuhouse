package com.house.uuhouse.service;

import java.util.ArrayList;
import java.util.List;

import com.house.uuhouse.vo.House;
import com.house.utils.PageBean;
import com.house.uuhouse.dao.HouseDAO;

public class HouseService {
	// 注入HouseDAO
	private HouseDAO houseDAO = new HouseDAO();

	public void setHouseDAO(HouseDAO houseDAO) {
		this.houseDAO = houseDAO;
	}

	// 所有房屋查询
	public List<House> findByHid() {
		return houseDAO.findByHid();
	}

	// 热门房屋查询
	public List<House> findHot() {
		return houseDAO.findHot();
	}

	// 最新房屋的查询
	public List<House> findNew() {
		return houseDAO.findNew();
	}

	// 根据房屋ID查询
	public House findByHid(Integer hid) {
		return houseDAO.findByHid(hid);
	}

	// 查询所有房屋带分页
	public PageBean<House> findByPage(Integer page) {
		PageBean<House> pageBean = new PageBean<House>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		int limit = 8;
		pageBean.setLimit(limit);
		// 设置总记录数:
		int totalCount = 0;
		totalCount = houseDAO.findCount();
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page - 1) * limit;
		List<House> list = houseDAO.findByPage(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}

	// 业务层保存房屋方法:
	public void save(House house) {
		houseDAO.save(house);
	}

	// 业务层删除房屋
	public void delete(House house) {
		houseDAO.delete(house);
	}

	// 业务层修改房屋的方法
	public void update(House house) {
		houseDAO.update(house);
	}

	public List<House> findByArea(String village, String streets) {
		return houseDAO.findByArea(village, streets);
	}

	public House findByEndHid() {
		// TODO Auto-generated method stub
		return houseDAO.findByEndHid();
	}

	public List<House> findByProperty(Integer countprice, Integer price1, Integer price2, String shitingwei, String shi,
			String ting, String wei, Integer area, String village) {
		List<House> result = new ArrayList<House>();
		String layout = "";

		List<String> villages2 = new ArrayList<String>();
		if (village == null || village.length() == 0 || "".equals(village)) {
		} else {
			String[] villages = village.split(",");
			for (String string : villages) {
				string = string.trim();
				villages2.add(string);
			}
		}

		Integer area1 = 0;
		Integer area2 = 0;
		if (area != -1) {
			if (area == 50) {
				area1 = 0;
				area2 = 50;
			} else if (area == 70) {
				area1 = 50;
				area2 = 70;
			} else if (area == 90) {
				area1 = 70;
				area2 = 90;
			} else if (area == 100) {
				area1 = 90;
				area2 = 10000;
			}
		} else {
			area1 = area2 = -1;
		}

		if (countprice == -1) {
			price1 = price2 = -1;
		} else if (countprice == 30) {
			price1 = 0;
			price2 = 30;
		} else if (countprice == 50) {
			price1 = 30;
			price2 = 50;
		} else if (countprice == 80) {
			price1 = 50;
			price2 = 80;
		} else if (countprice == 100) {
			price1 = 80;
			price2 = 10000;
		}
		if ("-2".equals(shitingwei)) {
			layout = shi + "室" + ting + "厅" + wei + "卫";
		} else {
			layout = "";
		}
		result = houseDAO.findByProperty(price1, price2, area1, area2, villages2, layout);
		return result;
	}

	public List<House> findBuy() {
		// TODO Auto-generated method stub
		return houseDAO.findBuy();
	}

	public List<House> findHouse(String search_keyword) {
		// TODO Auto-generated method stub
		return houseDAO.findHouse(search_keyword);
	}

}
