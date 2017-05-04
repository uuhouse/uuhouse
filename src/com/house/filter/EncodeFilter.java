/*
 * 中文过滤器
 */
package com.house.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EncodeFilter implements Filter {
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request1, ServletResponse response1,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)request1;        
        HttpServletResponse response = (HttpServletResponse)response1;   
        request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
        HttpSession session =  request.getSession();        
        String url=request.getServletPath();    
        String contextPath=request.getContextPath(); 
        System.out.println("contextPath"+contextPath);
        System.out.println("url"+url);
        if(url.equals("")) 
        	url+="/";    
         if(!url.endsWith("Checklogin.action")){//若访问后台资源 过滤到login    
              if((Integer)(session.getAttribute("power"))==null){//转入管理 员登陆页面    
                   ((HttpServletResponse) response).sendRedirect(contextPath+"/jsp/login.jsp");                      
                   return;
              }
         }
         chain.doFilter(request,response);
	}
	
	public void init(FilterConfig arg0) throws ServletException {

	}

}
