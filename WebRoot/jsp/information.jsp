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
    
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	
	<title>房屋详细信息页</title>
	<link href="./css/common.css" rel="stylesheet" type="text/css"/>
	<link href="./css/info3.css" rel="stylesheet" type="text/css"/>
	
	<!-- <script src="./js/jquery-1.8.3.js" /> -->
	
	<script>
		function saveCart(){
			document.getElementById("cartForm").submit();
		}
	</script>
  </head>
  
  <body>
  <!-- *********************顶部********************** -->	

  <%@ include file="top.jsp" %>
	
<!-- ********************中间内容********************* -->
<div class="container information">
	<div class="house-title">
		<p class="house-update-info"></p>
        <h1 class="c_333 f20"><s:property value="model.title"/></h1>
        <p class="house-update-info"></p>
        <div class="title-right-info f12">
            <a id="collectHouseTop" class="collect-house c_999 off ml_20" >
                <!-- <div class="top c_555 f14 lh18"><i class="collectIcon icon"></i>收藏</div> -->
                <div class="top c_555 f14 lh18">
	                <form id="cartForm" action="${ pageContext.request.contextPath }/collection_addCollections.action" method="post" >
						<input type="hidden" name="hid" value="<s:property value="model.hid"/>"/>
						<div class="action">
							<div class="buy">
								<i class="collectIcon icon"></i>
								<input id="addCart" class="addCart" value="收藏" type="button" onclick="saveCart()"/>
							</div>
						</div>
					</form>
                </div>
                <em id="collectCount">1</em>人气
             </a>

                
             <a id="defraudHouse" class="defraud-house c_888 ml_20" href="javascript:;"><i class="defraudIcon icon"></i>举报</a>
                    </div>

        <div id="manageBar" class="manage-wrap">
            <i class="jianjiao icon"></i>

            <a id="gaq_update" class="ab" href="javascript:;" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_guanli_update')">修改</a>
            <a id="gaq_delete" class="ab" href="javascript:;" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_guanli_delete')">删除</a>
            <a id="gaq_refresh" class="ab" href="javascript:;" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_guanli_refresh')">刷新</a>
            <a class="ab" href="http://infotopweb.union.vip.58.com/infotopnet/trytop/&gt;/0" target="_blank" rel="nofollow" onclick="clickLog('from=fcpc_detail_esf_xa_guanli_zhiding')">置顶</a>
        </div>
        <div id="reportBar" class="report-column pr" style="display: none;">
            <i class="jianjiao icon"></i>
            <a class="ab" href="http://about.58.com/info/deleteinfo.aspx" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_jubao_dianhuamy')">电话被冒用</a>
                        <a class="ab" href="http://about.58.com/vote/pc?infoId=29725060107439" onclick="clickLog('from=fcpc_detail_esf_xa_jubao_xxxujia')" target="_blank">信息虚假</a>
            <a class="ab" href="http://110.58.com/?postId=29725060107439&amp;category=1001" onclick="clickLog('from=fcpc_detail_esf_xa_jubao_baoan')" target="_blank">我要报案</a>
        </div>
    </div>

	<div class="house-basic-pic fl" id="houseBasicPic">
		<div id="bigImg" class="basic-top-bigpic pr " onclick="clickLog('from=fcpc_detail_esf_xa_bigpicture')">
			<img id="smainPic" src="${pageContext.request.contextPath}/house/house001.jpg" alt="1/8" style="display: inline; margin-top: 0px;"><!--左上角房源大图一张-->
			<span id="sImgNu" class="leftNum pa f12" style="display: block;">1/8</span>
			<div class="basic-pic-load" id="loadingSmall" style="display: none;">
				<div class="top icon"></div>
				<div class="bottom icon"></div>
			</div>
		</div>
		<div class="off picDescLayer pa" id="sub" style="display:none">
			<img src="./images/lunbotu/666.png">
		</div>
		<div class="on picDescLayer pa"></div>
		<div class="on picDescMask on pa f12 c_fff">
			<i class="icon"></i>
			<span class="f1" id="smallPicDescType">房源描述</span>
			<p class="f2" id="smallPicDescShow"><s:property value="model.description"/></p>
		</div>
		<div class="basic-pic-list pr">
			<ul id="leftImg" class="pic-list-wrap pa" onclick="" style="left: 0px;">
					<!--基本信息小图-->
				<li id="xtu_3" class="actives" data-value="${pageContext.request.contextPath}/house/house001.jpg"><!--轮播图点击之后的大图-->
					<img data-value="${pageContext.request.contextPath}/house/house001.jpg" src="${pageContext.request.contextPath}/house/house001.jpg">
				</li>
				<li id="xtu_4" data-value="${pageContext.request.contextPath}/house/house002.jpg" class=""><!--轮播图点击之后的大图-->
					<img data-value="${pageContext.request.contextPath}/house/house002.jpg" src="${pageContext.request.contextPath}/house/house002.jpg">
				</li>
				<li id="xtu_5" data-value="${pageContext.request.contextPath}/house/house003.jpg" class=""><!--轮播图点击之后的大图-->
					<img data-value="${pageContext.request.contextPath}/house/house003.jpg" src="${pageContext.request.contextPath}/house/house003.jpg">
				</li>
				<li id="xtu_6" data-value="${pageContext.request.contextPath}/house/house004.jpg" class=""><!--轮播图点击之后的大图-->
					<img data-value="${pageContext.request.contextPath}/house/house004.jpg" src="${pageContext.request.contextPath}/house/house004.jpg">
				</li>
				<li id="xtu_7" data-value="${pageContext.request.contextPath}/house/house005.jpg"><!--轮播图点击之后的大图-->
					<img data-value="${pageContext.request.contextPath}/house/house005.jpg" src="${pageContext.request.contextPath}/house/house005.jpg">
				</li>
				<li id="xtu_8" data-value="${pageContext.request.contextPath}/house/house006.jpg"><!--轮播图点击之后的大图-->
					<img data-value="${pageContext.request.contextPath}/house/house006.jpg" src="${pageContext.request.contextPath}/house/house006.jpg">
				</li>
				<li id="xtu_9" data-value="${pageContext.request.contextPath}/house/house007.jpg"><!--轮播图点击之后的大图-->
					<img data-value="${pageContext.request.contextPath}/house/house007.jpg" src="${pageContext.request.contextPath}/house/house007.jpg">
				</li>
				<li id="xtu_10" data-value="${pageContext.request.contextPath}/house/house009.jpg"><!--轮播图点击之后的大图-->
					<img data-value="${pageContext.request.contextPath}/house/house009.jpg" src="${pageContext.request.contextPath}/house/house009.jpg">
				</li>
			</ul>
			<div id="smallPicDesc" style="display:none">
				<!--点击图片相册 的描述-->
				<p>
					<span>房源描述</span><span><s:property value="model.description"/></span>
				</p>
				
			</div>
				<a id="sbt" class="basic-pic-left pa" href="javascript:void(0);" onclick="">
					<i class="icon"></i>
				</a>
				<a id="sbt" class="basic-pic-right pa" href="javascript:void(0);" onclick="">
					<i class="icon"></i>
				</a>
		</div>
	</div>

	<div class="house-basic-right fr">
          <p class="house-basic-item1">
              <span class="price"><s:property value="model.countprice"/></b></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="unit"><s:property value="model.untiprice"/></span>
          </p>
	      <div class="house-basic-item2">
              <p class="room">
                  <span class="main"><s:property value="model.layout"/></span>
                  <span class="sub"><s:property value="model.floor"/></span>
              </p>
              <p class="area">
                  <span class="sub"><s:property value="model.area"/></span>
              </p>
              <p class="toward">
                  <span class="sub"><s:property value="model.htime"/></span>
              </p>
          </div>
          <ul class="house-basic-item3">
              <li>
                  <span class="c_999">小区：</span>
                  <span class="c_000 mr_10">
	                  <a href="http://xa.58.com/xiaoqu/fengyunrunyuan" target="_blank" class="c_000" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu')"><s:property value="model.areas"/></a>- <a class="c_000" href="/jingjijskfq/ershoufang/" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu_shangquan')"><s:property value="model.stretch"/></a>
	              </span>
	          </li>
	          <li>
	              <span class="c_999">位置：</span>
                  <span class="c_000 mr_10">
	                  <a class="c_000" href="/weiyang/ershoufang/" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_quyu')"><s:property value="model.village"/></a>
	                                              －
	                  <a class="c_000" href="http://xa.58.com/xiaoqu/fengyunrunyuan" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_xiaoqu')"><s:property value="model.address"/></a>
	              </span>
	          </li>
	       </ul>
	          <div class="house-basic-item4">
	              
	              <p class="c_999 lh22 jjr-desc"><s:property value="model.description"/></p>
	          </div>
	          <div class="house-chat-entry clearfix" id="houseChatEntry">
	              <div class="house-chat-phone">
	                  <!-- <p class="phone-logo"><i class="icon phone-icon"></i></p> -->
	                  <p class="chat-phone-layer show-phone" id="phone111" onclick="changePhone();">电话联系TA</p>
	                  <!-- <p class="phone-num">18192395854</p>
	                  <p class="phone-belong">
	                      <span>电话归属地 : 西安</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                                                  <a href=" http://my.58.com/mobileposthistory/?hidemobile=1&amp;query=862D8C4BEB7C4EAC2553667CB60D2755005D7454A26A079A,27931581001735,1" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_yifatiezi')">查看发帖记录</a>
	                                          </p> -->
	                  
	              </div>
	              <div class="house-chat-bangbang offline" id="imgbang44428596452621" style="width:50px">
	                  
	                  <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=774538869&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:774538869:53" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
	              </div>
	              <div class="house-chat-wx wx-off" id="wxChatBtn" >
	                  <i class="wx-icon icon"></i> 微信咨询
	              </div>
	              <div id="wxChat" class="wxchat-wrap" id="wechaticon" style="display:none;"><p class="code"><img src="https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHu7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyY0R2NDBuc0dhemUxYlV6a3hwMWUAAgR4rxBZAwSA9AMA" alt="二维码"></p>
