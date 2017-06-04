package com.house.adminuser.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.house.adminuser.dao.AdminUserDAO;
import com.house.adminuser.service.AdminUserService;
import com.house.adminuser.vo.AdminUser;
import com.house.utils.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class AdminUserAction extends ActionSupport implements
		ModelDriven<AdminUser> {
	HttpServletRequest request = ServletActionContext.getRequest();
	// 模型驱动使用的对象
	private AdminUser adminUser = new AdminUser();
	//AdminUserService
	private AdminUserService adminUserService = new AdminUserService();

	public AdminUser getModel() {
		return adminUser;
	}

	public void setAdminUserService(AdminUserService adminUserService) {
		this.adminUserService = adminUserService;
	}

	// 后台登录的执行的方法
	public String login() {
		String ausername = request.getParameter("ausername").trim();
		String apassword = request.getParameter("apassword").trim();
		
		String apassword2 = adminUserService.getAPassword(ausername);
		//int aid = adminUserService.getAid(ausername);
		AdminUser existUser = adminUserService.findByAdminUsername(ausername);
		if (apassword.equals(apassword2)) {
			request.getSession().setAttribute("existUser", existUser);
			//request.getSession().setAttribute("aid", aid);
			return "login_success";
		} else {
			request.setAttribute("msg", "密码错误，登录失败！");
			return "login_error";
		}
	}
		
		
		// 接受page参数
		private Integer page;

		public void setPage(Integer page) {
			this.page = page;
		}

		
		// 后台查询所有用户的方法带分页:
		public String findAll(){
			PageBean<AdminUser> pageBean = adminUserService.findByPage(page);
			ActionContext.getContext().getValueStack().set("pageBean", pageBean);
			System.out.println("test"+pageBean.getList().size());
			return "findAll";
		}
		
		// 后台用户的删除
		public String delete(){
			AdminUser existadminUser = adminUserService.findByAid(adminUser.getAid());
			adminUserService.delete(existadminUser);
			return "delete_success";
		}
		
		// 后台用户的编辑
		public String edit(){
			adminUser = adminUserService.findByAid(adminUser.getAid());
//			request.getSession().
			return "edit_success";
		}
		
		// 后台用户的修改:
		public String update(){
			adminUserService.update(adminUser);
			return "update_success";
		}
		public String save(){
			// 调用Service完成保存
			adminUserService.save(adminUser);
			return "save_success";
		}
}
