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
    
    <title>发布房屋信息</title>
    
	<link href="./css/post.css" rel="stylesheet" type="text/css"/>
	<link href="./css/common.css" rel="stylesheet" type="text/css"/>
	
  </head>
  
  <body>
 <!-- *********************顶部********************** -->	

  <%@ include file="top.jsp" %>
	
<!-- ********************中间内容********************* -->
<div class="container publish">
	<script type="text/javascript">
		window.wbAsyncInit = function wbAsyncInit( CL ){
			CL.invoke('topbar', {
				aroundCity: false,
				weather: false,
				appQR: true, // homepage QR
				homepageLink: true,
				size: '' // default: 1190px, narrow: 1000px
			});
			CL.invoke('footer');
		 };
	</script>
	
<script type="text/javascript" src="http://j1.58cdn.com.cn/ui7/js/createElement-lte-IE8_v0.js"></script>
<link type="text/css" href="http://c.58cdn.com.cn/ui7/post/css/post_v20151022154316.css" rel="stylesheet">
<link type="text/css" href="http://c.58cdn.com.cn/ui7/post/css/topbar_v20150624171305.css" rel="stylesheet">	
	<div id="passportLayer"></div>
		<div class="progcontrl clearfix">
			<div class="active" id="propbartwo">
				<span>1.填写信息</span>
			</div>
			<div class="propbar" id="propbarthree">
				<span>2.完成发布</span>
			</div>
		</div>
	<div class="minheightout w">
	<div class="c"></div>
	<div id="formWrap">
		<ul class="imgbox-wrap">
			<li class="imgbox">
				
				<div class="toolbar">
					<a href="javascript:;" class="prev-pos"></a>
					<a href="javascript:;" class="next-pos"></a>
					<a href="javascript:;" class="delete"></a>
				</div>
			</li>
		</ul>
		<form action="${pageContext.request.contextPath}/uesr_publishfinish.action" name="postForm" id="postForm">
			
		<div class="block_wrap">
	    	<div class="block_title">
	    		<h2>房源基本信息</h2>
			</div>
			<div class="block_content">
				<div class="rows_wrap clearfix">
						</div>
			</div>
			<div class="rows_wrap clearfix">
				<div class="rows_content">
					<div class="tip" style="display: none;"></div>
					<div class="radio_wrap clearfix success" name="isBiz">
						<div tabindex="2" class="radio focus" data-value="0">
							<i></i>
							<label>个人转让</label>
						</div>
						<div tabindex="2" class="radio" data-value="1">
							<i></i>
							<label>商家转让</label>
						</div>
					</div>
				</div>
				<div class="rows_title">
					<span><span class="rows_title_star">*</span>选择身份</span>
				</div>
			</div>
			<div class="rows_wrap clearfix" style="display: none;">
				<div class="rows_content">
					<div class="tip"></div>
					<div class="input_text_wrap" name="Title3" style="position: relative;">
						<input type="inputText" tabindex="3" id="Title3" style="width: 395px;">
					</div>
				</div>
				<div class="rows_title">
					<span><span class="rows_title_star">*</span>标题</span>
				</div>
			</div>
			<div class="rows_wrap clearfix" style="display: none;">
				<div class="rows_content">
					<div class="tip"></div>
					<div class="input_text_wrap" name="diduan" style="position: relative;">
						<input type="inputText" tabindex="4" id="diduan" style="width: 132px;">
					</div>
					<div class="sep_wrap">或</div>
					<div class="input_text_wrap" name="diduan2" style="position: relative;">
						<input type="inputText" tabindex="6" id="diduan2" style="width: 132px;">
					</div>
				</div>
				<div class="rows_title">
					<span><span class="rows_title_star">*</span>求购地区</span>
				</div>
			</div>
			<div class="rows_wrap clearfix" style="display: none;">
				<div class="rows_content">
					<div class="tip"></div>
					<div class="selectordef" name="ObjectType2" style="z-index: 1493; width: 150px;" tabindex="7" nameid="1083">
						<div class="title">
							<span class="seled">普通住宅</span>
							<div class="arrow"></div>
						</div>
						<div class="optiondef" style="width: 147px; display: none;">
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
					<div class="selectordef" name="huxingshi2" style="z-index: 1492; width: 150px;" tabindex="8" nameid="1574">
						<div class="title">
							<span class="seled">请选择</span>
							<div class="arrow"></div>
							</div>
							<div class="optiondef" style="width: 147px;">
								<ul style="width:147px;">
									<li val="">请选择户型-室</li>
									<li val="1" class="">一室</li>
									<li val="2" class="">二室</li>
									<li val="3" class="">三室</li>
									<li val="4" class="">四室</li>
									<li val="5" class="">四室以上</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="rows_title">
						<span>
							<span class="rows_title_star">*</span>期望户型
						</span>
					</div>
				</div>
				<div class="rows_wrap clearfix" style="display: none;">
					<div class="rows_content">
						<div class="tip"></div>
						<div class="link_input_wrap">
							<div class="input_text_wrap clearfix" name="MinPrice2" style="position: relative;">
								<input type="linkInput" tabindex="9" id="MinPrice2" style="width: 132px;">
								<span>万</span>
							</div>
							<div class="sep_wrap">-</div>
							<div class="input_text_wrap clearfix" name="MinPrice2" style="position: relative;">
								<input type="linkInput" tabindex="9" id="MinPrice2" style="width: 132px;">
								<span>万</span>
							</div>
						</div>
					</div>
					<div class="rows_title">
						<span><span class="rows_title_star">*</span>期望价格</span>
					</div>
				</div>
				<div class="rows_wrap clearfix" style="display: none;">
					<div class="rows_content">
						<div class="tip"></div>
						<div class="link_input_wrap">
							<div class="input_text_wrap clearfix" name="area1" style="position: relative;">
								<input type="linkInput" tabindex="10" id="area1" style="width: 132px;">
								<span>㎡</span></div><div class="sep_wrap">-
							</div>
							<div class="input_text_wrap clearfix" name="area1" style="position: relative;">
								<input type="linkInput" tabindex="10" id="area1" style="width: 132px;">
								<span>㎡</span>
							</div>
						</div>
					</div>
					<div class="rows_title">
						<span><span class="rows_title_star">*</span>期望面积</span>
					</div>
				</div>
				<div class="rows_wrap clearfix" style="display: none;">
					<div class="rows_content">
						<div class="tip"></div>
						<div class="selectordef" name="chanquan2" style="z-index: 1489; width: 150px;" tabindex="11" nameid="5344">
							<div class="title"><span class="seled">商品房</span><div class="arrow"></div>
						</div>
						<div class="optiondef" style="width: 147px; display: none;">
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
				</div>
				<div class="rows_title">
					<span><span class="rows_title_star">*</span>期望产权</span>
				</div>
			</div>
			<div class="rows_wrap clearfix" style="display: none;">
				<div class="rows_content">
					<div class="tip"></div>
					<div class="textarea_wrap" name="Content1" style="position: relative;">
						<textarea tabindex="12" id="Content1" style="width: 525px;"></textarea>
					</div>
				</div>
				<div class="rows_title">
					<span><span class="rows_title_star">*</span>补充说明</span>
				</div>
			</div>
			<div class="rows_wrap clearfix custom_name">
				<div class="rows_content">
					<div class="tip"></div>
				<div class="input_text_wrap" name="xiaoqu" style="position: relative;">
					<input type="autoComplete" tabindex="13" id="xiaoqu" autocomplete="off" disableautocomplete="true" maxlength="30" placeholder="只填写小区名，例嘉铭桐城" style="width: 395px;">
					<div class="tooltip" style=" margin:1px 0 0 -10px;overflow-y:auto;overflow-x:hidden;border:1px solid #ccc;position:absolute;z-index:487;display:none"><ul class="autoCompleteul" style="margin:0; padding:0; display:block; width: 100%; ; border:0;background:#fff"></ul><iframe frameborder="0" width="100%" height="100%" src="about:blank" style="z-index: -1; position: absolute; top: 0px; left: 0px; border: 0px none;"></iframe></div></div></div><div class="rows_title"><span><span class="rows_title_star">*</span>小区名称</span></div></div><div class="rows_wrap clearfix custom_name" style="display: none;"><div class="rows_content"><div class="tip"></div><div class="textshow clearfix" name="positionshow">
						<span type="textShow" id="positionshow">
							<span class="ico"></span>
							<span class="textcon textclass"></span>
						</span>
					</div>
				</div><div class="rows_title"><span>位置</span></div></div>
				<div class="rows_wrap clearfix custom_name" style="display: none;">
					<div class="rows_content"><div class="tip"></div><div class="selectordef" name="localArea" style="z-index: 1485; width: 150px;" tabindex="15" nameid="483"><div class="title"><span class="seled">请选择</span><div class="arrow"></div></div><div class="optiondef" style="width: 147px;"><ul style="width:147px;"><li val="">请选择</li><li val="487" class="">雁塔</li><li val="486" class="">碑林</li><li val="484" class="">莲湖</li><li val="485" class="">新城</li><li val="489" class="">未央</li><li val="3194" class="">长安</li><li val="488" class="">灞桥</li><li val="3116" class="">临潼</li><li val="490" class="">阎良</li><li val="5926" class="">高新区</li><li val="12324" class="">沣渭新区</li><li val="12325" class="">曲江新区</li><li val="5927" class="">杨凌</li><li val="1939" class="">西安周边</li></ul></div></div><div class="selectordef" name="localDiduan" style="z-index: 1484; width: 150px;" tabindex="16"><div class="title"><span class="seled">请选择地段</span><div class="arrow"></div></div><div class="optiondef" style="width: 147px;"></div></div><div class="input_text_wrap" name="dizhi" style="position: relative;"><input type="inputText" tabindex="17" id="dizhi" placeholder="请输入具体的地址" style="width: 277px;"></div></div><div class="rows_title"><span>位置</span></div></div><div class="rows_wrap clearfix custom_name"><div class="rows_content"><div class="tip"></div><div class="input_text_wrap clearfix" name="huxingshi1" style="position: relative;"><input type="inputText" tabindex="18" id="huxingshi1" maxlength="1" style="width: 95px;"><span>室</span></div><div class="input_text_wrap clearfix" name="huxingting" style="position: relative;"><input type="inputText" tabindex="19" id="huxingting" maxlength="1" style="width: 95px;"><span>厅</span></div><div class="input_text_wrap clearfix" name="huxingwei" style="position: relative;"><input type="inputText" tabindex="20" id="huxingwei" maxlength="1" style="width: 95px;"><span>卫</span></div><div class="input_text_wrap clearfix" name="area2" style="position: relative;"><span>共</span><input type="inputText" tabindex="21" id="area2" placeholder="建筑面积" style="width: 95px;"><span>㎡</span></div></div><div class="rows_title"><span><span class="rows_title_star">*</span>房屋户型</span></div></div><div class="rows_wrap clearfix"><div class="rows_content"><div class="tip"></div><div class="input_text_wrap clearfix" name="MinPrice1" style="position: relative;"><input type="inputText" tabindex="22" id="MinPrice1" style="width: 95px;"><span>万</span></div></div><div class="rows_title"><span><span class="rows_title_star">*</span>总价</span></div></div><div class="rows_wrap clearfix custom_name"><div class="rows_content"><div class="tip"></div><div class="input_text_wrap" name="Title1" style="position: relative;"><input type="inputText" tabindex="23" id="Title1" maxlength="50" style="width: 395px;"></div></div><div class="rows_title"><span><span class="rows_title_star">*</span>标题</span></div></div></div></div><div class="block_wrap"><div class="block_title" style="display: none;"><h2>房源选填信息</h2></div><div class="block_content" style="display: none;"><div class="rows_wrap clearfix"><div class="rows_content"><div class="tip"></div><div class="selectordef" name="ObjectType1" style="z-index: 1476; width: 150px;" tabindex="24" nameid="1083"><div class="title"><span class="seled">普通住宅</span><div class="arrow"></div></div><div class="optiondef" style="width: 147px; display: none;"><ul style="width:147px;"><li val="">请选择类别</li><li val="3" class="">普通住宅</li><li val="4" class="">公寓</li><li val="5" class="">别墅</li><li val="2" class="">平房</li><li val="8" class="">新里洋房</li><li val="9" class="">老公房</li><li val="10" class="">四合院</li><li val="12" class="">排屋</li><li val="6" class="">其他</li></ul></div></div><div class="selectordef" name="fittype" style="z-index: 1475; width: 150px;" tabindex="25" nameid="1080"><div class="title"><span class="seled">简单装修</span><div class="arrow"></div></div><div class="optiondef" style="width: 147px; display: none;"><ul style="width:147px;"><li val="">请选择装修情况</li><li val="1" class="">毛坯</li><li val="2" class="">简单装修</li><li val="3" class="">中等装修</li><li val="4" class="">精装修</li><li val="5" class="">豪华装修</li></ul></div></div><div class="selectordef" name="Toward" style="z-index: 1474; width: 150px;" tabindex="26" nameid="1086"><div class="title"><span class="seled">请选择</span><div class="arrow"></div></div><div class="optiondef" style="width: 147px;"><ul style="width:147px;"><li val="">请选择朝向</li><li val="1" class="">东</li><li val="2" class="">南</li><li val="3" class="">西</li><li val="4" class="">北</li><li val="6" class="">南北</li><li val="5" class="">东西</li><li val="7" class="">东南</li><li val="8" class="">西南</li><li val="9" class="">东北</li><li val="10" class="">西北</li></ul></div></div></div><div class="rows_title"><span>类型</span></div></div><div class="rows_wrap clearfix"><div class="rows_content"><div class="tip"></div><div class="selectordef" name="chanquannianxian" style="z-index: 1473; width: 150px;" tabindex="27" nameid="7535"><div class="title"><span class="seled">请选择</span><div class="arrow"></div></div><div class="optiondef" style="width: 147px;"><ul style="width:147px;"><li val="">请选择产权年限</li><li val="70" class="">70年产权</li><li val="50" class="">50年产权</li><li val="40" class="">40年产权</li></ul></div></div><div class="selectordef" name="chanquan1" style="z-index: 1472; width: 150px;" tabindex="28" nameid="5344"><div class="title"><span class="seled">商品房</span><div class="arrow"></div></div><div class="optiondef" style="width: 147px; display: none;"><ul style="width:147px;"><li val="">请选择产权</li><li val="1" class="">商品房</li><li val="5" class="">商住两用</li><li val="2" class="">经济适用房</li><li val="4" class="">使用权</li><li val="3" class="">公房</li><li val="6" class="">其他</li></ul></div></div><div class="input_text_wrap clearfix" name="jianzhuniandai" style="position: relative;"><input type="inputText" tabindex="29" id="jianzhuniandai" placeholder="建筑年代" style="width: 120px;"><span>年</span></div></div><div class="rows_title"><span>产权</span></div></div><div class="rows_wrap clearfix custom_name"><div class="rows_content"><div class="tip"></div><div class="input_text_wrap clearfix" name="Floor" style="position: relative;"><span>第</span><input type="inputText" tabindex="30" id="Floor" maxlength="2" style="width: 95px;"><span>层</span></div><div class="input_text_wrap clearfix" name="zonglouceng" style="position: relative;"><span>共</span><input type="inputText" tabindex="31" id="zonglouceng" maxlength="2" style="width: 95px;"><span>层</span></div></div><div class="rows_title"><span>楼层</span></div></div><div class="rows_wrap clearfix"><div class="rows_content"><div class="tip"></div><div class="tag_wrap clearfix"><div class="tag"><input type="text" maxlength="6"><a style="display:none;" href="javascript:void(0);"><span></span><em>x</em></a></div><div class="tag"><input type="text" maxlength="6"><a style="display:none;" href="javascript:void(0);"><span></span><em>x</em></a></div><div class="tag"><input type="text" maxlength="6"><a style="display:none;" href="javascript:void(0);"><span></span><em>x</em></a></div><div class="tag"><input type="text" maxlength="6"><a style="display:none;" href="javascript:void(0);"><span></span><em>x</em></a></div></div></div><div class="rows_title"><span>房源特色</span></div></div></div><div class="clearfix block_toggle_wrap"><div class="block_toggle_btn toggle_show"><span class="icon"></span><div class="toggle_text"><span>更多选填信息</span><p>丰富内容可使成交加速一倍</p></div></div></div></div><div class="block_wrap"><div class="block_title">
					
					<h2>房源个性描述</h2>
				</div>
				<div class="block_content">

