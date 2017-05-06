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
    
    <title>个人中心</title>
    
	<link href="./css/common.css" rel="stylesheet" type="text/css"/>
	<link href="./css/member.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="./js/001.js"></script>
	<script type="text/javascript" src="./js/2.js"></script>
  </head>
  
  <body>
 <!-- *********************顶部********************** -->	

  <%@ include file="top.jsp" %>
	
<!-- ********************中间内容********************* -->
<div class="container member">

<div class="content clearfix">
<div class="headerSub clearfix">
    <img src="http://pages.anjukestatic.com/usersite/site/img/userCenter/photo.png" class="user-photo" alt="用户头像">
    <div class="user-info">
      <div class="info-sup clearfix">
        <span class="hello">
                    <span class="now-time">下午</span>好，<span class="name">亲</span>
        </span>
        <ul class="log-way">
                    <li>
            <i class="iconfont phoneIcon"></i>
            <div class="dialog">
              <div class="text">您已通过<span>132****1310</span>认证</div>
              <div class="corner"></div>
              <div class="border"></div>
              <div class="masker"></div>
            </div>
          </li>
                                                          </ul>
      </div>
      <div class="info-sub clearfix">
        <ul>
          <li class="user-account">
            账户名：<span>手机2931490077774</span>
          </li>
          <i class="split-icon"></i>
          <li class="user-type">
              <span>用户</span>
          </li>
          <i class="split-icon"></i>
          <li class="last-time">
            上次登录：<span class="day">2017-04-24 09:50:41</span>
          </li>
        </ul>
      </div>
    </div>
  </div>
		<!-- 侧边栏 -->
		
        <div class="right-content">
            <div class="right-cont">
                <ul class="tab-list clearfix">
  <li><a href="#" class="cur">个人资料</a></li>
</ul>

<!-- 个人资料 -->
<div class="profile">
  <div class="profile-title">
    <i class="iconfont"></i>
    <span>基本账号资料</span>
  </div>
  <ul class="profile-list">
    <li class="photo">
      <span class="key">头像</span>
            <img src="" alt="你的头像">
      <a href="/user/modifyPhoto" class="operate-btn">修改</a>
    </li>
    <li class="account">
      <span class="key">帐号</span>
      <span class="value">手机2931490077774</span>
    </li>
    <li class="name">
      <span class="key">昵称</span>
      <span class="value">暂无提供</span>
      <button class="operate-btn">修改</button>
    </li>
    <li class="email">
      <span class="key">邮箱</span>
      <span class="value">暂无提供</span>
      <a class="operate-btn" href="/user/modifyEmail">绑定</a>
    </li>
    <li class="phone">
      <span class="key">手机</span>
      <span class="value">13259431310</span>
      <a class="operate-btn" href="/user/modifyPhone">修改</a>
    </li>
    <li class="password">
      <span class="key">密码</span>
      <span class="value">暂无提供</span>
      <a class="operate-btn" href="/user/modifyPassword">修改</a>
    </li>
  </ul>
  <hr>
   <div class="profile-title">
    <i class="iconfont"></i>
    <span>扩充账号资料</span>
  </div>
  <ul class="profile-list">
    <li class="bound">
      <span class="key">微信</span>
      <span class="value"></span>
            <button class="operate-btn">绑定</button>
          </li>
  </ul>
</div>

<!-- 绑定提示框 -->
<div class="wrap-tip ">
  <div class="content-tip">
    <div class="center-tip">
        </div>
  </div>
</div>

            </div>
            <div class="recommend-house">
                <!-- 推荐 -->
                <div class="rh-area">
	<p class="rh-title">您可能感兴趣的房源</p>
	<ul class="rh-items">
					<li class="rh-item">
				<a href="https://shanghai.anjuke.com/prop/view/720224993" class="rh-item-content" target="_blank">
					<img src="https://pic1.ajkimg.com/display/hj/bf2009dfc71160d0a208b01d5270964c/240x180c.jpg?t=1" width="182" height="135">
					<span class="community-area"></span>
					<span class="community-text">华虹东方苑</span>
					<p class="item-title">别墅的享受，12年花园洋房，一楼带超大地下室，精心装修。</p>
					<p class="item-info"><span class="item-price">700万</span><span class="item-info-sub">3室3厅，85平米</span></p>
				</a>
			</li>
					<li class="rh-item">
				<a href="https://shanghai.anjuke.com/prop/view/720225040" class="rh-item-content" target="_blank">
					<img src="https://pic1.ajkimg.com/display/hj/dac3d804f8090035ba6eb3e769e42b45/240x180c.jpg?t=1" width="182" height="135">
					<span class="community-area"></span>
					<span class="community-text">华虹东方苑</span>
					<p class="item-title">精装修带花园！户型正气，实用率超大！12年新小区！</p>
					<p class="item-info"><span class="item-price">560万</span><span class="item-info-sub">2室3厅，90平米</span></p>
				</a>
			</li>
					<li class="rh-item">
				<a href="https://shanghai.anjuke.com/prop/view/720240076" class="rh-item-content" target="_blank">
					<img src="https://pic1.ajkimg.com/display/hj/6ef588569f8b1e50389d68732fa9d1cc/240x180c.jpg?t=1" width="182" height="135">
					<span class="community-area"></span>
					<span class="community-text">襄阳南路452弄小区</span>
					<p class="item-title">新出+襄阳南路公房+向阳小学+南北通透+可贷款+随时看房</p>
					<p class="item-info"><span class="item-price">558万</span><span class="item-info-sub">1室2厅，51平米</span></p>
				</a>
			</li>
					<li class="rh-item">
				<a href="https://shanghai.anjuke.com/prop/view/720240518" class="rh-item-content" target="_blank">
					<img src="https://pic1.ajkimg.com/display/hj/6de0f011e248775ef99d8b9b5f6ad081/240x180c.jpg?t=1" width="182" height="135">
					<span class="community-area"></span>
					<span class="community-text">德玛公寓</span>
					<p class="item-title">06年次新房+小区安静+临近地铁+有钥匙+南北通两房</p>
					<p class="item-info"><span class="item-price">998万</span><span class="item-info-sub">2室2厅，116平米</span></p>
				</a>
			</li>
			</ul>
</div>            </div>
        </div>

	</div>
</div>

<!-- *********************底部********************** -->       
	<%@ include file="bottom.jsp" %>
  </body>
</html>