<p class="word"><i class="icon"></i>扫一扫<br>随时随地沟通</p>
<i class="jianjiao icon"></i></div>
	          </div>
	      </div>
		
		
		<div class="house-detail-right">
            <!-- 浮动导航条 -->
            <div class="house-origin-nav" id="originNav">
                <ul class="nav-menu">

                    <li class="cur on" jumpto="generalSituation" onclick="clickLog('from=fcpc_detail_esf_xa_xiding_gaikuang')">概况
                    </li>
                    <li jumpto="generalExpense" onclick="clickLog('from=fcpc_detail_esf_xa_xiding_feiyong')" class="">费用
                    </li>
                                        <li jumpto="generalType" onclick="clickLog('from=fcpc_detail_esf_xa_xiding_huxing')" class="">户型
                    </li>
                                            <li jumpto="xiaoWrap" onclick="clickLog('from=fcpc_detail_esf_xa_xiding_xiaoqu')">小区
                        </li>
                                            <li jumpto="mapWrap" onclick="clickLog('from=fcpc_detail_esf_xa_xiding_weizhi')">位置
                        </li>
                                    </ul>
            </div>
            <!-- 概况 start -->
            <div class="general-item general-situation" id="generalSituation">
                <h3><em></em>概况</h3>
                <div class="general-item-wrap">
                    <ul class="general-item-left">
                                                    <li><span class="mr_25 c_999">房屋总价</span><span class="c_000"><s:property value="model.countprice"/>(单价 <s:property value="model.untiprice"/>)</span>
                            </li>
                                                    <li><span class="mr_25 c_999">房屋户型</span><span class="c_000"><s:property value="model.layout"/></span></li>
                                                    <li><span class="mr_25 c_999">房本面积</span><span class="c_000"><s:property value="model.area"/></span></li>
                                                    <li><span class="mr_25 c_999">房屋朝向</span><span class="c_000">南</span></li>
                                            </ul>
                    <ul class="general-item-right">
                                                    <li><span class="mr_25 c_999">所在楼层</span><span class="c_000"><s:property value="model.floor"/></span></li>
                                                    <li><span class="mr_25 c_999">装修情况</span>
       						                            <span class="c_000">精装修</span>
                            </li>
                                                    <li><span class="mr_25 c_999">产权年限</span><span class="c_000"><s:property value="model.htime"/></span>
                            </li>
                                                    <li><span class="mr_25 c_999">建筑年代</span><span class="c_000"><s:date name="model.hdate" format="yyyy" />年</span></li>
                                            </ul>
                </div>
            </div>
            <!-- 概况 end -->
            <!-- 费用 start -->
            <div class="general-item general-expense" id="generalExpense">
                <h3><em></em>费用</h3>
                <div class="general-item-wrap">
                    <ul class="general-item-left">
                        <li><span class="mr_25 c_999">房屋总价</span>
                            <span class="c_000"><s:property value="model.countprice"/>（<s:property value="model.untiprice"/>）</span>
                        </li>
                                                    <li><span class="mr_25 c_999">房屋类型</span><span class="c_000"><s:property value="model.htype"/></span></li>
                                                    <li><span class="mr_25 c_999">交易权属</span><span class="c_000"><s:property value="model.identify"/></span></li>
                                            </ul>
                    <ul class="general-item-right">
                        <li><span class="mr_25 c_999">参考首付</span>
                            <span class="c_000">18.6万（月供1778元/月）</span>
                        </li>
                   </ul>
                </div>
            </div>
            <!-- 费用 end -->

            <!-- 房主 start -->
                        <!-- 房主 end -->
            <!-- 声光 start -->
                        <!-- 声光 end -->
            <!-- 户型 start -->
            <div class="general-item general-type" id="generalType">
                <h3><em></em>户型</h3>
                <div class="general-item-wrap">
                                            <ul class="general-pic-list" onclick="clickLog('from=fcpc_detail_esf_xa_fyms_tupian_click')">
                                                            <li class="even" data-index="0">
                                    <img data-src="http://pic5.58cdn.com.cn/anjuke_58/af1ea57f7aa29f966468aa1dd0b65285?w=454&amp;h=341&amp;crop=1" src="${pageContext.request.contextPath}/house/house001.jpg" style="display: inline;">
                                </li>
                                                            <li data-index="1">
                                    <img data-src="http://pic1.58cdn.com.cn/anjuke_58/652c00a91b81be424888dd0ab9598337?w=454&amp;h=341&amp;crop=1" src="${pageContext.request.contextPath}/house/house002.jpg" style="display: inline;">
                                </li>
                                                            <li class="even" data-index="2">
                                    <img data-src="http://pic3.58cdn.com.cn/anjuke_58/d4713226067c0f6561c8c4f6545bbcf0?w=454&amp;h=341&amp;crop=1" src="${pageContext.request.contextPath}/house/house003.jpg" style="display: inline;">
                                </li>
                                                            <li data-index="3">
                                    <img data-src="http://pic6.58cdn.com.cn/anjuke_58/15b48d5056bd679943f38a30d61544d8?w=454&amp;h=341&amp;crop=1" src="${pageContext.request.contextPath}/house/house004.jpg" style="display: inline;">
                                </li>
                                                            <li class="even" data-index="4">
                                    <img data-src="http://pic2.58cdn.com.cn/anjuke_58/72e828db286aa9114d3bb423370c10aa?w=454&amp;h=341&amp;crop=1" src="${pageContext.request.contextPath}/house/house005.jpg" style="display: inline;">
                                </li>
                                                            <li data-index="5">
                                    <img data-src="http://pic3.58cdn.com.cn/anjuke_58/a2af732e2417512d5cfed01cb0576c89?w=454&amp;h=341&amp;crop=1" src="${pageContext.request.contextPath}/house/house006.jpg" style="display: inline;">
                                </li>
                                                            <li class="even" data-index="6">
                                    <img data-src="http://pic3.58cdn.com.cn/anjuke_58/2f8b83da8e25c53e9c8a2edcfcbe372c?w=454&amp;h=341&amp;crop=1" src="${pageContext.request.contextPath}/house/house007.jpg" style="display: inline;">
                                </li>
                                                            <li data-index="7">
                                    <img data-src="http://pic6.58cdn.com.cn/anjuke_58/8e798db15f07a7656b00b5a190a25303?w=454&amp;h=341&amp;crop=1" src="${pageContext.request.contextPath}/house/house009.jpg" style="display: inline;">
                                </li>
                                                    </ul>
                        <div class="genaral-pic-desc">
                            <span class="pic-desc-item">房源描述<i class="sanjiaoIcon icon"></i></span>
                            <p class="pic-desc-word">
                            	<s:property value="model.description"/>
                        </div>
                                                    <div class="genaral-pic-desc">
                            <span class="pic-desc-item">业主心态<i class="sanjiaoIcon icon"></i></span>
                                <p class="pic-desc-word">
                                    客户新买了大三室，已经装修好了，差不多可以搬了，想将这套房子卖了</p>
                            </div>
                                                    <div class="genaral-pic-desc">
                            <span class="pic-desc-item">小区配套<i class="sanjiaoIcon icon"></i></span>
                                <p class="pic-desc-word">
                                    周边配套：<br>1.长安医院，中医医院<br>2.西安中学，高铁寨小学，市六十六中<br>3.小区距离地铁2号线凤城五路站5分钟，凤城五路公交站5分钟，30多路公交供您选择<br>4.人人乐，沃尔玛，世纪金花<br>5.中国银行，建设银行，招商银行，秦农银行，工商银行<br>6.城市运动公园，汉城湖景区</p>
                            </div>
                                                    <div class="genaral-pic-desc">
                            <span class="pic-desc-item">服务介绍<i class="sanjiaoIcon icon"></i></span>
                                <p class="pic-desc-word">
                                    本人主要负责未央周边的二手房买卖，租房业务，为您提供高品质一条龙服务，您的满意是我们工作的动力！！！<br>更多优质房源，等着你哦！<br></p>
                            </div>
                                                            </div>
            </div>
            <!-- 户型 end -->
            <!-- 小结 start -->
                        <!-- 小结 end -->
      <!-- 热门房源start -->