<div class="rows_wrap clearfix custom_name"><div class="rows_content"><div class="tip"></div><div class="imgbar_wrap" id="flashflashContent"><ul class="clearfix img_list"><li class="first_icon"><i></i></li></ul><div class="upload_wrap">	<div class="upload">     <div class="localUpload_wrap">		    <div class="localTitle">上传电脑中图片</div>		    <div class="localUpload">			    <div id="imgUpload"><div class="html5"><input type="file" multiple="multiple"></div></div>			    <div id="maxlength_cover">24</div>		    </div>		</div>	
	</div> <div class="info">只能上传房屋图片，不能包含有文字、数字、网址、名片等，最多上传<span>24</span>张，每张最大<span>10M</span></div></div></div></div><div class="rows_title"><span>上传图片</span></div></div></div></div><div class="block_wrap block_content"><div class="block_title"><h2>联系方式</h2></div><div class="block_content"><div class="rows_wrap clearfix custom_name"><div class="rows_content"><div class="tip"></div><div class="input_text_wrap" name="Phone" style="position: relative;"><input type="inputText" tabindex="35" id="Phone" maxlength="11" style="width: 240px;"></div></div><div class="rows_title"><span><span class="rows_title_star">*</span>联系电话</span></div></div><div class="rows_wrap clearfix custom_name" style="display: none;"><div class="rows_content"><div class="tip"></div><div class="input_text_wrap" name="yzm" style="position: relative;"><input type="captchaInput" tabindex="36" id="yzm" style="width: 248px;"></div><a class="getYzm">发送验证码</a><div class="vYzmTip"><span>没有收到短信，试试<a class="vioceYzm">语音验证码</a>吧!</span></div></div><div class="rows_title"><span><span class="rows_title_star">*</span>验证码</span></div></div><div class="rows_wrap clearfix custom_name"><div class="rows_content"><div class="tip"></div><div class="input_text_wrap" name="goblianxiren" style="position: relative;"><input type="inputText" tabindex="37" id="goblianxiren" maxlength="6" style="width: 240px;"></div></div><div class="rows_title"><span><span class="rows_title_star">*</span>联系人</span></div></div><div class="rows_wrap clearfix custom_name"><div class="rows_content"><div class="tip"></div><div class="qq_input_wrap" name="qqlist" id="qqlink"><div class="moselect" tabindex="38"><span class="mos-text"><em class="qq-thumb"><img src="http://img.58cdn.com.cn/ui7/post/pc/imgs/qqinput_figure24.png"></em>点击此处添加QQ联系人</span><span class="mos-text-del" style="display:none"><em class="qq-thumb"><img src=""></em></span><span class="qq-arrow"><span class="top"></span><span class="bot"></span></span></div><div class="moselect-con"><a href="javascript:void(0);" class="addcontact">+ 新增QQ联系人</a></div></div></div>
