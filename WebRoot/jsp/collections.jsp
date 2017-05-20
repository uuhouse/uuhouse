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
    
    <title>我的收藏</title>
    
	<link href="./css/common.css" rel="stylesheet" type="text/css">
	<link href="./css/cart.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
  <!-- *********************顶部********************** -->	

  <%@ include file="top.jsp" %>
	
<!-- ********************中间内容********************* -->
<div class="container cart">
	<s:if test="#session.collections.collectionItems.size() != 0">
		<div class="span24">
			<div class="step step1">
				收藏夹信息
			</div>
				<table>
					<tbody><tr>
						<th>U房快照</th>
						<th>标题</th>
						<th>价格</th>
						<th>简略信息</th>
						<th>特色</th>
						<th>操作</th>
					</tr>
					<s:iterator var="collectionItems" value="#session.collections.collectionItems">
						<tr>
							<td width="8%">
								<img src="${pageContext.request.contextPath}/<s:property value="#collectionItems.house.himage"/>">
							</td>
							<td width="40%">
								<a target="_blank"><s:property value="#collectionItems.house.title"/></a>
							</td>
							<td >
								<s:property value="#collectionItems.house.countprice"/>
							</td>
							<td class="quantity" width="25%">
								<s:property value="#collectionItems.house.layout"/><br />
								<s:property value="#collectionItems.house.area"/><br />
								小区：<s:property value="#collectionItems.house.areas"/> - <s:property value="#collectionItems.house.village"/>
							</td>
							<td width="10%">
								<span class="subtotal"><s:property value="#collectionItems.house.feature"/></span>
							</td>
							<td>
								<a href="${pageContext.request.contextPath}/collection_removeCollections.action?hid=<s:property value="#collectionItems.house.hid"/>" class="delete">删除</a>
							</td>
						</tr>
						</s:iterator>
					</tbody>
				</table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					
				</div>
				<div class="bottom">
					<a href="${pageContext.request.contextPath}/collection_clearCollections.action" id="clear" class="clear">清空收藏夹</a>
				</div>
		</div>
		</s:if>
		<s:else>
			<div class="span24">
				<div class="step step1">
					<span><h2>亲!您还没有收藏任何房屋信息!</h2></span>
				</div>
			</div>
		</s:else>	
	</div>

<!-- *********************底部********************** -->       
	<%@ include file="bottom.jsp" %>
  </body>
</html>
