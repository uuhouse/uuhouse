package com.house.user.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.house.hibernate.HibernateSessionFactory;
import com.house.user.vo.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.house.user.service.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	private static final long serialVersionUID = -680099124229323722L;
	
	HttpServletRequest request = ServletActionContext.getRequest();
	
	// User
	User user = new User();
	public void setUser(User user) {
		this.user = user;
	}
	
	public User getModel() {
		return user;
	}
	
	// UserService
	private UserService userService = new UserService();
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	/**************************************用户增删改部分***************************************/
	public String addUser() {
		userService.save(user);
		return "add";
	}
	public String deleteUser() {
		if("0".equals(request.getSession().getAttribute("power"))) {
			userService.delete((User)HibernateSessionFactory.getSession().get(User.class, user.getUid()));
			return "delete";
		}else {
			request.getSession().setAttribute("msg", "权限不够");
			return "error";
		}	
	}
	
	//去修改用户信息
	public String toUpdate() {
		if("1".equals(request.getSession().getAttribute("power").toString()) ||
				"0".equals(request.getSession().getAttribute("power").toString())) {
			int uid = (int) request.getSession().getAttribute("uid");
			user = userService.findByUid(uid);
			return "to_update";
		}else {
			request.getSession().setAttribute("msg", "权限不够");
			return "error";
		}
	}

	// 修改用户信息:
	public String update() {
		int uid = (int) request.getSession().getAttribute("uid");
		user = userService.findByUid(uid);
		
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		String name = request.getParameter("name").trim();
		String idCard = request.getParameter("idCard").trim();
		String mail = request.getParameter("mail").trim();
		String nicname = request.getParameter("nicname").trim();
		String gender = request.getParameter("gender").trim();
		String birthday = request.getParameter("birthday").trim();
		String phone = request.getParameter("phone").trim();
		String qq = request.getParameter("qq").trim();
		String address = request.getParameter("address").trim();
		
		user.setUsername(username);
		user.setPassword(password);
		user.setName(name);
		user.setIdCard(idCard);
		user.setMail(mail);
		user.setNicname(nicname);
		user.setGender(gender);
		user.setBirthday(birthday);
		user.setPhone(user.getPhone());
		user.setQq(user.getQq());
		user.setAddress(address);
		
		userService.update(user);
		return "update";
	}
	/*******************************************用户注册部分****************************************/
	
	// 接收验证码:
	private String checkcode;
	
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
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
	public String findByUsername() throws IOException {
		// 调用Service进行查询:
		User existUser = userService.findByUsername(user.getUsername());
		// 获得response对象,向页面输出:
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		// 判断
		if (existUser != null) {
			// 查询到该用户:用户名已经存在
			response.getWriter().println("<font color='red'>用户名已经存在，请重新命名！</font>");
		} else {
			// 没查询到该用户:用户名不能为空
			if("".equals(user.getUsername()))
			{
				response.getWriter().println("<font color='red'>用户名不能为空！</font>");
			}
			//用户名可以使用			
			else
			{
				response.getWriter().println("<font color='green'>用户名可以使用</font>");
			}
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
		else
		{
			String username = request.getParameter("username").trim();
			String password = request.getParameter("password").trim();
			String name = request.getParameter("name").trim();
			String idCard = request.getParameter("idCard").trim();
			String mail = request.getParameter("mail").trim();
			String gender = request.getParameter("gender").trim();
			String birthday = request.getParameter("birthday").trim();
			String address = request.getParameter("address").trim();
			
			user.setUsername(username);
			user.setPassword(password);
			user.setName(name);
			user.setIdCard(idCard);
			user.setMail(mail);
			user.setGender(gender);
			user.setBirthday(birthday);
			user.setAddress(address);
			userService.save(user);
			this.addActionMessage("注册成功!请去邮箱激活!");
			return "msg";
		}
	}
	
	/**
	 * 用户激活的方法
	 */
	public String active() {
		// 根据激活码查询用户:
		User exituser = userService.findByCode(user.getCode());
		// 判断
		if (exituser == null) {
			// 激活码错误的
			this.addActionMessage("激活失败:激活码错误!");
		} else {
			// 激活成功
			// 修改用户的状态
			exituser.setState(1);
			exituser.setCode(null);
			userService.update(exituser);
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
		String username = request.getParameter("username1").trim();
		String password = request.getParameter("password1").trim();
		
		String password2 = userService.getPassword(username);
		int state = userService.getState(username);
		int power = userService.getPower(username);
		int uid = userService.getUid(username);
		User existUser = userService.findByUsername(username);
		if (password.equals(password2) && state == 1) {
			existUser.setLoginTime(new Date());
			userService.update(existUser);
			request.getSession().setAttribute("existUser", existUser);
			request.getSession().setAttribute("power", power);
			request.getSession().setAttribute("uid", uid);
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
	
/*****************************************个人中心部分***************************************/
	public String userCenter() {
		int uid = (int) request.getSession().getAttribute("uid");
		user = userService.findByUid(uid);
		return "usercenter";
	}
/*****************************************发布信息部分***************************************/
	public String publish() {
		return "to_publish";	
	}
}
