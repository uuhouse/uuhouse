package com.house.adminuser.service;

import java.util.List;

import com.house.adminuser.dao.AdminUserDAO;
import com.house.adminuser.vo.AdminUser;
import com.house.utils.PageBean;
/**
 * 用户名模块业务层代码
 *
 */
public class AdminUserService {
	private AdminUserDAO adminUserDAO = new AdminUserDAO();

	public void setAdminadminadminUserDAO(AdminUserDAO adminUserDAO) {
		this.adminUserDAO = adminUserDAO;
	}
	
	// 删除用户的方法
	public void delete(AdminUser existAdminUser) {
		adminUserDAO.delete(existAdminUser);
	}
	
	// 修改用户的状态的方法
	public void update(AdminUser existAdminUser) {
		adminUserDAO.update(existAdminUser);
	}

	
	// 业务层完成用户注册代码:
	public void save(AdminUser existAdminUser) {
		adminUserDAO.save(existAdminUser);
	}

	// 按用户ID查询用户
	public AdminUser findByAid(int aid) {
		return adminUserDAO.findByAid(aid);
	}
	// 按用户名查询用户
	public AdminUser findByAdminUsername(String username){
		return adminUserDAO.findByAdminUsername(username);
	}
	
	// 业务层用户查询所有
	public PageBean<AdminUser> findByPage(Integer page) {
		PageBean<AdminUser> pageBean = new PageBean<AdminUser>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		// 显示5个
		int limit = 5;
		pageBean.setLimit(limit);
		// 设置总记录数:
		int totalCount = 0;
		totalCount = adminUserDAO.findCount();
		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		if(totalCount % limit == 0){
			totalPage = totalCount / limit;
		}else{
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 设置每页显示数据集合:
		int begin = (page - 1)*limit;
		List<AdminUser> list = adminUserDAO.findByPage(begin,limit);  
		pageBean.setList(list);
		return pageBean;
	}

	public String getAPassword(String username) {
		// TODO Auto-generated method stub
		return adminUserDAO.getAPassword(username);
	}

	public int getAid(String username) {
		// TODO Auto-generated method stub
		return adminUserDAO.getAid(username);
	}

}
