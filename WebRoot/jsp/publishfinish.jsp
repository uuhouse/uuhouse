<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags"  prefix="s"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>完成发布页</title>
    
	<link href="./css/finish.css" rel="stylesheet" type="text/css"/>
	<link href="./css/common.css" rel="stylesheet" type="text/css"/>

  </head>
  
  <body>
 <!-- *********************顶部********************** -->	

  <%@ include file="top.jsp" %>
	
<!-- ********************中间内容********************* -->
<div class="container finish">
<!--图标-->
<div class="progcontrl clearfix">
	<div class="propbar" id="propbartwo">
		<span>1.填写信息</span>
	</div>
	<div class="active" id="propbarthree">
		<span>2.完成发布</span>
	</div>
</div>

<div class="post-content">
	<div class="c_left">
				<div class="l_warning">  <i class="post_newbg warning"></i>请勿发布虚假欺诈信息，不然将影响您的个人征信纪录哦～</div>
						<div class="l_top"> <i class="post_newbg state "></i>发布成功!</div>
		<div class="l_font">该信息已发布在  <a href="${pageContext.request.contextPath}/index.action">优优二手房</a>，可以前去首页查看信息状态。</div>
		
				<div class="main_zd_iframe">
		</div>
							<div class="l_btns clearfix">
								<a href="${pageContext.request.contextPath}/house_findByHid?hid=<s:property value="model.hid" />" target="_blank" class="p_active_btn">
									<span>查看信息</span>
								</a>
								<a href="" class="p_btn">
									<span>管理信息</span>
								</a>
								<div class="w_shadow"></div>
				<div id="fe_window_1928_form" class="fe_window">
					<a href="${pageContext.request.contextPath}/user_publish.action" class="p_btn"><span>再发一条</span></a>
				</div>
	</div>


<!-- *********************底部********************** -->       
	<%@ include file="bottom.jsp" %>
  </body>
</html>
