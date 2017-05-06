package com.house.adminuser.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.house.adminuser.dao.AdminUserDAO;
import com.house.adminuser.service.AdminUserService;
import com.house.adminuser.vo.AdminUser;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminUserAction extends ActionSupport implements
		ModelDriven<AdminUser> {
	// 模型驱动使用的对象
	private AdminUser adminUser = new AdminUser();
	AdminUserDAO dao = new AdminUserDAO();
	HttpServletRequest request = ServletActionContext.getRequest();

	public AdminUser getModel() {
		return adminUser;
	}

	// 注入AdminUserService
	private AdminUserService adminUserService = new AdminUserService();

	public void setAdminUserService(AdminUserService adminUserService) {
		this.adminUserService = adminUserService;
	}

	// 后台登录的执行的方法
	public String login() {
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		
		String password2 = dao.getPassword(username);
		if (password.equals(password2)) {
			request.getSession().setAttribute("username", username);
			return "login_success";
		} else {
			request.setAttribute("msg", "用户名或密码错误!");
			return "login_error";
		}
	}
}
