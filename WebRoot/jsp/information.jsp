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
	<link href="./css/info1.css" rel="stylesheet" type="text/css"/>
	<link href="./css/info2.css" rel="stylesheet" type="text/css"/>
	<link href="./css/info3.css" rel="stylesheet" type="text/css"/>
	<link href="./css/cart.css" rel="stylesheet" type="text/css"/>

  </head>
  
  <body>
  <!-- *********************顶部********************** -->	

  <%@ include file="top.jsp" %>
	
<!-- ********************中间内容********************* -->
<div class="container information">
	<div class="house-title">
        <h1 class="c_333 f20">经开区 地铁口 花园社区 精装2室 明厨明卫 婚房出售</h1>
        <p class="house-update-info">
                           
        </p>
        <div class="title-right-info f12">
                        <a id="collectHouseTop" class="collect-house c_999 off ml_20" href="javascript:;" onclick="clickLog('from=fcpc_detail_esf_xa_collect')">
                <div class="top c_555 f14 lh18"><i class="collectIcon icon"></i>收藏
                </div>
                <em id="collectCount">1</em>人气</a>
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
                <!-- 视频加1 start -->
                                <!-- 视频加1 end -->
                <img id="smainPic" src="http://pic5.58cdn.com.cn/anjuke_58/af1ea57f7aa29f966468aa1dd0b65285?w=700&amp;h=480&amp;crop=1" alt="1/8" style="display: inline; margin-top: 0px;"><!--左上角房源大图一张-->
                <span id="sImgNu" class="leftNum pa f12" style="display: block;">1/8</span>

                <div class="basic-pic-load" id="loadingSmall" style="display: none;">
                    <div class="top icon"></div>
                    <div class="bottom icon"></div>
                </div>

                <!-- 视频加2 start -->
                                <!-- 视频加2 end -->

            </div>
            <div class="on picDescLayer pa"></div>
            <div class="on picDescMask on pa f12 c_fff">
                <i class="icon"></i>
                <span class="f1" id="smallPicDescType">房源描述</span>
                <p class="f2" id="smallPicDescShow">1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大</p>
            </div>
            <div class="basic-pic-list pr">
                <ul id="leftImg" class="pic-list-wrap pa" onclick="clickLog('from=fcpc_detail_esf_xa_tupian_click')" style="left: 0px;">

                    <!--基本信息小图-->
                                                <li id="xtu_3" class="actives" data-value="http://pic5.58cdn.com.cn/anjuke_58/af1ea57f7aa29f966468aa1dd0b65285?w=700&amp;h=480&amp;crop=1"><!--轮播图点击之后的大图-->
                                <img data-value="http://pic5.58cdn.com.cn/anjuke_58/af1ea57f7aa29f966468aa1dd0b65285?w=242&amp;h=150&amp;crop=1" src="http://pic5.58cdn.com.cn/anjuke_58/af1ea57f7aa29f966468aa1dd0b65285?w=242&amp;h=150&amp;crop=1">
                                <!--data-value和src值相同  小图的尺寸-->
                                                            </li>
                                                    <li id="xtu_4" data-value="http://pic1.58cdn.com.cn/anjuke_58/652c00a91b81be424888dd0ab9598337?w=700&amp;h=480&amp;crop=1" class=""><!--轮播图点击之后的大图-->
                                <img data-value="http://pic1.58cdn.com.cn/anjuke_58/652c00a91b81be424888dd0ab9598337?w=242&amp;h=150&amp;crop=1" src="http://pic1.58cdn.com.cn/anjuke_58/652c00a91b81be424888dd0ab9598337?w=242&amp;h=150&amp;crop=1">
                                <!--data-value和src值相同  小图的尺寸-->
                                                            </li>
                                                    <li id="xtu_5" data-value="http://pic3.58cdn.com.cn/anjuke_58/d4713226067c0f6561c8c4f6545bbcf0?w=700&amp;h=480&amp;crop=1" class=""><!--轮播图点击之后的大图-->
                                <img data-value="http://pic3.58cdn.com.cn/anjuke_58/d4713226067c0f6561c8c4f6545bbcf0?w=242&amp;h=150&amp;crop=1" src="http://pic3.58cdn.com.cn/anjuke_58/d4713226067c0f6561c8c4f6545bbcf0?w=242&amp;h=150&amp;crop=1">
                                <!--data-value和src值相同  小图的尺寸-->
                                                            </li>
                                                    <li id="xtu_6" data-value="http://pic6.58cdn.com.cn/anjuke_58/15b48d5056bd679943f38a30d61544d8?w=700&amp;h=480&amp;crop=1" class=""><!--轮播图点击之后的大图-->
                                <img data-value="http://pic6.58cdn.com.cn/anjuke_58/15b48d5056bd679943f38a30d61544d8?w=242&amp;h=150&amp;crop=1" src="http://pic6.58cdn.com.cn/anjuke_58/15b48d5056bd679943f38a30d61544d8?w=242&amp;h=150&amp;crop=1">
                                <!--data-value和src值相同  小图的尺寸-->
                                                            </li>
                                                    <li id="xtu_7" data-value="http://pic2.58cdn.com.cn/anjuke_58/72e828db286aa9114d3bb423370c10aa?w=700&amp;h=480&amp;crop=1"><!--轮播图点击之后的大图-->
                                <img data-value="http://pic2.58cdn.com.cn/anjuke_58/72e828db286aa9114d3bb423370c10aa?w=242&amp;h=150&amp;crop=1" src="http://pic2.58cdn.com.cn/anjuke_58/72e828db286aa9114d3bb423370c10aa?w=242&amp;h=150&amp;crop=1">
                                <!--data-value和src值相同  小图的尺寸-->
                                                            </li>
                                                    <li id="xtu_8" data-value="http://pic3.58cdn.com.cn/anjuke_58/a2af732e2417512d5cfed01cb0576c89?w=700&amp;h=480&amp;crop=1"><!--轮播图点击之后的大图-->
                                <img data-value="http://pic3.58cdn.com.cn/anjuke_58/a2af732e2417512d5cfed01cb0576c89?w=242&amp;h=150&amp;crop=1" src="http://pic3.58cdn.com.cn/anjuke_58/a2af732e2417512d5cfed01cb0576c89?w=242&amp;h=150&amp;crop=1">
                                <!--data-value和src值相同  小图的尺寸-->
                                                            </li>
                                                    <li id="xtu_9" data-value="http://pic3.58cdn.com.cn/anjuke_58/2f8b83da8e25c53e9c8a2edcfcbe372c?w=700&amp;h=480&amp;crop=1"><!--轮播图点击之后的大图-->
                                <img data-value="http://pic3.58cdn.com.cn/anjuke_58/2f8b83da8e25c53e9c8a2edcfcbe372c?w=242&amp;h=150&amp;crop=1" src="http://pic3.58cdn.com.cn/anjuke_58/2f8b83da8e25c53e9c8a2edcfcbe372c?w=242&amp;h=150&amp;crop=1">
                                <!--data-value和src值相同  小图的尺寸-->
                                                            </li>
                                                    <li id="xtu_10" data-value="http://pic6.58cdn.com.cn/anjuke_58/8e798db15f07a7656b00b5a190a25303?w=700&amp;h=480&amp;crop=1"><!--轮播图点击之后的大图-->
                                <img data-value="http://pic6.58cdn.com.cn/anjuke_58/8e798db15f07a7656b00b5a190a25303?w=242&amp;h=150&amp;crop=1" src="http://pic6.58cdn.com.cn/anjuke_58/8e798db15f07a7656b00b5a190a25303?w=242&amp;h=150&amp;crop=1">
                                <!--data-value和src值相同  小图的尺寸-->
                                                            </li>
                                            
                </ul>
                <div id="smallPicDesc" style="display:none">
                    <!--点击图片相册 的描述-->
                                                <p><span>房源描述</span><span>1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大</span>
                            </p>
                                                    <p><span>房源描述</span><span>1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大</span>
                            </p>
                                                    <p><span>房源描述</span><span>1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大</span>
                            </p>
                                                    <p><span>房源描述</span><span>1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大</span>
                            </p>
                                                    <p><span>房源描述</span><span>1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大</span>
                            </p>
                                                    <p><span>房源描述</span><span>1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大</span>
                            </p>
                                                    <p><span>房源描述</span><span>1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大</span>
                            </p>
                                                    <p><span>房源描述</span><span>1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大</span>
                            </p>
                                        </div>
                <a id="slbt" class="basic-pic-left pa" href="javascript:void(0);" onclick="clickLog('from=fcpc_detail_esf_xa_tupian_last')">
                    <i class="icon"></i>
                </a>
                <a id="srbt" class="basic-pic-right pa" href="javascript:void(0);" onclick="clickLog('from=fcpc_detail_esf_xa_tupian_next')">
                    <i class="icon"></i>
                </a>
            </div>
        </div>

	<div class="house-basic-right fr">
          <p class="house-basic-item1">
              <span class="price">62<b>万</b></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="unit">7045                    元/平</span>
          </p>
	      <div class="house-basic-item2">
              <p class="room">
                  <span class="main">2室2厅1卫</span>
                  <span class="sub">高层/共14层</span>
              </p>
              <p class="area">
                  <span class="main">88平</span>
                  <span class="sub">精装修</span>
              </p>
              <p class="toward">
                  <span class="main">南</span>
                  <span class="sub">2013年建</span>
              </p>
          </div>
          <ul class="house-basic-item3">
              <li>
                  <span class="c_999">小区：</span>
                  <span class="c_000 mr_10">
	                  <a href="http://xa.58.com/xiaoqu/fengyunrunyuan" target="_blank" class="c_000" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu')">枫韵润园                        </a>- <a class="c_000" href="/jingjijskfq/ershoufang/" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu_shangquan')">经济技术开发区</a>
	              </span>
	          </li>
	          <li>
	              <span class="c_999">位置：</span>
                  <span class="c_000 mr_10">
	                  <a class="c_000" href="/weiyang/ershoufang/" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_quyu')">未央</a>
	                                              －
	                  <a class="c_000" href="http://xa.58.com/xiaoqu/fengyunrunyuan" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_xiaoqu')">常青二路5号</a>
	              </span>
	
	              <span class="f12 c_999 mr_10">距离地铁2号线凤城五路508米</span>
	              <span>
	              	  <a href="javascript:;" class="mapNavIcon td-u" jumpto="mapWrap" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_map')">
	              		  <i class="icon"></i>地图
	              	  </a>
	              </span>
	          </li>
	       </ul>
	          <div class="house-basic-item4">
	              
	              <p class="c_999 lh22 jjr-desc">1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。
	              2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大阳台，无敌采光3.装修：房子精装修，即买即住。
	              4.产权：房子产权明晰，交易方式灵活 。5.小区：小</p>
	          </div>
	          <div class="house-chat-entry clearfix" id="houseChatEntry">
	              <div class="house-chat-phone">
	                  <!-- <p class="phone-logo"><i class="icon phone-icon"></i></p> -->
	                  <p class="chat-phone-layer show-phone" onclick="clickLog('from=fcpc_detail_esf_xa_call')">电话联系TA</p>
	                  <!-- <p class="phone-num">18192395854</p>
	                  <p class="phone-belong">
	                      <span>电话归属地 : 西安</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                                                  <a href=" http://my.58.com/mobileposthistory/?hidemobile=1&amp;query=862D8C4BEB7C4EAC2553667CB60D2755005D7454A26A079A,27931581001735,1" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_yifatiezi')">查看发帖记录</a>
	                                          </p> -->
	                  
	              </div>
	              <div class="house-chat-bangbang offline" id="imgbang44428596452621" onclick="clickLog('from=fcpc_detail_esf_xa_im')">
	                  <i class="bangbang-icon icon"></i> 在线沟通
	              </div>
	              <div class="house-chat-wx wx-off" id="wxChatBtn" onclick="clickLog('from=fcpc_detail_esf_xa_wechat')">
	                  <i class="wx-icon icon"></i> 微信咨询
	              </div>
	              <div id="wxChat" class="wxchat-wrap">
	              </div>
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
                                                    <li><span class="mr_25 c_999">房屋总价</span><span class="c_000">62万(单价 7045元/㎡)</span>
                            </li>
                                                    <li><span class="mr_25 c_999">房屋户型</span><span class="c_000">2室2厅1卫</span></li>
                                                    <li><span class="mr_25 c_999">房本面积</span><span class="c_000">88㎡</span></li>
                                                    <li><span class="mr_25 c_999">房屋朝向</span><span class="c_000">南</span></li>
                                            </ul>
                    <ul class="general-item-right">
                                                    <li><span class="mr_25 c_999">所在楼层</span><span class="c_000">高层/共14层</span></li>
                                                    <li><span class="mr_25 c_999">装修情况</span>
                                <span class="c_000">精装修</span>
                            <span class="ml_16"><a href="/jingjijskfq/jiazhuang/" target="_blank" class="td-u" onclick="clickLog('from=fcpc_detail_esf_xa_zhaozhuangxiu')">
                                    <i class="zzqIcon icon"></i>找装修</a>
                            </span>
                            </li>
                                                    <li><span class="mr_25 c_999">产权年限</span><span class="c_000">70年</span>
                            </li>
                                                    <li><span class="mr_25 c_999">建筑年代</span><span class="c_000">2013年</span></li>
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
                            <span class="c_000">62                                万（单价7045                                元/㎡）</span>
                            <span class="ml_16"><a href="http://jinrong.58.com/kop?from=58_jinrong__esf_cdq_detail" target="_blank" class="td-u" onclick="clickLog('from=fcpc_detail_esf_xa_bangnicouqian')"><i class="bncqIcon icon"></i>帮你凑钱</a></span>
                        </li>
                                                    <li><span class="mr_25 c_999">房屋类型</span><span class="c_000">普通住宅</span></li>
                                                    <li><span class="mr_25 c_999">交易权属</span><span class="c_000">商品房</span></li>
                                            </ul>
                    <ul class="general-item-right">
                        <li><span class="mr_25 c_999">参考首付</span>
                            <span class="c_000">18.6                                万（月供1778元/月）</span>
                            <span class="ml_16"><a href="http://cha.58.com/calc/fang_loan.html?price=62" target="_blank" class="td-u" onclick="clickLog('from=fcpc_detail_esf_xa_fdjsq')"><i class="fdjsqIcon icon"></i>房贷计算器</a>
                            </span>
                        </li>
                                            </ul>
                </div>
            </div>
            <!-- 费用 end -->
            <!-- 同价位你可能感兴趣的房源 start -->
            <div id="houseWithInterest" class="house-with-interest recommend-house"><p class="recommend-house-nav f18 c_000">同价位你可能感兴趣的房源</p>
