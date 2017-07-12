package com.house.privilegeInterceptor;

import org.apache.struts2.ServletActionContext;

import com.house.adminuser.vo.AdminUser;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/**
 * 权限拦截器:
 *
 */
public class PrivilegeInterceptor extends MethodFilterInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		// 判断是否登录,如果登录,放行,没有登录,跳转到登录页面.
		String username = (String) ServletActionContext.getRequest()
				.getSession().getAttribute("username");
		if("".equals(username) && username.isEmpty()){
			// 跳转到登录页面:
			ActionSupport support = (ActionSupport) actionInvocation.getAction();
			support.addActionError("您还没有登录!没有权限访问!");
			return ActionSupport.LOGIN;
		}else{
		
			// 已经登录过
			return actionInvocation.invoke();
		}
	}

}
