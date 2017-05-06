package com.house.adminuser.service;

import org.springframework.transaction.annotation.Transactional;

import com.house.adminuser.dao.AdminUserDAO;
import com.house.adminuser.vo.AdminUser;

@Transactional
public class AdminUserService {
	// 注入Dao
	private AdminUserDAO adminUserDao;

	public void setAdminUserDao(AdminUserDAO adminUserDao) {
		this.adminUserDao = adminUserDao;
	}

	
	public AdminUser login(AdminUser adminUser) {
		return adminUserDao.login(adminUser);
	}
	
}
