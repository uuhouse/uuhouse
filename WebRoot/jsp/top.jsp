<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="${pageContext.request.contextPath}/">
				<img src="${pageContext.request.contextPath}/image/logo.jpg" alt="优优二手房"/>
			</a>
		</div>
	</div>
	<div class="span9">
		<div class="headerAd" >
			<marquee scrollAmount=6 scrollDelay=3 direction=right  style="color:#fff; height:50px; font-size: 32px;padding-top:12px">优优二手房</marquee>
		</div>	
	</div>
	<div class="span10 last">
			<div class="topNav clearfix">
				<ul>
				<s:if test='#session.existUser == null'>
							<li id="headerLogin" class="headerLogin" style="display: list-item;">
								<a href="${pageContext.request.contextPath}/user_loginPage.action">登录</a>|</li>
							<li id="headerRegister" class="headerRegister"
								style="display: list-item;"><a href="${pageContext.request.contextPath}/user_registPage.action">注册</a>|
							</li>
							</s:if>
							<s:else>
							<li id="headerLogin" class="headerLogin" style="display: list-item;">
								<s:property value="#session.existUser.name"/>
								|</li>
							<li id="headerRegister" class="headerRegister"
								style="display: list-item;"><a href="${pageContext.request.contextPath}/user_quit.action">退出</a>|
							</li>
							</s:else>
							<li>
								<a href="${pageContext.request.contextPath}/user_center.action">个人中心</a>
								|
							</li>
							<li>
								<a >买房指南</a>
								|
							</li>
							<li>
								<a>关于我们</a>
								
							</li>
				</ul>
			</div>
			<div class="cart">
				<a href="${pageContext.request.contextPath}/collection_myCollections.action">我的收藏</a>
			</div>
				<div class="phone">
					客服热线:
					<strong>96008/5327776</strong>
				</div>
		</div>
		<div class="span24">
			<ul class="mainNav">
						<li>
							<a href="${pageContext.request.contextPath}/uu_index.action">首页</a>
							|
						</li>
						
						<li>
							<a >房源</a>
							|
						</li>
						<li>
							<a >小区</a>
							|
						</li>
						<li>
							<a>地图找房</a>
							|
						</li>
						<li>
							<a >主题找房</a>
							|
						</li>
						<li>
							<a>闪电卖房</a>
							|
						</li>
						<li>
							<a>优秀经纪人</a>
							|
						</li>
			</ul>
		</div>
	</div>		
</div>