<ul class="recommend-house-list">

<li class="first" onclick="clickLog('from=fcpc_detail_esf_xa_tongjiawei_no1')">
<a href="http://xa.58.com/ershoufang/27844860840497x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=txdjfy_&amp;pos=1_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_B_PLATFORM_PC-RLOGID=18446744072380350464_&amp;seq=853989567567888384_&amp;curinfoid=29725060107439_&amp;id=27844860840497');">
<div class="pic pr"><img data-src="http://pic3.58cdn.com.cn/p1/small/n_v1bkuyfvnsoaivri7fhu5a.jpg?w=330&amp;h=236&amp;crop=1" alt="" src="http://pic3.58cdn.com.cn/p1/small/n_v1bkuyfvnsoaivri7fhu5a.jpg?w=330&amp;h=236&amp;crop=1" style="display: inline;">
<span class="marklight f12 pa">便宜4万元</span></div>
<p class="room f12 c_999 lh20"> <span class="price">58&nbsp;<b>万元</b></span>&nbsp;&nbsp;&nbsp;&nbsp;2室2厅
</p>
<p class="title f12 c_555 lh20">海璟国际</p>

</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_tongjiawei_no2')">
<a href="http://xa.58.com/ershoufang/28400560017323x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=txdjfy_&amp;pos=2_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_B_PLATFORM_PC-RLOGID=18446744072380350464_&amp;seq=853989567567888384_&amp;curinfoid=29725060107439_&amp;id=28400560017323');">
<div class="pic pr"><img data-src="http://pic2.58cdn.com.cn/anjuke_58/c9e4a4ad0be48982786e4a5efc1b18df?w=330&amp;h=236&amp;crop=1" alt="" src="http://pic2.58cdn.com.cn/anjuke_58/c9e4a4ad0be48982786e4a5efc1b18df?w=330&amp;h=236&amp;crop=1" style="display: inline;">
<span class="marklight f12 pa">便宜7万元</span></div>
<p class="room f12 c_999 lh20"> <span class="price">55&nbsp;<b>万元</b></span>&nbsp;&nbsp;&nbsp;&nbsp;3室2厅
</p>
<p class="title f12 c_555 lh20">枫韵润园</p>