<div id="guessYouLike" class="guess-you-like recommend-house"><p class="recommend-house-nav f18 c_000">热门房源</p>
	<ul class="recommend-house-list">
		 <s:iterator var="h" value="hList">   
			<li class="first">
				<a href="${pageContext.request.contextPath}/house_findByHid.action?hid=<s:property value="#h.hid" />" target="_blank" onclick="">
					<div class="pic pr" style="margin:0 10px 0 0">
						<img data-src="http://pic5.58cdn.com.cn/anjuke_58/1047b1e25136569b6431eabec7c5a6d5?w=444&amp;h=316&amp;crop=1" alt="" src="${pageContext.request.contextPath}/<s:property value="#h.himage"/>">
					</div>
					<p class="room f12 c_999"><span class="price"><s:property value="#h.countprice"/></span>&nbsp;&nbsp;<s:property value="#h.layout"/>&nbsp;&nbsp;</p>
					
					<p class="title f16 c_555 lh20"><s:property value="#h.areas"/></p>
					
				</a>
			</li>
		</s:iterator>
	</ul>
</div>
            <!-- 最新房源start -->
  <div id="seeAgainSee" class="see-again-see recommend-house"><p class="recommend-house-nav f18 c_000">最新房源</p>
<ul class="recommend-house-list">
	<s:iterator var="n" value="nList">
		<li class="first" >
			<a href="${pageContext.request.contextPath}/house_findByHid.action?hid=<s:property value="#n.hid"/>" target="_blank" >
				<div class="pic pr"  style="margin:0 10px 0 0">
					<img data-src="http://pic7.58cdn.com.cn/anjuke_58/1fe6de9708a9fb3fbcc262bbb2c93155?w=444&amp;h=316&amp;crop=1" alt="" src="${pageContext.request.contextPath}/<s:property value="#n.himage"/>">
					<span class="marklight f12 pa"><b class="f18"><s:property value="#n.countprice" /></span>
				</div>
				<p class="title f16 c_555 lh20"><s:property value="#n.areas" /></p>
				<p class="room f12 c_999 lh20"><s:property value="#n.layout" />&nbsp;/&nbsp;<s:property value="#n.area" /></p>
			</a>
		</li>           
	</s:iterator>                       
	</ul>
