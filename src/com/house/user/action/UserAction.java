package com.house.user.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;

import com.house.hibernate.HibernateSessionFactory;
import com.house.user.dao.UserDAO;
import com.house.user.vo.User;
import com.opensymphony.xwork2.ActionSupport;

import com.house.user.service.UserService;

public class UserAction extends ActionSupport{
	private static final long serialVersionUID = -680099124229323722L;
	User user = new User();
	UserDAO dao = new UserDAO();
	HttpServletRequest request = ServletActionContext.getRequest();
	
	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
	
	public UserDAO getDao() {
		return dao;
	}


	public void setDao(UserDAO dao) {
		this.dao = dao;
	}
	
	/**************************************用户增删改部分***************************************/
	public String addUser() {
		dao.save(user);
		return "add";
	}
	public String deleteUser() {
		if("0".equals(request.getSession().getAttribute("power"))) {
			dao.delete((User)HibernateSessionFactory.getSession().get(User.class, user.getUid()));
			return "delete";
		}else {
			request.getSession().setAttribute("msg", "权限不够");
			return "error";
		}	
	}
	public String toupdateUser() {
		if("0".equals(request.getSession().getAttribute("power"))) {
			user = (User)HibernateSessionFactory.getSession().get(User.class, user.getUid());
			return "to_update";
		}else {
			request.getSession().setAttribute("msg", "权限不够");
			return "error";
		}
	}
	public String updateUser() {
		User user1 = (User)HibernateSessionFactory.getSession().get(User.class, user.getUid());
		user1.setUsername(user.getUsername());
		user1.setPassword(user.getPassword());
		user1.setMail(user.getMail());
		user1.setName(user.getName());
		user1.setNicname(user.getNicname());
		user1.setGender(user.getGender());
		user1.setPhoto(user.getPhoto());
		user1.setPhone(user.getPhone());
		user1.setQq(user.getQq());
		user1.setAddress(user.getAddress());
		user1.setBirthday(user.getBirthday());
		user1.setCode(user.getCode());
		user1.setState(user.getState());
		user1.setPower(user.getPower());
		return "update";
	}

	/*******************************************用户注册部分****************************************/
	
	// 接收验证码:
	private String checkcode;
	
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
	
	// 注入UserService
	private UserService userService = new UserService();

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	

	/**
	 * 跳转到注册页面的执行方法
	 */
	public String registPage() {
		return "to_regist";
	}
	
	/**
	 * AJAX进行异步校验用户名的执行方法
	 * 
	 * @throws IOException
	 */
	public String findByName() throws IOException {
		// 调用Service进行查询:
		User existUser = userService.findByUsername(user.getUsername());
		// 获得response对象,项页面输出:
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		// 判断
		if (existUser != null) {
			// 查询到该用户:用户名已经存在
			response.getWriter().println("<font color='red'>用户名已经存在</font>");
		} else {
			// 没查询到该用户:用户名可以使用
			response.getWriter().println("<font color='green'>用户名可以使用</font>");
		}
		return NONE;
	}
	
	/**
	 * 用户注册的方法:
	 */
	public String regist() {
		// 判断验证码程序:
		// 从session中获得验证码的随机值:
		String checkcode1 = (String) ServletActionContext.getRequest()
				.getSession().getAttribute("checkcode");
		if(!checkcode.equalsIgnoreCase(checkcode1)){
			this.addActionError("验证码输入错误!");
			return "checkcodeFail";
		}
		userService.save(user);
		this.addActionMessage("注册成功!请去邮箱激活!");
		return "msg";
	}
	
	/**
	 * 用户激活的方法
	 */
	public String active() {
		// 根据激活码查询用户:
		User user1 = userService.findByCode(user.getCode());
		// 判断
		if (user1 == null) {
			// 激活码错误的
			this.addActionMessage("激活失败:激活码错误!");
		} else {
			// 激活成功
			// 修改用户的状态
			user1.setState(1);
			user1.setCode(null);
			userService.update(user1);
			this.addActionMessage("激活成功:请去登录!");
		}
		return "msg";
	}

	/*****************************************用户登录部分***************************************/
	/**
	 * 跳转到登录页面
	 */
	public String loginPage() {
		return "to_login";
	}
	
	/**
	 * 登录检查
	 */
	public String checkLogin() {
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		
		String password2 = dao.getPassword(username);
		int state = dao.getState(username);
		if (password.equals(password2) && state == 1) {
			request.getSession().setAttribute("power", dao.getPower(username));
			request.getSession().setAttribute("name", dao.getName(username));
			request.getSession().setAttribute("mail", dao.getMail(username));
			return "login_success";
		} else {
			request.setAttribute("msg", "密码错误，登录失败！");
			return "login_error";
		}
	}

	/**
	 * 用户退出的方法
	 */
	public String quit() {
		request.getSession().invalidate();
		return "quit";
	}
	
	/**
	 * 登录首页方法
	 */
	public String index() {
		return "index";
	}
	
/*****************************************个人中心部分***************************************/
	public String userCenter() {
		return "usercenter";
	}
/*****************************************发布信息部分***************************************/
	public String publish() {
		return "publish";	
	}
	public String publishfinish() {
		return "publishfinish";	
	}
}