</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_tongjiawei_no3')">
<a href="http://xa.58.com/ershoufang/28188150367683x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=txdjfy_&amp;pos=3_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_B_PLATFORM_PC-RLOGID=18446744072380350464_&amp;seq=853989567567888384_&amp;curinfoid=29725060107439_&amp;id=28188150367683');">
<div class="pic pr"><img data-src="http://pic1.58cdn.com.cn/p1/small/n_v1bkuyfvmnnytfqyamtqgq.jpg?w=330&amp;h=236&amp;crop=1" alt="" src="http://pic1.58cdn.com.cn/p1/small/n_v1bkuyfvmnnytfqyamtqgq.jpg?w=330&amp;h=236&amp;crop=1" style="display: inline;">
<span class="marklight f12 pa">便宜10万元</span></div>
<p class="room f12 c_999 lh20"> <span class="price">52&nbsp;<b>万元</b></span>&nbsp;&nbsp;&nbsp;&nbsp;3室2厅
</p>
<p class="title f12 c_555 lh20">枫韵润园</p>

</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_tongjiawei_no4')">
<a href="http://xa.58.com/ershoufang/29669170923705x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=txdjfy_&amp;pos=4_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_B_PLATFORM_PC-RLOGID=18446744072380350464_&amp;seq=853989567567888384_&amp;curinfoid=29725060107439_&amp;id=29669170923705');">
<div class="pic pr"><img data-src="http://pic6.58cdn.com.cn/anjuke_58/a2195a6cb0d235537b04e427e3d84d26?w=330&amp;h=236&amp;crop=1" alt="" src="http://pic6.58cdn.com.cn/anjuke_58/a2195a6cb0d235537b04e427e3d84d26?w=330&amp;h=236&amp;crop=1" style="display: inline;">
<span class="marklight f12 pa">多加6万元</span></div>
<p class="room f12 c_999 lh20"> <span class="price">68&nbsp;<b>万元</b></span>&nbsp;&nbsp;&nbsp;&nbsp;3室1厅
</p>
<p class="title f12 c_555 lh20">枫韵润园</p>

</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_tongjiawei_no5')">
<a href="http://xa.58.com/ershoufang/29382199085896x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=txdjfy_&amp;pos=5_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_B_PLATFORM_PC-RLOGID=18446744072380350464_&amp;seq=853989567567888384_&amp;curinfoid=29725060107439_&amp;id=29382199085896');">
<div class="pic pr"><img data-src="http://pic3.58cdn.com.cn/anjuke_58/ca9f5d60afd3994e99760dce66f94b67?w=330&amp;h=236&amp;crop=1" alt="" src="http://pic3.58cdn.com.cn/anjuke_58/ca9f5d60afd3994e99760dce66f94b67?w=330&amp;h=236&amp;crop=1" style="display: inline;">
<span class="marklight f12 pa">便宜5万元</span></div>
<p class="room f12 c_999 lh20"> <span class="price">57&nbsp;<b>万元</b></span>&nbsp;&nbsp;&nbsp;&nbsp;3室2厅
</p>
<p class="title f12 c_555 lh20">枫韵润园</p>

</a>
</li>