<div class="rows_title" >
<span>QQ</span>
</div></div>



<div class="submit_wrap" ><div class="mdzz" ><span >发布</span></div></div></div><div class="rows_title"><span></span></div></div></div></div>
</form>
	</div>

	<script type="text/javascript" charset="utf-8" src="http://j1.58cdn.com.cn/ui7/post/pc/libs/editor_config_v20150908101548.js"></script>
	<script type="text/javascript" charset="utf-8" src="http://j1.58cdn.com.cn/ui7/post/pc/libs/editor_all_v20150611214822.js"></script>
	    	<script type="text/javascript" src="http://j1.58cdn.com.cn/ui7/post/pc/libs/require.min-tracker_v20160413142810.js"></script>
    	<!-- pc改版前端js -->
		<script src="http://j1.58cdn.com.cn/js/login/floatLayerLogin_v20170221150059.js"></script>
			<script type="text/javascript" src="http://j1.58cdn.com.cn/ui7/post/pc/data/ershoufang_v20170228190029.js"></script>
					<script type="text/javascript" src="http://j1.58cdn.com.cn/ui7/post/pc/ershoufang_v20170417095500.js"></script>
		<script type="text/javascript">
	var usertype = "person";
	if(!true){
		usertype = "NA";
	}
	else if(false){
		if(!false){
			usertype = "biz";
		}else{
			usertype = "vip";
		}
	}else if(false){
		usertype = "biz";
	}
	
    var _gaq = _gaq || []; var site_name = "58"; var page_type = "post";
    var _trackURL = "{'area':'483','cate':'1,12','GA_pageview':'/xa/house/ershoufang/person/fillout/add/','infoid':0,'page':'fillout','pagetype':'post','postmode':'add','poststep':'fillout','usertype':'person','ver':'new'}";
    _gaq.push(['pageTracker._setAccount', 'UA-877409-4']);
    _gaq.push(['pageTracker._setDomainName', '.58.com']);
    _gaq.push(['pageTracker._setAllowLinker', true]);
    _gaq.push(['pageTracker._addOrganic', 'sogou', 'query']);
    _gaq.push(['pageTracker._addOrganic', 'baidu', 'word']);
    _gaq.push(['pageTracker._addOrganic', 'soso', 'w']);
    _gaq.push(['pageTracker._addOrganic', 'youdao', 'q']);
    _gaq.push(['pageTracker._addOrganic', '360', 'q']); 
    _gaq.push(['pageTracker._trackPageview','/xa/ershoufang/ershoufang/' + usertype + '/fillout/update/']);
   // $.getScript( ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js');
    $.getScript('http://tracklog.58.com/referrer4.js', function(response,status) {
		// response - 包含来自请求的结果数据
		// status - 包含请求的状态（"success", "notmodified", "error", "timeout" 或 "parsererror"）
		try{
			if(clickLog != undefined && typeof(clickLog)=="function"){
				if(typeof(startEventTime) != "undefined") {
					clickLog('from=Post_TriggerEventTime&key=htmlStart&eventTime='+startEventTime);
				}
			}
		}catch(e){
		}
	});
</script>


<!-- *********************底部********************** -->       
	<%@ include file="bottom.jsp" %>
  </body>
</html>
