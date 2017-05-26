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
    <link type="text/css" href="http://c.58cdn.com.cn/ui7/post/css/post_v20151022154316.css" rel="stylesheet">
    <title>发布求购信息</title>
	<link href="./css/post.css" rel="stylesheet" type="text/css"/>
	<link href="./css/common.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="./js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="./js/publishbuy.js"></script>
</head>

<body>

 <!-- *********************顶部********************** -->
  <%@ include file="top.jsp" %>
  
<!-- ********************中间内容********************* -->

<div class="container publish">
	<div id="passportLayer">
	</div>
	<form id="postForm" name="publish_form" action="${pageContext.request.contextPath}/house_publishbuy.action" method="post" onsubmit="return checkForm();" novalidate="novalidate">
		<input type="text" id="htype" name="htype" style="display:none"/>
		<input type="text" id="propertyright" name="propertyright" style="display:none"/>
	<div class="progcontrl clearfix">
		<div class="active" id="propbartwo">
			<span>1.填写信息</span>
		</div>
		
		<div class="propbar" id="propbarthree">
			<span>2.完成发布</span>
		</div>
	</div>
	
		<div class="minheightout w">
			<div id="formWrap">
				
				<div class="block_wrap">
	    			<div class="block_title">
			    		<h2>房源基本信息</h2>
					</div>

					<div class="block_content">
					
					<div class="rows_wrap clearfix custom_name">
						<div class="rows_content">
							<div class="tip"></div>
							<div class="input_text_wrap" style="position: relative;">
								<input type="inputText" tabindex="23" name="title1" id="title1" maxlength="50" style="width: 395px;">
							</div>
							<div class="tip validate_error" id = "biaoti_error" style="left: 0px;display:none"><i></i>标题不能为空</div>
						</div>
						<div class="rows_title">
							<span>
								<span class="rows_title_star">*</span>标题
							</span>
						</div>
					</div>
					
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<div class="tip">
							</div>
							
							<div class="selectordef" id="fangyuanleixing" name="ObjectType1" style="z-index: 1476; width: 150px;" tabindex="24" nameid="1083">
								<div class="title">
									<span class="seled" id="leibie">普通住宅</span>
									<div class="arrow">
									</div>
								</div>
								<div class="optiondef" id="leixing" style="width: 147px;display:none ">
									<ul style="width:147px;">
									<li val="">
									请选择类别</li>
									<li val="3" class="">
									普通住宅</li>
									<li val="4" class="">
									公寓</li>
									<li val="5" class="">
									别墅</li>
									<li val="2" class="">
									平房</li>
									<li val="8" class="">
									新里洋房</li>
									<li val="9" class="">
									老公房</li>
									<li val="10" class="">
									四合院</li>
									<li val="12" class="">
									排屋</li>
									<li val="6" class="">
									其他</li>
									</ul>
								</div>
							</div>
						</div>
		
						<div class="rows_title">
							<span>
								<span class="rows_title_star">*</span>期望类型
							</span>
						</div>
					</div>
					
					<div class="rows_wrap clearfix" style="">
						<div class="rows_content">
							<div class="tip validate_error" id="diduan_error" style="left: 0px; display: none;"><i></i>请填写地区</div>
							<div class="input_text_wrap" name="diduan" style="position: relative;">
								<input type="inputText" tabindex="4" name="diduan" id="diduan" style="width: 132px;">
							</div>
						</div>
						<div class="rows_title">
							<span>
								<span class="rows_title_star">*</span>求购地区
							</span>
						</div>
					</div>
					
					<div class="rows_wrap clearfix custom_name">
						<div class="rows_content">
							<div class="tip validate_error" id="shi_error" style="left: 0px; display: none;"><i></i>请填写室</div>
							<div class="input_text_wrap clearfix" name="huxingshi1" style="position: relative;">
								<input type="inputText" tabindex="18" id="huxingshi1" name="huxingshi1" maxlength="1" style="width: 95px;">
									<span>室</span>
							</div>
							
							<div class="input_text_wrap clearfix"  style="position: relative;">
								<input type="inputText" tabindex="19" name="huxingting" id="huxingting" maxlength="1" style="width: 95px;">
								<span>
								厅</span>
							</div>
							
							<div class="input_text_wrap clearfix" style="position: relative;">
								<input type="inputText" tabindex="20" name="huxingwei" id="huxingwei" maxlength="1" style="width: 95px;">
								<span>
								卫</span>
							</div>
						</div>

						<div class="rows_title">
							<span>
							<span class="rows_title_star">
							*</span>
							期望户型</span>
						</div>
					</div>
					
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<div class="tip validate_error" id="MinPrice1_error" style="left: 0px; display: none;"><i></i>请填写最少期望价格</div>
							<div class="tip validate_error" id="MinPrice2_error" style="left: 0px; display: none;"><i></i>请填写最多期望价格</div>
							<div class="input_text_wrap clearfix" name="MinPrice1" style="position: relative;">
								<input type="inputText" tabindex="22" name="MinPrice1" id="MinPrice1" style="width: 132px;">
								<span>
								万</span>
							</div>
							<div class="sep_wrap">-</div>
							<div class="input_text_wrap clearfix" name="MinPrice2" style="position: relative;">
								<input type="linkInput" tabindex="9" id="MinPrice2" name="MinPrice2" style="width: 132px;">
								<span>万</span>
							</div>
						</div>
							
						<div class="rows_title">
							<span>
								<span class="rows_title_star">*</span>期望价格
							</span>
						</div>
					</div>
	
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<div class="tip validate_error" id="area1_error" style="left: 0px; display: none;"><i></i>请填写最小期望面积</div>
							<div class="tip validate_error" id="area2_error" style="left: 0px; display: none;"><i></i>请填写最大期望面积</div>
							<div class="link_input_wrap">
							<div class="input_text_wrap clearfix" name="area1" style="position: relative;">
								<input type="linkInput" tabindex="10" id="area1" name="area1" style="width: 132px;">
								<span>㎡</span>
							</div>
							<div class="sep_wrap">-</div>
							<div class="input_text_wrap clearfix" name="area2" style="position: relative;">
								<input type="linkInput" tabindex="10" id="area2" name="area2" style="width: 132px;">
								<span>㎡</span>
							</div>
						</div>
						</div>
						<div class="rows_title">
							<span>
								<span class="rows_title_star">*</span>期望面积
							</span>
						</div>
					</div>
					
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<div class="tip">
							</div>
							<div class="selectordef" id="chanquannianxian" style="z-index: 1473; width: 150px;" tabindex="27" nameid="7535">
								<div class="title">
									<span class="seled" id="nianxian">70年产权</span>
									<div class="arrow">
									</div>
								</div>
			
								<div class="optiondef" id="changquan" style="width: 147px;display:none">
									<ul style="width:147px;">
										<li val="">请选择产权年限</li>
										<li val="70" class="">70年产权</li>
										<li val="50" class="">50年产权</li>
										<li val="40" class="">40年产权</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="rows_title">
							<span>
								<span class="rows_title_star">*</span>期望产权
							</span>
						</div>
					</div>
					
					<div class="rows_wrap clearfix" style="">
						<div class="rows_content">
							<div class="tip"></div>
							<div class="textarea_wrap" name="Content1" style="position: relative;">
								<textarea tabindex="12" id="Content1" name="Content1" style="width: 525px;"></textarea>
							</div>
						</div>
						<div class="rows_title">
							<span>
								<span class="rows_title_star">*</span>补充说明
							</span>
						</div>
					</div>
					
				<div class="block_wrap block_content">
					<div class="block_title">
						<h2>
						联系方式</h2>
					</div>
					<div class="block_content">
						<div class="rows_wrap clearfix custom_name">
							<div class="rows_content">
								<div class="tip validate_error" id="phone_error" style="left: 0px;display:none"><i></i>请填写完整手机号码</div>
								
								<div class="input_text_wrap" style="position: relative;">
									<input type="inputText" tabindex="35" name="Phone" id="Phone" value='<s:property value="model.phone"/>'  maxlength="11" style="width: 240px;">
								</div>
							</div>
							<div class="rows_title">
								<span>
								<span class="rows_title_star">
								*</span>
								联系电话</span>
							</div>
						</div>
		
						<div class="rows_wrap clearfix custom_name" style="display: none;">
							<div class="rows_content">
								<div class="tip">
								</div>
								
							</div>
							
						</div>
						
						<div class="rows_wrap clearfix custom_name">
							<div class="rows_content">
								<div class="tip validate_error" id="lianxiren_error" style="left: 0px;display:none"><i></i>请填写联系人</div>
								<div class="input_text_wrap" style="position: relative;">
									<input type="inputText" tabindex="37" name="goblianxiren" id="goblianxiren" value='<s:property value="model.name"/>' maxlength="6" style="width: 240px;">
								</div>
							</div>
		
							<div class="rows_title">
								<span>
								<span class="rows_title_star">
								*</span>
								联系人</span>
							</div>
						</div>
		
						<div class="rows_wrap clearfix custom_name">
							<div class="rows_content">
								<div class="tip">
								</div>
							</div>
						</div>
		
						<div class="submit_wrap" >
							<div class="mdzz" id="submit1">
								<div id = "zz1" class="zz" onclick="submit();">
								发布</div>
							</div>
						</div>
		
		
					</div>
		
					<div class="rows_title">
						<span>
						</span>
					</div>
				</div>
		
			</div>
		</div>
	
		
		
	</form>
	
</div>

<!-- *********************底部********************** -->
       
	<%@ include file="bottom.jsp" %>

</body>
</html>