</ul>
<i class="closeHouseIcon icon" id="closeHouse"></i></div>
            <!-- 同价位end -->

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
                                    <img data-src="http://pic5.58cdn.com.cn/anjuke_58/af1ea57f7aa29f966468aa1dd0b65285?w=454&amp;h=341&amp;crop=1" src="http://pic5.58cdn.com.cn/anjuke_58/af1ea57f7aa29f966468aa1dd0b65285?w=454&amp;h=341&amp;crop=1" style="display: inline;">
                                </li>
                                                            <li data-index="1">
                                    <img data-src="http://pic1.58cdn.com.cn/anjuke_58/652c00a91b81be424888dd0ab9598337?w=454&amp;h=341&amp;crop=1" src="http://pic1.58cdn.com.cn/anjuke_58/652c00a91b81be424888dd0ab9598337?w=454&amp;h=341&amp;crop=1" style="display: inline;">
                                </li>
                                                            <li class="even" data-index="2">
                                    <img data-src="http://pic3.58cdn.com.cn/anjuke_58/d4713226067c0f6561c8c4f6545bbcf0?w=454&amp;h=341&amp;crop=1" src="http://pic3.58cdn.com.cn/anjuke_58/d4713226067c0f6561c8c4f6545bbcf0?w=454&amp;h=341&amp;crop=1" style="display: inline;">
                                </li>
                                                            <li data-index="3">
                                    <img data-src="http://pic6.58cdn.com.cn/anjuke_58/15b48d5056bd679943f38a30d61544d8?w=454&amp;h=341&amp;crop=1" src="http://pic6.58cdn.com.cn/anjuke_58/15b48d5056bd679943f38a30d61544d8?w=454&amp;h=341&amp;crop=1" style="display: inline;">
                                </li>
                                                            <li class="even" data-index="4">
                                    <img data-src="http://pic2.58cdn.com.cn/anjuke_58/72e828db286aa9114d3bb423370c10aa?w=454&amp;h=341&amp;crop=1" src="http://pic2.58cdn.com.cn/anjuke_58/72e828db286aa9114d3bb423370c10aa?w=454&amp;h=341&amp;crop=1" style="display: inline;">
                                </li>
                                                            <li data-index="5">
                                    <img data-src="http://pic3.58cdn.com.cn/anjuke_58/a2af732e2417512d5cfed01cb0576c89?w=454&amp;h=341&amp;crop=1" src="http://pic3.58cdn.com.cn/anjuke_58/a2af732e2417512d5cfed01cb0576c89?w=454&amp;h=341&amp;crop=1" style="display: inline;">
                                </li>
                                                            <li class="even" data-index="6">
                                    <img data-src="http://pic3.58cdn.com.cn/anjuke_58/2f8b83da8e25c53e9c8a2edcfcbe372c?w=454&amp;h=341&amp;crop=1" src="http://pic3.58cdn.com.cn/anjuke_58/2f8b83da8e25c53e9c8a2edcfcbe372c?w=454&amp;h=341&amp;crop=1" style="display: inline;">
                                </li>
                                                            <li data-index="7">
                                    <img data-src="http://pic6.58cdn.com.cn/anjuke_58/8e798db15f07a7656b00b5a190a25303?w=454&amp;h=341&amp;crop=1" src="http://pic6.58cdn.com.cn/anjuke_58/8e798db15f07a7656b00b5a190a25303?w=454&amp;h=341&amp;crop=1" style="display: inline;">
                                </li>
                                                    </ul>
                        <div class="genaral-pic-desc">
                            <span class="pic-desc-item">房源描述<i class="sanjiaoIcon icon"></i></span>
                            <p class="pic-desc-word">
                                1.价位：62万，黄金地段，2室2厅，明厨明卫，小区仅此一套，比目前市场价低10万左右。<br><br>2.户型：纯南，明厨明卫，户型方正，宽敞大气，无浪费面积，中间楼层，超大阳台，无敌采光<br><br>3.装修：房子精装修，即买即住。<br><br>4.产权：房子产权明晰，交易方式灵活 。<br><br>5.小区：小区于2013年建成，地铁口5分钟，周边配套齐全，出门就是菜市场，医疗、教育1步直达，衣食住用行一站式服务，物业优质的服务，优美的小区环境，给予您家的享受。<br><br>6.看房：看房有钥匙，如需看房，请提前致电预约，玛雅房屋 惠瀛 竭诚为您服务</p>
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
                                    本人主要负责未央周边的二手房买卖，租房业务，为您提供高品质一条龙服务，您的满意是我们工作的动力！！！<br>更多优质房源，点击我的店铺<br><br>玛雅房屋 惠瀛 24小时为您服务<br><br>温馨提示：买房是件大事，找正规中介，专业的经纪人，会让您省时省事省心，更多优质房源请点击我的经纪人头像</p>
                            </div>
                                                            </div>
            </div>
            <!-- 户型 end -->
            <!-- 小区及周边环境 start-->
                            <div class="general-item xiaoqu-wrap" id="xiaoWrap">
                    <h3><em></em>小区周边及环境</h3>
                    <div class="general-item-wrap">
                        <div class="xiaoqu-pic">
                            <a href="http://xa.58.com/xiaoqu/fengyunrunyuan" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu_picture')">
                                <img class="picReal" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png">
                            </a>
                        </div>
                        <div class="xiaoqu-info">
                            <h3 class="xiaoqu-name"><a class="c_999" href="http://xa.58.com/xiaoqu/fengyunrunyuan" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu_name')">枫韵润园</a>
                            </h3>
                            <ul class="xiaoqu-desc">
                                <li>
                                                                            <span class="c_999 mr_25">小区均价</span><span class="c_333 mr_20">6249.0                                            元/㎡</span>
                                                                        <span class="mr_20 f12 up">
                                                                                        环比上月&nbsp;0%                                            &nbsp;<i class="icon"></i></span>
                                                                        </li>
                                <li><span class="c_999 mr_25">所在商圈</span><span class="c_333"><a class="c_333" href="/xiaoqu/489/" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu_quyu')">未央</a>－<a class="c_333" href="/xiaoqu/8430/" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu_shangquan')">经济技术开发区</a></span>
                                </li>
                                                                    <li><span class="c_999 mr_25">物业费</span><span class="c_333">1.20元/平米·月</span>
                                    </li>
                                                                    <li><span class="c_999 mr_25">容积率</span><span class="c_333">0.00</span></li>
                                                                    <li><span class="c_999 mr_25">绿化率</span><span class="c_333">31.00</span></li>
                                                                    <li><span class="c_999 mr_25">在售房源</span><span class="c_333 mr_20"><a href="http://xa.58.com/xiaoqu/fengyunrunyuan/chuzu" class="c_333 td-u" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu_rent')">406                                                套在租</a></span>
                                <span class="c_333"><a href="http://xa.58.com/xiaoqu/fengyunrunyuan/ershoufang" class="c_333 td-u" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu_sell')">75                                        套在售</a></span>
                                    </li>
                                                            </ul>
                            <a class="xiaoqu-detail-btn comBtn" href="http://xa.58.com/xiaoqu/fengyunrunyuan" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_xiaoqu_more')">查看小区详情<i class="icon"></i></a>
                        </div>
                    </div>
                </div>
                        <!-- 小区及周边环境 end -->
            <!--位置 start-->
                            <div class="general-item map-wrap" id="mapWrap">
                    <h3><em></em>位置</h3>
                    <div class="general-item-wrap">
                        <div class="map-menu" id="upfoldMenu">
                            <p class="map-title"><i class="dwIcon icon"></i>周边配置</p>
                            <ul class="map-list" id="mapList">
                                <li data-value="公交" data-key="0" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_ditu_bus')">
                                    <input type="checkbox" name="gj" id="gj"><label for="gj">公交</label>
                                </li>
                                <li data-value="地铁" data-key="1" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_ditu_subway')">
                                    <input type="checkbox" name="dt" id="dt"><label for="dt">地铁</label>
                                </li>
                                <li data-value="购物" data-key="2" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_ditu_shopping')">
                                    <input type="checkbox" name="gw" id="gw"><label for="gw">购物</label>
                                </li>
                                <li data-value="医院" data-key="3" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_ditu_hospital')">
                                    <input type="checkbox" name="yy" id="yy"><label for="yy">医院</label>
                                </li>
                                <li data-value="学校" data-key="4" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_ditu_school')">
                                    <input type="checkbox" name="xx" id="xx"><label for="xx">学校</label>
                                </li>
                                <li data-value="银行" data-key="5" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_ditu_bank')">
                                    <input type="checkbox" name="yh" id="yh"><label for="yh">银行</label>
                                </li>
                                <li data-value="餐饮" data-key="6" onclick="clickLog('from=fcpc_detail_esf_xa_weizhi_ditu_restaurant')">
                                    <input type="checkbox" name="cy" id="cy"><label for="cy">餐饮</label>
                                </li>
                            </ul>
                        </div>
                        <div class="map-section" id="baiduMap" style="overflow: hidden; position: relative; z-index: 0; color: rgb(0, 0, 0); text-align: left; background-color: rgb(243, 241, 236);"><div style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(&quot;http://api0.map.bdimg.com/images/openhand.cur&quot;) 8 8, default;"><div class="BMap_mask" style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; -webkit-user-select: none; width: 927px; height: 387px;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"><div style="position: absolute; white-space: nowrap; border: 1px solid rgb(40, 186, 240); padding: 5px; border-radius: 5px; height: 30px; line-height: 30px; font-size: 14px; z-index: -6867738; -webkit-user-select: none; left: 479px; top: 164px; background-color: rgb(255, 255, 255);"><span style="color: rgb(0, 0, 0);">枫韵润园</span><div style="position: absolute; width: 20px; height: 20px; top: 5px; left: -15px; margin-left: -10px; overflow: hidden; background: url(&quot;http://img.58cdn.com.cn/images/5_0/xq/markerred.gif&quot;) no-repeat;"></div></div><label class="BMapLabel" unselectable="on" style="position: absolute; display: none; cursor: inherit; border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190); background-color: rgb(190, 190, 190);">shadow</label></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><svg version="1.1" type="system" x="1927px" y="1387px" viewBox="-500 -500 1927 1387" style="position: absolute; top: -500px; left: -500px; width: 1927px; height: 1387px;"><path stroke-linejoin="round" stroke-linecap="round" fill-rule="evenodd" stroke="#3a6bdb" stroke-width="0.5" stroke-dasharray="none" fill="transparent" stroke-opacity="0.1" fill-opacity="0.1" style="cursor: pointer; -webkit-user-select: none;" d="M 464 5 L 434 7 405 14 378 26 352 41 330 60 310 83 295 108 284 135 277 164 274 194 277 223 284 252 295 279 310 304 330 327 352 346 378 361 405 373 434 379 464 382 493 379 522 373 549 361 575 346 597 327 617 304 632 279 643 252 650 223 653 194 650 164 643 135 632 108 617 83 597 60 575 41 549 26 522 14 493 7 464 5"></path></svg></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;"><div style="position: absolute; overflow: visible; z-index: -100; left: 463px; top: 194px; display: block; transform: translate3d(0px, 0px, 0px);"><img src="http://online4.map.bdimg.com/tile/?qt=tile&amp;x=1480&amp;y=494&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: -160px; top: -156px; max-width: none; opacity: 1;"><img src="http://online3.map.bdimg.com/tile/?qt=tile&amp;x=1479&amp;y=494&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: -416px; top: -156px; max-width: none; opacity: 1;"><img src="http://online3.map.bdimg.com/tile/?qt=tile&amp;x=1480&amp;y=493&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: -160px; top: 100px; max-width: none; opacity: 1;"><img src="http://online0.map.bdimg.com/tile/?qt=tile&amp;x=1481&amp;y=494&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: 96px; top: -156px; max-width: none; opacity: 1;"><img src="http://online0.map.bdimg.com/tile/?qt=tile&amp;x=1480&amp;y=495&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: -160px; top: -412px; max-width: none; opacity: 1;"><img src="http://online4.map.bdimg.com/tile/?qt=tile&amp;x=1481&amp;y=493&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: 96px; top: 100px; max-width: none; opacity: 1;"><img src="http://online4.map.bdimg.com/tile/?qt=tile&amp;x=1479&amp;y=495&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: -416px; top: -412px; max-width: none; opacity: 1;"><img src="http://online2.map.bdimg.com/tile/?qt=tile&amp;x=1478&amp;y=494&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: -672px; top: -156px; max-width: none; opacity: 1;"><img src="http://online2.map.bdimg.com/tile/?qt=tile&amp;x=1479&amp;y=493&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: -416px; top: 100px; max-width: none; opacity: 1;"><img src="http://online1.map.bdimg.com/tile/?qt=tile&amp;x=1482&amp;y=494&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: 352px; top: -156px; max-width: none; opacity: 1;"><img src="http://online1.map.bdimg.com/tile/?qt=tile&amp;x=1481&amp;y=495&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: 96px; top: -412px; max-width: none; opacity: 1;"><img src="http://online1.map.bdimg.com/tile/?qt=tile&amp;x=1478&amp;y=493&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: -672px; top: 100px; max-width: none; opacity: 1;"><img src="http://online0.map.bdimg.com/tile/?qt=tile&amp;x=1482&amp;y=493&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: 352px; top: 100px; max-width: none; opacity: 1;"><img src="http://online3.map.bdimg.com/tile/?qt=tile&amp;x=1478&amp;y=495&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: -672px; top: -412px; max-width: none; opacity: 1;"><img src="http://online2.map.bdimg.com/tile/?qt=tile&amp;x=1482&amp;y=495&amp;z=13&amp;styles=pl&amp;scaler=1&amp;udt=20170408" style="position: absolute; border: none; width: 256px; height: 256px; left: 352px; top: -412px; max-width: none; opacity: 1;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none;"><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 0; display: none;"></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 10; display: none;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div></div><div class="pano_close" title="退出全景" style="z-index: 1201; display: none;"></div><a class="pano_pc_indoor_exit" title="退出室内景" style="z-index: 1201; display: none;"><span style="float:right;margin-right:12px;">出口</span></a><div class=" anchorBL" style="height: 32px; position: absolute; z-index: 30; bottom: 20px; right: auto; top: auto; left: 1px;"><a title="到百度地图查看此区域" target="_blank" href="http://map.baidu.com/?sr=1" style="outline: none;"><img style="border:none;width:77px;height:32px" src="http://api0.map.bdimg.com/images/copyright_logo.png"></a></div><div id="zoomer" style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:url(http://api0.map.bdimg.com/images/openhand.cur) 8 8,default"><div class="BMap_zoomer" style="top:0;left:0;"></div><div class="BMap_zoomer" style="top:0;right:0;"></div><div class="BMap_zoomer" style="bottom:0;left:0;"></div><div class="BMap_zoomer" style="bottom:0;right:0;"></div></div><div unselectable="on" class=" BMap_scaleCtrl BMap_noprint anchorTL" style="bottom: auto; right: auto; top: 18px; left: 81px; width: 81px; position: absolute; z-index: 10;"><div class="BMap_scaleTxt" unselectable="on" style="color: black; background-color: transparent;">2&nbsp;公里</div><div class="BMap_scaleBar BMap_scaleHBar" style="background-color: black;"><img style="border:none" src="http://api0.map.bdimg.com/images/mapctrls.png"></div><div class="BMap_scaleBar BMap_scaleLBar" style="background-color: black;"><img style="border:none" src="http://api0.map.bdimg.com/images/mapctrls.png"></div><div class="BMap_scaleBar BMap_scaleRBar" style="background-color: black;"><img style="border:none" src="http://api0.map.bdimg.com/images/mapctrls.png"></div></div><div unselectable="on" class=" BMap_stdMpCtrl BMap_stdMpType0 BMap_noprint anchorTL" style="width: 62px; height: 192px; bottom: auto; right: auto; top: 10px; left: 10px; position: absolute; z-index: 1100;"><div class="BMap_stdMpPan"><div class="BMap_button BMap_panN" title="向上平移"></div><div class="BMap_button BMap_panW" title="向左平移"></div><div class="BMap_button BMap_panE" title="向右平移"></div><div class="BMap_button BMap_panS" title="向下平移"></div><div class="BMap_stdMpPanBg BMap_smcbg"></div></div><div class="BMap_stdMpZoom" style="height: 147px; width: 62px;"><div class="BMap_button BMap_stdMpZoomIn" title="放大一级"><div class="BMap_smcbg"></div></div><div class="BMap_button BMap_stdMpZoomOut" title="缩小一级" style="top: 126px;"><div class="BMap_smcbg"></div></div><div class="BMap_stdMpSlider" style="height: 108px;"><div class="BMap_stdMpSliderBgTop" style="height: 108px;"><div class="BMap_smcbg"></div></div><div class="BMap_stdMpSliderBgBot" style="top: 37px; height: 75px;"></div><div class="BMap_stdMpSliderMask" title="放置到此级别"></div><div class="BMap_stdMpSliderBar" title="拖动缩放" style="cursor: url(&quot;http://api0.map.bdimg.com/images/openhand.cur&quot;) 8 8, default; top: 37px;"><div class="BMap_smcbg"></div></div></div><div class="BMap_zlHolder"><div class="BMap_zlSt"><div class="BMap_smcbg"></div></div><div class="BMap_zlCity"><div class="BMap_smcbg"></div></div><div class="BMap_zlProv"><div class="BMap_smcbg"></div></div><div class="BMap_zlCountry"><div class="BMap_smcbg"></div></div></div></div><div class="BMap_stdMpGeolocation" style="position: initial; display: none; margin-top: 43px; margin-left: 10px;"><div class="BMap_geolocationContainer" style="position: initial; width: 24px; height: 24px; overflow: hidden; margin: 0px; box-sizing: border-box;"><div class="BMap_geolocationIconBackground" style="width: 24px; height: 24px; background-image: url(http://api0.map.bdimg.com/images/navigation-control/geolocation-control/pc/bg-20x20.png); background-size: 20px 20px; background-position: 3px 3px; background-repeat: no-repeat;"><div class="BMap_geolocationIcon" style="position: initial; width: 24px; height: 24px; cursor: pointer; background-image: url('http://api0.map.bdimg.com/images/navigation-control/geolocation-control/pc/success-10x10.png'); background-size: 10px 10px; background-repeat: no-repeat; background-position: center;"></div></div></div></div></div><div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL" style="cursor: default; white-space: nowrap; color: black; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: 15px; font-family: arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 2px; position: absolute; z-index: 10; background: none;"><span _cid="1" style="display: inline;"><span style="background: rgba(255, 255, 255, 0.701961);padding: 0px 1px;line-height: 16px;display: inline;height: 16px;">©&nbsp;2017 Baidu - GS(2015)2650号&nbsp;- Data © 长地万方</span></span></div></div>
                    </div>
                </div>
                        <!-- 位置end -->
            <!-- 小结 start -->
                        <!-- 小结 end -->
            <div id="guessYouLike" class="guess-you-like recommend-house"><p class="recommend-house-nav f18 c_000">猜你喜欢</p>
<ul class="recommend-house-list">


<li class="first" onclick="clickLog('from=fcpc_detail_esf_xa_cainixh_no1')">
<a href="http://xa.58.com/ershoufang/29713546020171x.shtml" target="_blank" onclick="">
<div class="pic pr"><img data-src="http://pic5.58cdn.com.cn/anjuke_58/1047b1e25136569b6431eabec7c5a6d5?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png">
<span class="marklight f12 pa">便宜5万元</span>
</div>
<p class="room f12 c_999"><span class="price">56.8&nbsp;<b>万元</b></span>&nbsp;&nbsp;2室1厅&nbsp;&nbsp;108m²
</p>
<p class="title f16 c_555 lh20">凯跃汇景</p>

</a>
</li>


<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_cainixh_no2')">
<a href="http://xa.58.com/ershoufang/29727663050946x.shtml" target="_blank" onclick="">
<div class="pic pr"><img data-src="http://pic2.58.com/n/images/list/noimg.gif?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png">
<span class="marklight f12 pa">便宜14万元</span>
</div>
<p class="room f12 c_999"><span class="price">48&nbsp;<b>万元</b></span>&nbsp;&nbsp;2室1厅&nbsp;&nbsp;86m²
</p>
<p class="title f16 c_555 lh20">鼎新花园</p>

</a>
</li>


<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_cainixh_no3')">
<a href="http://xa.58.com/ershoufang/29415911109838x.shtml" target="_blank" onclick="">
<div class="pic pr"><img data-src="http://pic4.58cdn.com.cn/anjuke_58/ba523b53f533122119463cb18bea89fe?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png">
<span class="marklight f12 pa">多加6万元</span>
</div>
<p class="room f12 c_999"><span class="price">68&nbsp;<b>万元</b></span>&nbsp;&nbsp;2室2厅&nbsp;&nbsp;89m²
</p>
<p class="title f16 c_555 lh20">白桦林居</p>

</a>
</li>


<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_cainixh_no4')">
<a href="http://xa.58.com/ershoufang/27849213601343x.shtml" target="_blank" onclick="">
<div class="pic pr"><img data-src="http://pic2.58cdn.com.cn/p1/small/n_v1bl2lwwlp6uivqb5cnana.jpg?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png">
<span class="marklight f12 pa">多加3万元</span>
</div>
<p class="room f12 c_999"><span class="price">65&nbsp;<b>万元</b></span>&nbsp;&nbsp;2室2厅&nbsp;&nbsp;91m²
</p>
<p class="title f16 c_555 lh20">美都香域</p>

</a>
</li>


</ul></div>
            <!-- 看了又看start -->
            <div id="seeAgainSee" class="see-again-see recommend-house"><p class="recommend-house-nav f18 c_000">看了又看</p>
<ul class="recommend-house-list">


<li class="first" onclick="clickLog('from=fcpc_detail_esf_xa_kanleyk_no1')">
<a href="http://xa.58.com/ershoufang/28974899928750x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=sqtj_&amp;pos=1_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=853989567618351104_&amp;curinfoid=29725060107439_&amp;id=28974899928750');">
<div class="pic pr"><img data-src="http://pic7.58cdn.com.cn/anjuke_58/1fe6de9708a9fb3fbcc262bbb2c93155?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"><span class="marklight f12 pa">

<b class="f18">58</b>&nbsp;万</span></div>
<p class="title f16 c_555 lh20">旭景兴园</p>
<p class="room f12 c_999 lh20">2室2厅&nbsp;/&nbsp; 93m²</p>
</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_kanleyk_no2')">
<a href="http://xa.58.com/ershoufang/29714213821748x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=sqtj_&amp;pos=2_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=853989567618351104_&amp;curinfoid=29725060107439_&amp;id=29714213821748');">
<div class="pic pr"><img data-src="http://pic4.58cdn.com.cn/anjuke_58/71dffde32aa932d260159a6d5c2e1450?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"><span class="marklight f12 pa">

<b class="f18">31.2</b>&nbsp;万</span></div>
<p class="title f16 c_555 lh20">香格里拉尚城</p>
<p class="room f12 c_999 lh20">2室2厅&nbsp;/&nbsp; 90m²</p>
</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_kanleyk_no3')">
<a href="http://xa.58.com/ershoufang/29637613585600x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=sqtj_&amp;pos=3_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=853989567618351104_&amp;curinfoid=29725060107439_&amp;id=29637613585600');">
<div class="pic pr"><img data-src="http://pic1.58cdn.com.cn/anjuke_58/3f35e86dae9b95eb445bc53014fc1c77?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"><span class="marklight f12 pa">

<b class="f18">64</b>&nbsp;万</span></div>
<p class="title f16 c_555 lh20">富丽园</p>
<p class="room f12 c_999 lh20">2室2厅&nbsp;/&nbsp; 98m²</p>
</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_kanleyk_no4')">
<a href="http://xa.58.com/ershoufang/29647906480947x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=sqtj_&amp;pos=4_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=853989567618351104_&amp;curinfoid=29725060107439_&amp;id=29647906480947');">
<div class="pic pr"><img data-src="http://pic1.58cdn.com.cn/anjuke_58/a7294a86dfd4c90a0b713fbdd1ee4bc8?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"><span class="marklight f12 pa">

<b class="f18">78</b>&nbsp;万</span></div>
<p class="title f16 c_555 lh20">汇通太古城</p>
<p class="room f12 c_999 lh20">2室2厅&nbsp;/&nbsp; 89m²</p>
</a>
</li>

<li class="first" onclick="clickLog('from=fcpc_detail_esf_xa_kanleyk_no5')">
<a href="http://xa.58.com/ershoufang/27755907523002x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=sqtj_&amp;pos=5_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=853989567618351104_&amp;curinfoid=29725060107439_&amp;id=27755907523002');">
<div class="pic pr"><img data-src="http://pic8.58cdn.com.cn/anjuke_58/bc794ec2b0dd36b08c38cb733b136fc0?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"><span class="marklight f12 pa">

<b class="f18">43</b>&nbsp;万</span></div>
<p class="title f16 c_555 lh20">奥林匹克花园</p>
<p class="room f12 c_999 lh20">2室2厅&nbsp;/&nbsp; 77m²</p>
</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_kanleyk_no6')">
<a href="http://xa.58.com/ershoufang/27911202431304x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=sqtj_&amp;pos=6_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=853989567618351104_&amp;curinfoid=29725060107439_&amp;id=27911202431304');">
<div class="pic pr"><img data-src="http://pic2.58.com/n/images/list/noimg.gif?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"><span class="marklight f12 pa">

<b class="f18">46</b>&nbsp;万</span></div>
<p class="title f16 c_555 lh20">奥林匹克花园</p>
<p class="room f12 c_999 lh20">2室2厅&nbsp;/&nbsp; 86m²</p>
</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_kanleyk_no7')">
<a href="http://xa.58.com/ershoufang/29547527578688x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=sqtj_&amp;pos=7_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=853989567618351104_&amp;curinfoid=29725060107439_&amp;id=29547527578688');">
<div class="pic pr"><img data-src="http://pic1.58cdn.com.cn/anjuke_58/291f3ce8deef610a3fd96dc2c3385833?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"><span class="marklight f12 pa">

<b class="f18">51</b>&nbsp;万</span></div>
<p class="title f16 c_555 lh20">奥林匹克花园</p>
<p class="room f12 c_999 lh20">2室2厅&nbsp;/&nbsp; 92m²</p>
</a>
</li>

<li class="" onclick="clickLog('from=fcpc_detail_esf_xa_kanleyk_no8')">
<a href="http://xa.58.com/ershoufang/29316148376271x.shtml" target="_blank" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=sqtj_&amp;pos=8_&amp;alg=IA=CF1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=853989567618351104_&amp;curinfoid=29725060107439_&amp;id=29316148376271');">
<div class="pic pr"><img data-src="http://pic3.58cdn.com.cn/anjuke_58/1f5fe3f651f14fdce7cc892624b00a33?w=444&amp;h=316&amp;crop=1" alt="" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"><span class="marklight f12 pa">

<b class="f18">43</b>&nbsp;万</span></div>
<p class="title f16 c_555 lh20">西铁大明宫小区</p>
<p class="room f12 c_999 lh20">2室2厅&nbsp;/&nbsp; 88m²</p>
</a>
</li>


</ul>
<a class="comBtn see-more-houselist" href="http://xa.58.com/jingjijskfq/ershoufang/" target="_blank" onclick="clickLog('from=fcpc_detail_esf_bj_kanleyk_more')">更多看了又看<i class="icon rightIcon"></i></a></div>
            <!-- 看了又看end -->
            <!-- 同商圈热门 start -->
            <div id="hotHouse"><table class="same-hot-rank">
<thead>
<tr>
<th class="title">同商圈热门房源</th>
<th>户型</th>
<th>面积</th>
<th>首付</th>
<th>月供</th>
<th>发布价</th>
<th>热度</th>
</tr>
</thead>
<tbody>

<tr onclick="clickLog('from=fcpc_detail_esf_xa_remen_no1')">
<td class="first"><a href="http://xa.58.com/ershoufang/29668783599547x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=1_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29668783599547');" target="_blank" rel="nofollow">
<img data-src="http://pic5.58cdn.com.cn/p1/small/n_v1bl2lwtj733vfrtxj25ha.jpg?w=292&amp;h=208&amp;crop=1" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"></a>
</td>
<td><a href="http://xa.58.com/ershoufang/29668783599547x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=1_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29668783599547');" target="_blank " rel="nofollow">2室2厅</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29668783599547x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=1_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29668783599547');" target="_blank " rel="nofollow">86m²</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29668783599547x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=1_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29668783599547');" target="_blank " rel="nofollow">
-</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29668783599547x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=1_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29668783599547');" target="_blank " rel="nofollow">-</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29668783599547x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=1_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29668783599547');" target="_blank " rel="nofollow">66万元</a>
</td>
<td class="heatrange">
<a href="http://xa.58.com/ershoufang/29668783599547x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=1_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29668783599547');" target="_blank " rel="nofollow">