</div>
            <!-- 最新房源end -->
          
            <!-- 底部房源推广 功能加-->
            <div id="fytgListBottom"></div>
            
        </div>
			
	</div>

<!-- *********************底部********************** -->       
	<%@ include file="bottom.jsp" %>
  </body>
  <script>
  
  $("#phone111").mousemove(function() {
  	$(this).html("13259431310");
  })
  $("#phone111").mouseout(function() {
  	$(this).html("电话联系TA");
  })
  
  $("#wxChatBtn").mousemove(function() {
  	$("#wechaticon").css("display", "block");
  })
  $("#wxChatBtn").mouseout(function() {
  	$("#wechaticon").css("display", "none");
  })
	var imgInfo = [
		{
			"src":"${pageContext.request.contextPath}/house/house001.jpg",
			"index": "1/8",
			"scroll": "",
			"info": "1.11111小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大",
		},
		{
			"src":"${pageContext.request.contextPath}/house/house002.jpg",
			"index": "2/8",
			"info": "2.22222比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大",
		},
		{
			"src":"${pageContext.request.contextPath}/house/house003.jpg",
			"index": "3/8",
			"info": "3.33333比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大",
		},
		{
			"src":"${pageContext.request.contextPath}/house/house004.jpg",
			"index": "4/8",
			"info": "4.44444比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大",
		},
		{
			"src":"${pageContext.request.contextPath}/house/house005.jpg",
			"index": "5/8",
			"info": "5.55555比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大",
		},
		{
			"src":"${pageContext.request.contextPath}/house/house006.jpg",
			"index": "6/8",
			"info": "6.66666比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大",
		},
		{
			"src":"${pageContext.request.contextPath}/house/house007.jpg",
			"index": "7/8",
			"info": "7.777777比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大",
		},
		{
			"src":"${pageContext.request.contextPath}/house/house009.jpg",
			"index": "8/8",
			"info": "8.888888比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大",
		},
	]
	var picDescription = document.getElementById('smallPicDescShow')
	var bigpic = document.getElementById('bigImg')
	var bigpicImg = document.getElementById('smainPic')
	var spicBar = document.getElementById('leftImg')
	var spicBarImg = document.getElementById('leftImg').getElementsByTagName('img')
	for(var i = 0; i < spicBarImg.length; i++){
		spicBarImg[i].index = i
	}
	spicBar.addEventListener('click', (e) => {
		if(e.target.nodeName.toLowerCase() == 'img'){
			bigpicImg.src = imgInfo[e.target.index].src
			picDescription.innerHTML = imgInfo[e.target.index].info
		}
	})
	
	var i = 0
	$(".basic-pic-right").click(function(){
		++i
		if(i >= 6){
			i = 0
		}
		$("#leftImg").animate({left: - i*130 + 'px'});

	});
	$(".basic-pic-left").click(function(){
		if(i == 0){
			return
		}
		--i
		$("#leftImg").animate({left: -i*130 + 'px'});

	});

	$(".picDescMask").click(function(){	
		$(".picDescLayer").fadeOut();
		$(".picDescMask").fadeOut();
		$("#sub").fadeIn();
	})
	$("#sub").click(function(){
		$(".picDescLayer").fadeIn();
		$(".picDescMask").fadeIn();
		$("#sub").fadeOut()
	})
</script>
</html>
