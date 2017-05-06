<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的收藏</title>
    
	<link href="./css/common.css" rel="stylesheet" type="text/css">
	<link href="./css/cart.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
  <!-- *********************顶部********************** -->	

  <%@ include file="top.jsp" %>
	
<!-- ********************中间内容********************* -->
<div class="container cart">
	<div class="span24">
			<div class="step step1"></div>
				<table>
					<tbody><tr>
						<th>U房快照</th>
						<th>标题</th>
						<th>价格</th>
						<th>简略信息</th>
						<th>经纪人</th>
						<th>操作</th>
					</tr>
						<tr>
							<td width="60">
								<input type="hidden" name="id" value="22">
								<img src="./house/house001.jsp">
							</td>
							<td>
								<a target="_blank">经开区 地铁口 花园社区 精装2室 明厨明卫 婚房出售,常青二路5号</a>
							</td>
							<td>
								62万
							</td>
							<td class="quantity" width="100">
								2室2厅1卫<br />
								88平<br />
								小区： 枫韵润园 - 经济技术开发区
							</td>
							<td width="140">
								<span class="subtotal">UU房屋-惠瀛 <br />电话：13259431310</span>
							</td>
							<td>
								<a href="javascript:;" class="delete">删除</a>
							</td>
						</tr>
				</tbody></table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					
				</div>
				<div class="bottom">
					
					<a href="${pageContext.request.contextPath}/user_loginPage.action" id="submit" class="submit">清空收藏夹</a>
				</div>
		</div>
	</div>

<!-- *********************底部********************** -->       
	<%@ include file="bottom.jsp" %>
  </body>
</html>