<i class="icon"></i>


<i class="icon"></i>


<i class="icon"></i>


<i class="icon"></i>


</a>
</td>
</tr>

<tr onclick="clickLog('from=fcpc_detail_esf_xa_remen_no2')">
<td class="first"><a href="http://xa.58.com/ershoufang/29663740342735x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=2_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29663740342735');" target="_blank" rel="nofollow">
<img data-src="http://pic6.58cdn.com.cn/mobile/small/n_v1bkuymcz7itvfqhnqgnuq.jpg?w=292&amp;h=208&amp;crop=1" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"></a>
</td>
<td><a href="http://xa.58.com/ershoufang/29663740342735x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=2_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29663740342735');" target="_blank " rel="nofollow">2室2厅</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29663740342735x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=2_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29663740342735');" target="_blank " rel="nofollow">91m²</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29663740342735x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=2_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29663740342735');" target="_blank " rel="nofollow">
-</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29663740342735x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=2_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29663740342735');" target="_blank " rel="nofollow">-</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29663740342735x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=2_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29663740342735');" target="_blank " rel="nofollow">63万元</a>
</td>
<td class="heatrange">
<a href="http://xa.58.com/ershoufang/29663740342735x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=2_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29663740342735');" target="_blank " rel="nofollow">


<i class="icon"></i>


