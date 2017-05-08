package com.house.uuhouse.service;

import java.util.List;

import com.house.uuhouse.vo.House;
import com.house.utils.PageBean;
import com.house.uuhouse.dao.HouseDAO;


public class HouseService {
		// 注入HouseDAO
		private HouseDAO HouseDAO;

		public void setHouseDAO(HouseDAO HouseDAO) {
			this.HouseDAO = HouseDAO;
		}

		// 首页上热门房屋查询
		public List<House> findHot() {
			return HouseDAO.findHot();
		}

		// 首页上最新房屋的查询
		public List<House> findNew() {
			return HouseDAO.findNew();
		}

		// 根据房屋ID查询商品
		public House findByHid(Integer hid) {
			return HouseDAO.findByHid(hid);
		}

		// 根据一级分类的cid带有分页查询房屋
		public PageBean<House> findByPageCid(Integer cid, int page) {
			PageBean<House> pageBean = new PageBean<House>();
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			int limit = 8;
			pageBean.setLimit(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = HouseDAO.findCountCid(cid);
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			List<House> list = HouseDAO.findByPageCid(cid, begin, limit);
			pageBean.setList(list);
			return pageBean;
		}

		// 后台查询所有房屋带分页
		public PageBean<House> findByPage(Integer page) {
			PageBean<House> pageBean = new PageBean<House>();
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			int limit = 10;
			pageBean.setLimit(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = HouseDAO.findCount();
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			List<House> list = HouseDAO.findByPage(begin, limit);
			pageBean.setList(list);
			return pageBean;
		}

		// 业务层保存房屋方法:
		public void save(House house) {
			HouseDAO.save(house);
		}

		// 业务层删除房屋
		public void delete(House house) {
			HouseDAO.delete(house);
		}

		// 业务层修改房屋的方法
		public void update(House house) {
			HouseDAO.update(house);
		}

	

}
