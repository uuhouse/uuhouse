package com.house.uuhouse.service;

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
			int limit = 10;
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
			return houseDAO.findByArea(village,streets);
		}

		public House findByEndHid() {
			// TODO Auto-generated method stub
			return houseDAO.findByEndHid();
		}

	

}