<i class="icon"></i>


<i class="icon"></i>


<i class="icon"></i>


</a>
</td>
</tr>

<tr onclick="clickLog('from=fcpc_detail_esf_xa_remen_no3')">
<td class="first"><a href="http://xa.58.com/ershoufang/29724754224968x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=3_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29724754224968');" target="_blank" rel="nofollow">
<img data-src="http://pic1.58cdn.com.cn/anjuke_58/0b540a4a3f276bb99d0ebae9a5d462a6?w=292&amp;h=208&amp;crop=1" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"></a>
</td>
<td><a href="http://xa.58.com/ershoufang/29724754224968x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=3_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29724754224968');" target="_blank " rel="nofollow">2室2厅</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29724754224968x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=3_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29724754224968');" target="_blank " rel="nofollow">90m²</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29724754224968x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=3_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29724754224968');" target="_blank " rel="nofollow">
18.00万</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29724754224968x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=3_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29724754224968');" target="_blank " rel="nofollow">-</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29724754224968x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=3_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29724754224968');" target="_blank " rel="nofollow">60万元</a>
</td>
<td class="heatrange">
<a href="http://xa.58.com/ershoufang/29724754224968x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=3_&amp;alg=IA=HOT2.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=2_&amp;id=29724754224968');" target="_blank " rel="nofollow">


