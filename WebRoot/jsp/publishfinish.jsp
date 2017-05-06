<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
				<div class="l_warning">  <i class="post_newbg warning"></i>  请勿发布虚假欺诈信息，不然将影响您的个人征信纪录哦～</div>
						<div class="l_top"> <i class="post_newbg state "></i>发布成功!</div>
		<div class="l_font">该信息已发布在  <a href="http://xa.58.com/ershoufang/" target="_blank" onclick="clickLog('from=postsuccess_liebiao');">优优二手房</a>您的信息需要审核才能展示，请在个人中心关注信息状态。</div>
		
				<div class="main_zd_iframe">
			<iframe src="http://cube.58.com/cube/createPromotion?key=468468684006541493120254363&amp;infoId=29839392569150&amp;infostate=1&amp;zdkey=" name="tuiguangFrame" id="tuiguangFrame" frameborder="0" scrolling="no" onload="tuiguang_iframe();" style="width: 100%; height: 150px;"></iframe>
		</div>
				<iframe src="http://refresh.vip.58.com/common/noviprefresh?day=0&amp;buyNum=1&amp;infoid=29839392569150" name="refreshDayFrame" id="refreshDayFrame" frameborder="0" scrolling="no" style="width:100%; height:0px;"></iframe>
							<div class="l_btns clearfix">
								<a href="http://xa.58.com/ershoufang/29839392569150x.shtml" class="p_active_btn" onclick="clickLog('from=postsuccess_chakan');">
					<span>查看信息</span>
				</a>
								<a href="http://my.58.com/" class="p_btn" onclick="clickLog('from=postsuccess_guanli');"><span>管理信息</span></a>
												<div class="w_shadow"></div>
				<div id="fe_window_1928_form" class="fe_window">
					<div id="fe_window_1928_outer" class="outer">
						<div class="frame"></div>
						<div class="contains">
							<div class="topbar">
								<a id="fe_window_closebtn" target="_self" class="closebtn" href="javascript:void(0);"></a>
								<span id="fe_window_1928_title" class="title">在线推广</span></div>
							<div class="load" style="display: none;">加载中...</div>
														<iframe id="fe_window_1928_iframe" frameborder="0" onload="fe_window_loadAction();" class="fe_window_iframe" src="http://infotop.58.com/infotopnet/trytop/29839392569150/1510/0"></iframe>
													</div>
					</div>
				</div>
				<a href="javascript:;" class="p_zd_btn" id="f_d_bton" onclick="clickLog('from=postsuccess_zhiding');">
					<span>置顶信息</span>
				</a>
								<a href="http://post.58.com/t/" class="p_btn" onclick="clickLog('from=postsuccess_zaifa');"><span>再发一条</span></a>
			</div>
						<div class="l_tg"> 使用在线推广，快速提升浏览量，助您快速成交！<a href="http://e.58.com" onclick="clickLog('from=postsuccess_tuiguang');" target="_blank"> 了解详情</a></div>
					</div>
	</div>

<script type="text/javascript" src="http://post.58.com/succ/post1388/jquery1.7_v0.js"></script>
<script src="http://post.58.com/succ/post1388/qiye.js"></script>
<script type="text/javascript" src="http://j1.58cdn.com.cn/fangrs/post-pc-house/main_post_success_v20170425110613.js"></script>
<script type="text/javascript">

	$("#pers_btn").on("click",function(e){
		clickLog('from=fb_grrz');
		window.location.href = "http://my.58.com/authrealname";
	});
	$("#qiye_btn").on("click",function(e){
		clickLog('from=fb_qyrz');
		window.location.href = "http://my.58.com/authbiz";
	});

	function successWeixinQrcode(source,id,imgid){
		$.ajax({
			url: 'http://weixin.58.com/sns/qrcode/'+source+'?scenestr='+id,
			type: 'get',
			dataType: 'jsonp',
			jsonp: 'callback',
			success: function(data) {
				if (data.imgurl && data.imgurl.length > 0) {
					$("#"+imgid).attr("src",data.imgurl);
				}
			},
			error: function(e) {
			}
		});
	}
	successWeixinQrcode(48,46846868400654,"wx_imgeditor");

</script>

<script type="text/javascript">
		var usertype = "person";
		if(!true){
			usertype = "NA";
		}
		else if(false){
			usertype = "vip";
		}else if(false){
			usertype = "biz";
		}

		var _gaq = _gaq || []; var site_name = "58"; var page_type = "post";
		var _trackURL = "{'area':'483,487,21816','cate':'1,12','GA_pageview':'/xa/house/ershoufang/person/success/add/','infoid':29839392569150,'page':'success','pagetype':'post','postmode':'add','poststep':'success','usertype':'person','ver':'old'}";
		_gaq.push(['pageTracker._setAccount', 'UA-877409-4']);
		_gaq.push(['pageTracker._setDomainName', '.58.com']);
		_gaq.push(['pageTracker._setAllowLinker', true]);
		_gaq.push(['pageTracker._addOrganic', 'sogou', 'query']);
		_gaq.push(['pageTracker._addOrganic', 'baidu', 'word']);
		_gaq.push(['pageTracker._addOrganic', 'soso', 'w']);
		_gaq.push(['pageTracker._addOrganic', 'youdao', 'q']);
		_gaq.push(['pageTracker._addOrganic', '360', 'q']);
		_gaq.push(['pageTracker._trackPageview','/xa/house/ershoufang/' + usertype + '/success/add/']);
		$.getScript('http://tracklog.58.com/referrer4.js', function(response,status) {
			// response - 包含来自请求的结果数据
			// status - 包含请求的状态（"success", "notmodified", "error", "timeout" 或 "parsererror"）
			try{
				if(clickLog != undefined && typeof(clickLog)=="function"){
					if(typeof(startEventTime) != "undefined") {
						clickLog('from=Post_TriggerEventTime&key=htmlStart&eventTime='+startEventTime);
					}
					clickLog('from=Post_TriggerEventTime&key=formEnd&eventTime='+endEventTime);
				}
						}catch(e){
//			console.log(e)
			}
		});
		var endEventTime
		$(function(){
			endEventTime=(new Date()).getTime();
		});
	</script>


	
<object id="np-tools-plugin" type="application/x-npHaitaoPlugin" style="position:absolute;left:-9000px;top:-9000px;" width="0" height="0"></object><a data-cltversion="1.0.2" data-cltsource="410002" data-cltuuid="ext9PHQUDS8QWnEfJnibortcZNV3Z2zBDUt7" data-cltats="3" href="javascript:" id="tools-nav-explugin" style="display: none;">//3pcdn.1haitao.com/extension-tools/js/extensionNav.js?v=1456903219826</a><div id="addInfo" style="display: none;"><a href="http://tracklog.58.com/detail/pc/ershoufang/43281833301716x.shtml">推荐信息</a></div><div id="im_div" name="im_div" style="position: fixed; right: 0px; bottom: 0px; width: 0px; height: 0px; border: 0px; cursor: default; z-index: 1000;"><object type="application/x-shockwave-flash" id="im_filter_swf" name="im_filter_swf" align="middle" style="z-index:2;position:absolute;top:0;left:0;" data="//flash.bangbang.58.com/web/im_filter_1.3.swf" width="100%" height="100%"><param name="quality" value="high"><param name="allowscriptaccess" value="always"><param name="allowfullscreen" value="false"></object></div><link rel="stylesheet" type="text/css" href="//c.58cdn.com.cn/resource/xxzl/thirdcredit/tencentcredit/css/style.css"></body>


<!-- *********************底部********************** -->       
	<%@ include file="bottom.jsp" %>
  </body>
</html>
