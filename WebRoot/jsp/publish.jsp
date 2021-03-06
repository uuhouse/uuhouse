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
    <title>发布出售信息</title>
	<link href="./css/post.css" rel="stylesheet" type="text/css"/>
	<link href="./css/common.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="./js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="./js/area.js"></script>
	<script type="text/javascript" src="./js/publish.js"></script>
</head>

<body>

 <!-- *********************顶部********************** -->
  <%@ include file="top.jsp" %>
  
<!-- ********************中间内容********************* -->

<div class="container publish">
	<div id="passportLayer">
	</div>
	<form id="postForm" name="publish_form" action="${pageContext.request.contextPath}/house_publish.action" method="post" onsubmit="return checkForm();" novalidate="novalidate">
		<input type="text" id="identity" name="identity" style="display:none"/>
		<input type="text" id="village" name="village" style="display:none"/>
		<input type="text" id="streets" name="streets" style="display:none"/>
		<input type="text" id="htype" name="htype" style="display:none"/>
		<input type="text" id="htime" name="htime" style="display:none"/>
		<input type="text" id="decorate" name="decorate" style="display:none"/>
		<input type="text" id="cx1" name="cx1" style="display:none"/>
		<input type="text" id="cq1" name="cq1" style="display:none"/>
	<div class="progcontrl clearfix">
		<div class="active" id="propbartwo">
			<span>1.填写出售信息</span>
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
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<div class="tip" style="display: none;"></div>
							<div class="radio_wrap clearfix success" name="isBiz">
								<div tabindex="2" id="geren" class="radio focus" >
									<i></i>
									<label>个人转让</label>
								</div>
		
								<div tabindex="2" id="shangjia" class="radio" >
									<i></i>
									<label>商家转让</label>
								</div>
							</div>
						</div>
						<div class="rows_title">
							<span>
								<span class="rows_title_star">*</span>
							选择身份</span>
						</div>
					</div>
			
					<div class="rows_wrap clearfix" style="display: none;">
						<div class="rows_content">
							<div class="tip"></div>
		
							<div class="input_text_wrap" name="Title3" style="position: relative;">
								<input type="inputText" tabindex="3" id="Title3" style="width: 395px;">
							</div>
						</div>
		
						<div class="rows_title"></div>
					</div>

					<div class="rows_wrap clearfix" style="display: none;">
						<div class="rows_content">
							<div class="tip"></div>
		
							<div class="textarea_wrap" name="Content1" style="position: relative;">
								<textarea tabindex="12" id="Content1" style="width: 525px;"></textarea>
							</div>
						</div>
		
						
					</div>

					<div class="rows_wrap clearfix custom_name">
						<div class="rows_content">
							<div class="tip validate_error" id="xiaoqu_error" style="left: 0px;display:none"><i></i>请填写小区名称</div>
		
							<div class="input_text_wrap"  style="position: relative;">
								<input type="autoComplete" name="xiaoqu" tabindex="13" id="xiaoqu" autocomplete="off" disableautocomplete="true" maxlength="30" placeholder="只填写小区名，例嘉铭桐城" style="width: 395px;">
			
								<div class="tooltip" style=" margin:1px 0 0 -10px;overflow-y:auto;overflow-x:hidden;border:1px solid #ccc;position:absolute;z-index:487;display:none">
									<ul class="autoCompleteul" style="margin:0; padding:0; display:block; width: 100%; ; border:0;background:#fff">
									</ul>
									<iframe frameborder="0" width="100%" height="100%" src="about:blank" style="z-index: -1; position: absolute; top: 0px; left: 0px; border: 0px none;">
									</iframe>
								</div>
							</div>
						</div>
			
						<div class="rows_title">
							<span>
								<span class="rows_title_star">
								*</span>
							小区名称</span>
						</div>
					</div>
		
					<div class="rows_wrap clearfix custom_name" style="display: none;">
						<div class="rows_content">
							<div class="tip">
							</div>
							
							<div class="textshow clearfix" name="positionshow">
								<span type="textShow" id="positionshow">
									<span class="ico"></span>
			
									<span class="textcon textclass"></span>
								</span>
							</div>
						</div>
						
						<div class="rows_title">
							<span>
							位置</span>
						</div>
					</div>

					<div class="rows_wrap clearfix custom_name" >
						<div class="rows_content">
							<div class="tip">
							</div>
					
						<div class="selectordef" name="localArea" id="localArea1" style="z-index: 1485; width: 150px;" tabindex="15" nameid="483">
							<div class="title">
								<span class="seled" id="select_area">请选择</span>
								<div class="arrow">
							</div>
						</div>
					
						<div class="optiondef" id="diqu11" style="width: 147px;">
							<ul style="width:147px;">
								<li val="">请选择</li>
								<li val="487" class="">雁塔</li>
								<li val="486" class="">碑林</li>
								<li val="484" class="">莲湖</li>
								<li val="485" class="">新城</li>
								<li val="489" class="">未央</li>
								<li val="3194" class="">长安</li>
								<li val="488" class="">灞桥</li>
								<li val="3116" class="">临潼</li>
								<li val="5927" class="">杨陵</li>
							</ul>
						</div>
					</div>
			
				<div class="selectordef" name="localDiduan" id="local_diduan" style="z-index: 1484; width: 150px;" tabindex="16">
					<div class="title">
						<span class="seled" id="select_diduan">请选择地段</span>
					<div class="arrow">
					</div>
				</div>
			
				<div class="optiondef" id="diduanxuanxiang" style="width: 147px;display:none">
					<ul>
						<li>请选择地段</li>
					</ul>
				</div>
			</div>
		
			<div class="input_text_wrap"  style="position: relative;">
				<input type="inputText" tabindex="17" id="dizhi" name="dizhi" placeholder="请输入具体的地址" style="width: 277px;">
			</div>
		</div>
	
		<div class="rows_title">
			<span>位置
			</span>
		</div>
	</div>

					<div class="rows_wrap clearfix custom_name">
						<div class="rows_content">
							<div class="tip validate_error" id="shi_error" style="left: 0px; display: none;"><i></i>请填写室</div>
							
							<div class="tip validate_error" id="mianji_error" style="left: 0px; display: none;"><i></i>请输入面积</div>
							
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
							
							<div class="input_text_wrap clearfix" style="position: relative;">
								<span>
								共</span>
								<input type="inputText" tabindex="21" id="area2" name="area2" placeholder="建筑面积" style="width: 95px;">
								<span>
								㎡</span>
							</div>
						</div>

						<div class="rows_title">
							<span>
							<span class="rows_title_star">
							*</span>
							房屋户型</span>
						</div>
					</div>
					
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<div class="tip validate_error" id = "zongjia_error" style="left: 0px;display:none"><i></i>请输入售价</div>
							
							<div class="input_text_wrap clearfix" style="position: relative;">
								<input type="inputText" tabindex="22" name="MinPrice1" id="MinPrice1" style="width: 95px;">
								<span>
								万</span>
							</div>
						</div>
						<div class="rows_title">
							<span>
							<span class="rows_title_star">
							*</span>
							总价</span>
						</div>
					</div>
					<div class="rows_wrap clearfix custom_name">
						<div class="rows_content">
						<div class="tip"></div>
					<div class="input_text_wrap" style="position: relative;">
						<input type="inputText" tabindex="23" name="Title1" id="Title1" maxlength="50" style="width: 395px;">
						
					</div>
					<div class="tip validate_error" id = "biaoti_error" style="left: 0px;display:none"><i></i>标题不能为空</div>
				</div>
				<div class="rows_title">
					<span>
						<span class="rows_title_star">
						*</span>
					标题</span>
					</div>
					
					</div>
					
				</div>
				
			</div>
	
			<div class="block_wrap">
				<div class="block_title" >
					<h2>
					房源选填信息</h2>
				</div>
		
				<div class="block_content" >
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<div class="tip"></div>
							<label><input type="radio" name="elevator" value="有电梯" autocomplete="off">有</label>
           					<label><input type="radio" name="elevator" value="无电梯" autocomplete="off" checked="checked">无</label>
						</div>
						<div class="rows_title">
							<span>电梯</span>
						</div>
					</div>
					
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<div class="tip"></div>
							<div class="selectordef" id="fangyuanleixing" name="ObjectType1" style="z-index: 1476; width: 150px;" tabindex="24" nameid="1083">
								<div class="title">
									<span class="seled" id="leibie">普通住宅</span>
									<div class="arrow"></div>
								</div>
								<div class="optiondef" id="leixing" style="width: 147px;display:none ">
									<ul style="width:147px;">
										<li val="">请选择类别</li>			
										<li val="3" class="">普通住宅</li>					
										<li val="4" class="">公寓</li>					
										<li val="5" class="">别墅</li>					
										<li val="2" class="">平房</li>					
										<li val="8" class="">新里洋房</li>					
										<li val="9" class="">老公房</li>				
										<li val="10" class="">四合院</li>				
										<li val="12" class="">排屋</li>					
										<li val="6" class="">其他</li>				
									</ul>
								</div>
							</div>
							<div class="selectordef" name="fittype" id="zhuangxiuleixing" style="z-index: 1475; width: 150px;" tabindex="25" nameid="1080">
								<div class="title">
									<span class="seled" id="qingkuang">简单装修</span>		
									<div class="arrow"></div>		
								</div>
								<div class="optiondef" id="zhuangxiu" style="width: 147px; display: none;">
									<ul style="width:147px;">
										<li val="">请选择装修情况</li>					
										<li val="1" class="">毛坯</li>					
										<li val="2" class="">简单装修</li>					
										<li val="3" class="">中等装修</li>					
										<li val="4" class="">精装修</li>					
										<li val="5" class="">豪华装修</li>					
										</ul>
								</div>
							</div>
							
							<div class="selectordef" id="chaoxiangxingkuang" name="Toward" style="z-index: 1474; width: 150px;" tabindex="26" nameid="1086">
								<div class="title">
									<span class="seled" id="cx">南</span>			
									<div class="arrow"></div>
								</div>						
								<div class="optiondef" id="chaoxiang" style="width: 147px;">
									<ul style="width:147px;">
										<li val="">请选择朝向</li>					
										<li val="1" class="">东</li>					
										<li val="2" class="">南</li>					
										<li val="3" class="">西</li>					
										<li val="4" class="">北</li>					
										<li val="6" class="">南北</li>					
										<li val="5" class="">东西</li>					
										<li val="7" class="">东南</li>					
										<li val="8" class="">西南</li>				
										<li val="9" class="">东北</li>					
										<li val="10" class="">西北</li>				
									</ul>
								</div>
							</div>
						</div>
						<div class="rows_title">
							<span>房屋情况</span>
						</div>
					</div>
					
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<div class="tip"></div>
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
							<div class="selectordef" id="chanquanleixing" name="chanquan1" style="z-index: 1472; width: 150px;" tabindex="28" nameid="5344">
								<div class="title">
									<span class="seled" id="cq">商品房</span>	
									<div class="arrow"></div>		
								</div>
								<div class="optiondef" id="xingzhi" style="width: 147px; display: none;">
									<ul style="width:147px;">
										<li val="">请选择产权</li>				
										<li val="1" class="">商品房</li>				
										<li val="5" class="">商住两用</li>				
										<li val="2" class="">经济适用房</li>				
										<li val="4" class="">使用权</li>			
										<li val="3" class="">公房</li>				
										<li val="6" class="">其他</li>				
									</ul>
								</div>
							</div>
							
							<div class="input_text_wrap clearfix" name="jianzhuniandai" style="position: relative;">
								<div class="tip validate_error" id="jianzhu_error" style="left: 0px; display: none;"><i></i></div>
								<input type="inputText" tabindex="29" id="jianzhuniandai" name="jianzhuniandai" placeholder="建筑年代" style="width: 120px;">
								<span>年</span>
							</div>
						</div>
						<div class="rows_title">
							<span>
							产权</span>
						</div>
					</div>
		
		
					<div class="rows_wrap clearfix custom_name">
						<div class="rows_content">
							<div class="tip">
							</div>
							
							<div class="input_text_wrap clearfix" style="position: relative;">
								<span>
								第</span>
								<input type="inputText" tabindex="30" id="Floor" name="Floor" maxlength="2" style="width: 95px;">
								<span>
								层</span>
							</div>
		
							<div class="input_text_wrap clearfix" style="position: relative;">
								<span>
								共</span>
								<input type="inputText" tabindex="31" id="zonglouceng" name="zonglouceng" maxlength="2" style="width: 95px;">
								<span>
								层</span>
							</div>
						</div>
		
						<div class="rows_title">
						<span>
						楼层</span>
						</div>
					</div>
		
					
				</div>
		
			<div class="block_wrap">
				<div class="block_title">
					<h2>房源个性描述</h2>
				</div>
		
				<div class="block_content" >
					<div class="rows_wrap clearfix">
						<div class="rows_content">
							<textarea type="text" id="miaoshu1" value="" name="miaoshu" style="width:515px;height:215px;position: absolute;margin:0 0 0 0">
							</textarea>
							</div>
						<div class="rows_title">
							<span>
								<span class="rows_title_star">*</span>详细描述
							</span>
						</div>
					</div>
				</div>
					
					<div class="block_content">
						<div class="rows_content">
							<div class="tip">
							</div>
							
							
							<div class="imgbar_wrap" id="flashflashContent">
							
								<ul class="clearfix img_list">
									<li class="first_icon">
									<i>
									</i>
									</li>
								</ul>
								
								<div class="upload_wrap" style="margin:190px 0 0 0px">
									<div class="rows_title" style="margin:0 0 0 70px">
										<span>
										<span class="rows_title_star">
											*</span>上传图片</span>
									</div>
									
									
									 <div class="upload">
						     			<div class="localUpload_wrap">
						     				<label for="thumbnail" class="col-md-3 control-label"></label>
											<input type="file" class="form-control" id="thumbnail" name="thumbnail" style="width:500px">
											<!-- 
											<input type="button"  id="upload" value="上传">
											 -->
											<script src="${pageContext.request.contextPath}/js/imageupload.js"></script>
										</div>
									</div>
  
									<div class="info">只能上传房屋图片，不能包含有文字、数字、网址、名片等，最多上传<span>5</span>张</div>
								</div>
							</div>
						</div>
						
					</div>
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
									<input type="inputText" tabindex="35" name="Phone" id="Phone" value='<s:property value="model.phone"/>' readonly="readonly" maxlength="11" style="width: 240px;">
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
<script>
    function getObjectURL(file) {
        var url = null ;
        if (window.createObjectURL!=undefined) { // basic
            url = window.createObjectURL(file) ;
        } else if (window.URL!=undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file) ;
        } else if (window.webkitURL!=undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file) ;
        }
        return url;
    }



    $('#thumbnail').change(function(){
        var eImg = $('<img />');
        eImg.attr('src', getObjectURL($(this)[0].files[0])).css({"width":"100px", "height":"80px","margin-right":"3px","margin-top":"10px"}); // 或 this.files[0] this->input
        $(this).after(eImg);});

    $('#upload').click(
        function () {
            $.ajax({
                url: url,
                method: post,
                data: $('#thumbnail')[0].files[0],
                success: function(){

                }
            })
    })
</script> 
</html>