<i class="icon"></i>


<i class="icon"></i>


<i class="icon"></i>


<i class="icon"></i>


</a>
</td>
</tr>

<tr onclick="clickLog('from=fcpc_detail_esf_xa_remen_no4')">
<td class="first"><a href="http://xa.58.com/ershoufang/29749308466219x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=4_&amp;alg=IA=CONTENT1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=4_&amp;id=29749308466219');" target="_blank" rel="nofollow">
<img data-src="http://pic4.58cdn.com.cn/anjuke_58/4a2e88b47a12281227012bacc58420a0?w=292&amp;h=208&amp;crop=1" src="http://img.58cdn.com.cn/ui8/house/detail/images/newdefaultPic@2x.png"></a>
</td>
<td><a href="http://xa.58.com/ershoufang/29749308466219x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=4_&amp;alg=IA=CONTENT1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=4_&amp;id=29749308466219');" target="_blank " rel="nofollow">2室2厅</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29749308466219x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=4_&amp;alg=IA=CONTENT1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=4_&amp;id=29749308466219');" target="_blank " rel="nofollow">90m²</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29749308466219x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=4_&amp;alg=IA=CONTENT1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=4_&amp;id=29749308466219');" target="_blank " rel="nofollow">
19.00万</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29749308466219x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=4_&amp;alg=IA=CONTENT1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=4_&amp;id=29749308466219');" target="_blank " rel="nofollow">-</a>
</td>
<td><a href="http://xa.58.com/ershoufang/29749308466219x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=4_&amp;alg=IA=CONTENT1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=4_&amp;id=29749308466219');" target="_blank " rel="nofollow">63万元</a>
</td>
<td class="heatrange">
<a href="http://xa.58.com/ershoufang/29749308466219x.shtml" onclick="clickLog('from=fc_ershoufang_vppvhouse_&amp;model=qyrlb_&amp;pos=4_&amp;alg=IA=CONTENT1.0-IP=G1.0-PF=WBERSHOUFANG_C_PLATFORM_PC_&amp;seq=5DF5D80798CA0E69ABE237CE53018C4D_&amp;curinfoid=29725060107439_&amp;scene=detail_&amp;recallno=70_&amp;rankno=22_&amp;ruleno=1_&amp;viewno=1_&amp;recalldetail=4_&amp;id=29749308466219');" target="_blank " rel="nofollow">


<i class="icon"></i>


<i class="icon"></i>


<i class="icon"></i>


<i class="icon"></i>


</a>
</td>
</tr>

<tr class="more-hot-house">
<td colspan="7"><a class="comBtn" href="http://xa.58.com/jingjijskfq/ershoufang/" target="_blank" onclick="clickLog('from=fcpc_detail_esf_xa_remen_more')">更多热门房源<i class="icon"></i></a></td>
</tr>
</tbody>
</table></div>
            <!-- 同商圈热门 end -->
            <!-- 购房贷款start -->
            <div class="loan-purshasing-house ">
                <p class="loan-nav ">购房贷款</p>
                <ul class="loan-list ">
                    <li class="first">
                        <div class="loan-logo-1 loan-logo"></div>
                        <p class="loan-title ">首套置业</p>
                        <p class="loan-desc-1 ">银行按揭贷款服务 </p>
                        <p class="loan-desc-2 "> 房屋评估价65成&nbsp;/ 30年&nbsp;/&nbsp;基准利率<em>8.5</em>折起</p>
                        <a href="javascript:;" class="loan-apply jr-modal-apply-trigger" data-daikuanyt="按揭" onclick="clickLog('from=fcpc_detail_esf_xa_daikuan_no1')">快速申请</a>
                    </li>
                    <li>
                        <div class="loan-logo-2 loan-logo"></div>
                        <p class="loan-title ">凑首付</p>
                        <p class="loan-desc-1 ">无抵押&nbsp;零担保</p>
                        <p class="loan-desc-2 "> 最高50万&nbsp;／&nbsp;1-3年&nbsp;/&nbsp;月利率低至<em>0.9%</em></p>
                        <a href="javascript:;" class="loan-apply jr-modal-apply-trigger" data-daikuanyt="凑首付" onclick="clickLog('from=fcpc_detail_esf_xa_daikuan_no2')">快速申请</a>
                    </li>
                    <li>
                        <div class="loan-logo-3 loan-logo"></div>
                        <p class="loan-title ">装修贷款</p>
                        <p class="loan-desc-1 ">银行按揭贷款服务</p>
                        <p class="loan-desc-2 "> 最高50万&nbsp;/&nbsp;1-2年&nbsp;/&nbsp;月利率低至<em>免息</em></p>
                        <a href="javascript:;" class="loan-apply jr-modal-apply-trigger" data-daikuanyt="装修" onclick="clickLog('from=fcpc_detail_esf_xa_daikuan_no3')">快速申请</a>
                    </li>
                </ul>
            </div>
            <!-- 底部房源推广 功能加-->
            <div id="fytgListBottom"></div>
            <!-- 谷歌广告start 功能加-->
            
        </div>
			
	</div>

<!-- *********************底部********************** -->       
	<%@ include file="bottom.jsp" %>
  </body>
</html>
