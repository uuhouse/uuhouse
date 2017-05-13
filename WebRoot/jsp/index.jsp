<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags"  prefix="s"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>优优二手房</title>
<link href="./css/common.css" rel="stylesheet" type="text/css"/>
<link href="./css/home.css" rel="stylesheet" type="text/css"/>
<link href="./css/post.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css"/>


<script type="text/javascript" src="./js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="./js/area.js"></script>
</head>
<body>
<!-- *********************顶部********************** -->	

  <%@ include file="top.jsp" %>
	
<!-- ********************中间内容********************* -->
<div class="container home">
<div id="header">
<!--header e-->
        <!--search box s-->
<div class="h-search" >
   <div class="search clearfix">
      <div class="clearfix">
		 <div class="s-search" id="listSearch" >
		  <form action="" method="post" onsubmit="return false;">
		    <input name="search_keyword" value="" type="text" autocomplete="off" id="search_keyword" data-role="input" class="search-broad " placeholder="想找什么？输入关键字试试" />
		    <input data-role="btn" name="search" id="search_button" type="submit" class="sbtn-s" value="搜索" />
		  </form>
		  </div>
		  
		   <div class="edit-eara">
		        <a rel="nofollow" class="btn-post" href="${pageContext.request.contextPath}/user_publish.action" title="免费发布信息" target="_blank"><span><em class="edit-ico"></em>免费发布信息</span></a>
		        <a rel="nofollow" class="btn-del" href="${pageContext.request.contextPath}/user_publishlist.action" title="修改/删除信息" target="_blank"><span class="del-ico">修改/删除信息</span></a>
		   </div>    
		</div>
		
		<div class="search-place" data-role="relatedWord"></div>
	</div>
</div>

<!--search box e-->
        <div class="se-city">
            <dl class="hot-city clearfix">
                <dt>热门城市：</dt>
                <dd>
                 <a href="">北京</a>
                 <a href="">上海</a>
                 <a href="">郑州</a>
                 <a href="">沈阳</a>
                 <a href="">深圳</a>
                 <a href="">成都</a>
                 <a href="">重庆</a>
                 <a href="">青岛</a>
                 <a href="">武汉</a>
                 <a href="">天津</a>
                 <a href="">济南</a>
                 <a href="">南京</a>
                 <a href="">广州</a>
                 <a href="">西安</a>
                 <a href="">合肥</a>
                 <a href="">石家庄</a>
                 <a href="">大连</a>
                 <a href="">杭州</a>
                 <a href="">苏州</a>
                 </dd>
            </dl>    
            <dl class="all-city clearfix">
                <dt>地区搜索：</dt>
                <dd>
                    <form id="cityform" name="cityform" action = "house_findByArea.action" >
                    	<input type="text" id="village1" name="village" style="display:none"/>
						<input type="text" id="streets1" name="streets" style="display:none"/>
	                    <div class="selectordef" name="localArea" id="localArea1" style="z-index: 1485; width: 150px;" tabindex="15" nameid="483">
							<div class="title">
								<span class="seled" id="select_area">请选择</span>
								<div class="arrow"></div>
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
								<div class="arrow"></div>
							</div>
							<div class="optiondef" id="diduanxuanxiang" style="width: 147px;display:none">
								<ul>
									<li>请选择地段</li>
								</ul>
							</div>
						
						</div>
						<div class="">
			              	<input class="btn-confirm" type="submit" id="dizhi" value="提交" />
			            </div>
					 </form>
                </dd>
            </dl>
        </div>
        
        <div class="listBox" id = "tijiao222">
            <div class="list-top clearfix">
                <span class="list-tab">热门二手房</span>
            </div>
            <ul class="list-style1">
             	 <s:iterator var="h" value="hList">
					<li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="${pageContext.request.contextPath}/house_findByHid.action?hid=<s:property value="#h.hid" />" target="_blank" class="img-box">
                        	<img width="160" height="120" alt="<s:property value="#h.title" />" src="${pageContext.request.contextPath}/<s:property value="#h.himage"/>" /></a>
                    </div>
                    
                    <div class="list-mod2">
                        <div class="info-title">
                        	<a href="${pageContext.request.contextPath}/house_findByHid.action?hid=<s:property value="#h.hid" />" target="_blank" class="list-info-title"><s:property value="#h.title" /></a>
                        	<span class="fc-red"></span>
                            <span class="ico-box clearfix">
                                   <span class="ico-extension"></span>
                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;">
	                            <span class="imjs-user-online" style="">
		                            <span class="webim-detail-online">
		                            	<a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a>
		                            </span>
	                            </span>
                            </span>
                     </div>
                      
                       <div class="list-word">
                           <span class="sp-general"><s:property value="#h.areas" /></span>
                           <span class="sp-coordinate"><i class="ico-coordinate"></i><s:property value="#h.village" /> - <s:property value="#h.stretch" />                                                                                                                                      </span>
                       </div>
                       
                       <div class="lbl-box clearfix">
                               <span class="lbls ico-lbl1"><s:property value="#h.htype" /> </span>
                       </div>
                                             
                       <p class="list-word fc-999"><span class="js-huxing"><s:property value="#h.layout" /></span>
                       	<i class="cut-line"></i><s:property value="#h.floor" /> 
                       	<i class="cut-line"></i><s:property value="#h.htime" /> 
                       	<i class="cut-line"></i><s:property value="#h.identify" /> 
                       	<i class="cut-line"></i><s:date name="#h.hdate" format="yyyy-MM-dd" /> 
                       </p>
                   </div>
                    
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                       		 <em class="sale-price js-price"><s:property value="#h.countprice" /></em> 
                      	</p>
                        <p class="list-part"><span class="js-area"><s:property value="#h.area" /></span>  (<s:property value="#h.untiprice"/>)
                        </p>              
                    </div>
                </li> 
				</s:iterator>	
				
				
				
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2732040299x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="西城马连道三义里 纯南向2居" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwkgu3xzfqf7zrvjq_120-100_9-0.jpg">
                            <span class="ico-number"><em><i class="number">7</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2732040299x.htm" target="_blank" class="list-info-title">西城马连道三义里 纯南向2居</a><span class="fc-red"></span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">三义里</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>广安门                                                         - 马连道北街                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">电梯房</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室1厅1卫</span><i class="cut-line">/</i>5/5层<i class="cut-line">/</i>中等装修<i class="cut-line">/</i>南向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">510</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">51㎡</span>
                            (100000元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2640478656x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="丰台首科花园 9号六里桥东站 莲花池公园 丽泽商务圈" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwkpl5xkvrau76jyq_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">10</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2640478656x.htm" target="_blank" class="list-info-title">丰台首科花园 9号六里桥东站 莲花池公园 丽泽商务圈</a><span class="fc-red"></span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">首科花园</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>六里桥                                                         - 北京西站南路                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">电梯房</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">3室2厅2卫</span><i class="cut-line">/</i>9/14层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>东西向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">800</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">109㎡</span>
                            (73394元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2640606090x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="太平桥小区 经典田字格 紧邻莲花池公园 丽泽商务圈" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwxsjddpvqexkfbgq_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">8</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2640606090x.htm" target="_blank" class="list-info-title">太平桥小区 经典田字格 紧邻莲花池公园 丽泽商务圈</a><span class="fc-red"></span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">太平桥小区</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>六里桥                                                         - 北京西站南路                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">电梯房</span>
                                                        <span class="lbls ico-lbl2">南北通透</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">3室1厅1卫</span><i class="cut-line">/</i>5/6层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">570</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">79㎡</span>
                            (72151元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2640770487x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="太平桥东里 经典3居 紧邻湾子和六里桥东站 莲花池公园" src="http://scs.ganjistatic1.com/gjfsqq/v1bj3gzscb33zfq3ekefra_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">9</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2640770487x.htm" target="_blank" class="list-info-title">太平桥东里 经典3居 紧邻湾子和六里桥东站 莲花池公园</a><span class="fc-red"></span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">太平桥东里小区</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>西客站                                                         - 北京西站南路                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">电梯房</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">3室1厅1卫</span><i class="cut-line">/</i>9/21层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>东西向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">530</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">77㎡</span>
                            (68831元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2625358569x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="南北联排使用权急售" src="http://scs.ganjistatic1.com/gjfsqq/v1bj3gzr6oz7xfrk4wznia_95-75_7-5.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">8</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2625358569x.htm" target="_blank" class="list-info-title">南北联排使用权急售</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                                        
                                     <span class="ico-stick-red"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">溪水园小区(近骑士公园)(近天宫院地铁)</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>                                                                                     </span>
                        </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">6室2厅2卫</span><i class="cut-line">/</i>1/2层<i class="cut-line">/</i>南向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">200</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">205㎡</span>
                            (9756元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2620174015x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="102国道南侧紧邻永旺梦乐城 正规三居 单价2万3" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwxql7trfqwaehz4a_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">6</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2620174015x.htm" target="_blank" class="list-info-title">102国道南侧紧邻永旺梦乐城 正规三居 单价2万3</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                                        
                                     <span class="ico-stick-red"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">雷捷时代广场</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>                                                         - 燕郊国家经济技术开发区102国...                                                                                      </span>
                        </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">3室2厅1卫</span><i class="cut-line">/</i>12/28层<i class="cut-line">/</i>豪华装修<i class="cut-line">/</i>北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">190</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">82㎡</span>
                            (23170元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2731882100x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="繁华地段!恒安小区两居室!精装修!" src="http://scs.ganjistatic1.com/gjfsqq/v1bj3gzsgstl6vqiwrrmwa_90-75c_6-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">6</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2731882100x.htm" target="_blank" class="list-info-title">繁华地段!恒安小区两居室!精装修!</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                                        
                                     <span class="ico-stick-red"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">延庆县恒安小区</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>延庆城区                                                         - 广兴街                                                                                      </span>
                        </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室1厅1卫</span><i class="cut-line">/</i>5/6层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">225</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">84㎡</span>
                            (26785元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2451257343x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="保利把边下叠， 豪装！南花园100平仅契税6万三室南向" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwkohpfbvrkefdeva_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">12</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2451257343x.htm" target="_blank" class="list-info-title">保利把边下叠， 豪装！南花园100平仅契税6万三室南向</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">保利垄上</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>小汤山                                                         - 小汤山镇(北六环61出口西北侧...                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">豪华装修</span>
                                                        <span class="lbls ico-lbl2">南北通透</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">4室2厅3卫</span><i class="cut-line">/</i>1/2层<i class="cut-line">/</i>豪华装修<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">930</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">227㎡</span>
                            (40969元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2626290925x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="秦皇岛白鹭岛，海天一线，现房，您的专属度假养生之地" src="http://scs.ganjistatic1.com/gjfsqq/v1bj3gzr6omdufrui3djpq_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">3</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2626290925x.htm" target="_blank" class="list-info-title">秦皇岛白鹭岛，海天一线，现房，您的专属度假养生之地</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">白鹭岛</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>其他                                                         - 山海区龙海大道乐岛海洋公园东                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">70年产权</span>
                                                        <span class="lbls ico-lbl2">南北通透</span>
                                                        <span class="lbls ico-lbl3">配套齐全</span>
                                                        <span class="lbls ico-lbl4">观景房</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室1厅1卫</span><i class="cut-line">/</i>10/12层<i class="cut-line">/</i>毛坯<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">63</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">100㎡</span>
                            (6300元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2647035403x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="东四环 简装现房 70年大产权的商品房" src="http://scs.ganjistatic1.com/gjfsqq/v1bkuyfvjtjd5vrj22wjxq_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">6</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2647035403x.htm" target="_blank" class="list-info-title">东四环 简装现房 70年大产权的商品房</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">亦庄小羊坊小康小区</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>亦庄                                                         - 东渠路                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">电梯房</span>
                                                        <span class="lbls ico-lbl2">豪华装修</span>
                                                        <span class="lbls ico-lbl3">邻近地铁</span>
                                                        <span class="lbls ico-lbl4">配套齐全</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">1室1厅1卫</span><i class="cut-line">/</i>3/5层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>南向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">60</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">20㎡</span>
                            (30000元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2646971971x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="唐山市丰南区锦绣华府 随时看房" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwtmj2pofqn6x5ypa_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">4</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2646971971x.htm" target="_blank" class="list-info-title">唐山市丰南区锦绣华府 随时看房</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">锦绣华府</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>                                                         - 唐山市                                                                                      </span>
                        </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室1厅1卫</span><i class="cut-line">/</i>15/18层<i class="cut-line">/</i>毛坯<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">56</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">85㎡</span>
                            (6588元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2632241962x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="金隅万科城三期，看房方便，用心装修" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwtnboj6fqeftxjdq_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">6</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2632241962x.htm" target="_blank" class="list-info-title">金隅万科城三期，看房方便，用心装修</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">金隅万科城三期</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>昌平县城                                                         - 昌平县城                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">唯一住房</span>
                                                        <span class="lbls ico-lbl2">满五唯一</span>
                                                        <span class="lbls ico-lbl3">70年产权</span>
                                                        <span class="lbls ico-lbl4">不限购</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室1厅1卫</span><i class="cut-line">/</i>3/13层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>南向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">400</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">90㎡</span>
                            (44004元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2645320582x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="雁栖镇顶秀美泉四室一厅两卫带阁楼" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwklnvp4vrfdbeecq_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">9</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2645320582x.htm" target="_blank" class="list-info-title">雁栖镇顶秀美泉四室一厅两卫带阁楼</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">顶秀美泉小镇A区</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>怀柔                                                         - 京加线                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">70年产权</span>
                                                        <span class="lbls ico-lbl2">南北通透</span>
                                                        <span class="lbls ico-lbl3">一梯两户</span>
                                                        <span class="lbls ico-lbl4">配套齐全</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">4室1厅2卫</span><i class="cut-line">/</i>4/5层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">550</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">130㎡</span>
                            (42307元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2711568509x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="纳丹堡，好楼层，南北通透，送家具家电，临地铁，免税，对比三季" src="http://scs.ganjistatic1.com/gjfsqq/v1bj3gzsfn3xvfrl43f43a_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">6</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2711568509x.htm" target="_blank" class="list-info-title">纳丹堡，好楼层，南北通透，送家具家电，临地铁，免税，对比三季</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">纳丹堡</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>燕顺路                                                         - 神威北路与燕顺路交叉口                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">免营业税</span>
                                                        <span class="lbls ico-lbl2">70年产权</span>
                                                        <span class="lbls ico-lbl3">南北通透</span>
                                                        <span class="lbls ico-lbl4">配套齐全</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室2厅1卫</span><i class="cut-line">/</i>23/33层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">305</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">99㎡</span>
                            (30808元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2616912109x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="福成五期精装西南两居全明户型拎包入住业主自住免税258万出售" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwxxtjdpvrnur3eqq_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">6</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2616912109x.htm" target="_blank" class="list-info-title">福成五期精装西南两居全明户型拎包入住业主自住免税258万出售</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">福成五期上上城五期</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>                                                         - 102国道东                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">免营业税</span>
                                                        <span class="lbls ico-lbl2">70年产权</span>
                                                        <span class="lbls ico-lbl3">邻近学校</span>
                                                        <span class="lbls ico-lbl4">配套齐全</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室1厅1卫</span><i class="cut-line">/</i>14/18层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>西南向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">258</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">88㎡</span>
                            (29318元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2721894176x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="北京周边水榭花城 地铁22线 燕郊一手房直签认购带户口.雄县" src="http://scs.ganjistatic1.com/gjfsqq/v1bj3gzsfudp2frtfvxylq_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">10</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2721894176x.htm" target="_blank" class="list-info-title">北京周边水榭花城 地铁22线 燕郊一手房直签认购带户口.雄县</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">顺泽水榭花城</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>                                                         - 海淀                                                                                      </span>
                        </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室2厅1卫</span><i class="cut-line">/</i>2/25层<i class="cut-line">/</i>豪华装修<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">223</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">82㎡</span>
                            (27195元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2610889074x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="首尔甜城 南向两居 采光好 视野开阔 随时看房" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwkjdu3qvqlukyaca_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">8</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2610889074x.htm" target="_blank" class="list-info-title">首尔甜城 南向两居 采光好 视野开阔 随时看房</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">首尔甜城(小区介绍)</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>燕顺路                                                         - 燕郊经济技术开发区燕顺路东侧                                                                                      </span>
                        </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室2厅1卫</span><i class="cut-line">/</i>16/33层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>南向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">300</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">83㎡</span>
                            (36144元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2730274850x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="花园小区 5层 两室两厅两卫 花园小区 5层 两室两厅两卫" src="http://scs.ganjistatic1.com/gjfsqq/v1bj3gzsdva76fqylxfypa_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">8</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2730274850x.htm" target="_blank" class="list-info-title">花园小区 5层 两室两厅两卫 花园小区 5层 两室两厅两卫</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">花园小区</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>密云                                                         - 鼓楼东大街                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">70年产权</span>
                                                        <span class="lbls ico-lbl2">南北通透</span>
                                                        <span class="lbls ico-lbl3">一梯两户</span>
                                                        <span class="lbls ico-lbl4">配套齐全</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">2室2厅1卫</span><i class="cut-line">/</i>5/6层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">220</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">73㎡</span>
                            (30136元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2557804152x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="温泉入户+紧邻京霸高铁+紧邻牤牛河" src="http://scs.ganjistatic1.com/gjfsqq/v1bkujjd52eo3frbirwzpa_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">9</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2557804152x.htm" target="_blank" class="list-info-title">温泉入户+紧邻京霸高铁+紧邻牤牛河</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">丽水康城</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>其他                                                         - 霸州东外环路                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">70年产权</span>
                                                        <span class="lbls ico-lbl2">邻近地铁</span>
                                                        <span class="lbls ico-lbl3">邻近学校</span>
                                                        <span class="lbls ico-lbl4">配套齐全</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">1室1厅1卫</span><i class="cut-line">/</i>16/23层<i class="cut-line">/</i>毛坯<i class="cut-line">/</i>南向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">50</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">52㎡</span>
                            (9611元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2703041057x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="土桥60平欣桥家园朝南紧邻地铁,多经过！155万急售！" src="http://scs.ganjistatic1.com/gjfsqq/v1bkuyfvpi7prfrrsixzla_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">10</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2703041057x.htm" target="_blank" class="list-info-title">土桥60平欣桥家园朝南紧邻地铁,多经过！155万急售！</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">欣桥家园</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>土桥                                                         - 通州区城铁八通总站土桥站城铁口                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">邻近地铁</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">1室1厅1卫</span><i class="cut-line">/</i>7/12层<i class="cut-line">/</i>简单装修<i class="cut-line">/</i>南向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">155</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">60㎡</span>
                            (25833元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2639754475x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="果园新里中区 格局好 视野开阔 购物方便 精装修" src="http://scs.ganjistatic1.com/gjfsqq/v1bj3gzr7av7ufrt4wqbda_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">6</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2639754475x.htm" target="_blank" class="list-info-title">果园新里中区 格局好 视野开阔 购物方便 精装修</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">果园新里中区</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>密云                                                         - 西滨河路                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">满五唯一</span>
                                                        <span class="lbls ico-lbl2">南北通透</span>
                                                        <span class="lbls ico-lbl3">配套齐全</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">3室2厅2卫</span><i class="cut-line">/</i>6/6层<i class="cut-line">/</i>精装修<i class="cut-line">/</i>东西向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">270</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">123㎡</span>
                            (21849元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                              
                <li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="http://bj.ganji.com/fang5/2647362928x.htm" target="_blank" class="img-box"><img width="160" height="120" alt="北坞嘉园3室2厅电梯房正规大三居" src="http://scs.ganjistatic1.com/gjfsqq/v1bl2lwwkeat6frzeujncq_120-100_9-0.jpg">
                                                       
                            <span class="ico-number"><em><i class="number">9</i>图</em></span>
                                                    </a>
                    </div>
                    <div class="list-mod2">
                        <div class="info-title"><a href="http://bj.ganji.com/fang5/2647362928x.htm" target="_blank" class="list-info-title">北坞嘉园3室2厅电梯房正规大三居</a><span class="fc-red">(个人)</span>
                            
                            <span class="ico-box clearfix">
                                <!--<span class="ico-new"> </span>-->
                                  
                                     <span class="ico-extension"></span>
                                                            </span>                             
                            <span id="imjs-embed-user-50005439" class="talkBtn imjs-embed-user webim-embed-user-online" data="%7B%22postPicUrl%22%3A%22http%3A%5C%2F%5C%2Fimage.ganjistatic1.com%5C%2Fgjfstmp1%5C%2FM00%5C%2F00%5C%2F00%5C%2FCgP%2CylGJ9xGIVoiNAAFGUhd01KQAAAAHAH76AgAAUZq273_120-100_9-0.jpg%22%2C%22channel%22%3A1%2C%22userName%22%3A%22yangyu1%22%2C%22userId%22%3A%2250005439%22%2C%22postTitle%22%3A%22account%5C%2Fcpc_consumed.htm%22%2C%22postUrl%22%3A%22http%3A%5C%2F%5C%2Fbj.ganji.com%5C%2Ffang5%5C%2Ftuiguang-973757.htm%22%2C%22postId%22%3A%22973757_5_1002_0%22%7D" name="973757" style="display: inline-block;"><span class="imjs-user-online" style=""><span class="webim-detail-online"><a class="icon_dingdong" href="javascript:" gjalog="/dingdong@name=ding_dong_fang_list@atype=click">&nbsp;</a></span></span></span>
                        </div>
                        <div class="list-word">
                                                        <span class="sp-general">北坞嘉园</span>
                            <span class="sp-coordinate"><i class="ico-coordinate"></i>四季青                                                         - 北坞嘉园北小街                                                                                      </span>
                        </div>
                                                <div class="lbl-box clearfix">
                                                        <span class="lbls ico-lbl1">南北通透</span>
                                                    </div>
                                              
                        <p class="list-word fc-999"><span class="js-huxing">3室2厅2卫</span><i class="cut-line">/</i>2/6层<i class="cut-line">/</i>中等装修<i class="cut-line">/</i>南北向<i class="cut-line">/</i>4月24日</p>
                    </div>
                    <div class="list-mod3">
                        <p class="list-part list-part-first">
                                                        <em class="sale-price js-price">850</em>万                            </p>
                                                        <p class="list-part"><span class="js-area">127㎡</span>
                            (66929元/㎡)                            </p>              
                                    
                    </div>
                </li> 
                                                        
            </ul>
            
            
            <div class="pagination">
			<span>第 <s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/> 页</span>
		<s:if test="cid != null">
			<s:if test="pageBean.page != 1">
				<a href="${ pageContext.request.contextPath }/house_findByCid.action?cid=<s:property value="cid"/>&page=1" class="firstPage">&nbsp;</a>
				<a href="${ pageContext.request.contextPath }/house_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">&nbsp;</a>
			</s:if>
			
			<s:iterator var="i" begin="1" end="pageBean.totalPage">
				<s:if test="pageBean.page != #i">
					<a href="${ pageContext.request.contextPath }/house_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
				</s:if>
				<s:else>
					<span class="currentPage"><s:property value="#i"/></span>
				</s:else>
			</s:iterator>
			
			<s:if test="pageBean.page != pageBean.totalPage">	
				<a class="nextPage" href="${ pageContext.request.contextPath }/house_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
				<a class="lastPage" href="${ pageContext.request.contextPath }/house_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
			</s:if>
		</s:if>	
		<s:if test="csid != null">
			<s:if test="pageBean.page != 1">
				<a href="${ pageContext.request.contextPath }/house_findByCsid.action?csid=<s:property value="csid"/>&page=1" class="firstPage">&nbsp;</a>
				<a href="${ pageContext.request.contextPath }/house_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">&nbsp;</a>
			</s:if>
			
			<s:iterator var="i" begin="1" end="pageBean.totalPage">
				<s:if test="pageBean.page != #i">
					<a href="${ pageContext.request.contextPath }/house_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
				</s:if>
				<s:else>
					<span class="currentPage"><s:property value="#i"/></span>
				</s:else>
			</s:iterator>
			
			<s:if test="pageBean.page != pageBean.totalPage">	
				<a class="nextPage" href="${ pageContext.request.contextPath }/house_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
				<a class="lastPage" href="${ pageContext.request.contextPath }/house_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
			</s:if>
		</s:if>	
	</div>
	
	
        </div>
        
        
        <div class="more-info"><a href="">查看更多二手房信息</a></div>

<!-- *************************************内容尾部****************************************** -->     
		<div class="se-footer">
           <dl class="se-footer-cont">
               <dt>二手房友情小提示</dt>
               <dd>
                                                          优优二手房为您提供免费发布二手房信息及查询服务，每天精选数万二手房信息，是您快速全面查找二手房信息的最佳选择。                    
               </dd>
           </dl>
           <dl class="se-footer-cont">
               <dt>热门城市二手房信息</dt>
               <dd>
                   <a href="http://bj.ganji.com/fang5/">北京二手房</a>
                   <a href="http://sh.ganji.com/fang5/">上海二手房</a>
                   <a href="http://zz.ganji.com/fang5/">郑州二手房</a>
                   <a href="http://sy.ganji.com/fang5/">沈阳二手房</a>
                   <a href="http://sz.ganji.com/fang5/">深圳二手房</a>
                   <a href="http://cd.ganji.com/fang5/">成都二手房</a>
                   <a href="http://cq.ganji.com/fang5/">重庆二手房</a>
                   <a href="http://qd.ganji.com/fang5/">青岛二手房</a>
                   <a href="http://wh.ganji.com/fang5/">武汉二手房</a>
                   <a href="http://tj.ganji.com/fang5/">天津二手房</a>
                   <a href="http://jn.ganji.com/fang5/">济南二手房</a>
                   <a href="http://nj.ganji.com/fang5/">南京二手房</a>
                   <a href="http://gz.ganji.com/fang5/">广州二手房</a>
                   <a href="http://xa.ganji.com/fang5/">西安二手房</a>
                   <a href="http://hf.ganji.com/fang5/">合肥二手房</a>
                   <a href="http://sjz.ganji.com/fang5/">石家庄二手房</a>
               </dd>
           </dl>
           <dl class="se-footer-cont">
               <dt>友情连接</dt>
               <dd>
                   <a href="http://shanxisheng.dushifang.com/" target="_blank">陕西二手房</a>
                   <a href="http://xa.anjuke.com/sale/" target="_blank">西安二手房</a>
                   <a href="http://esf.95191.com" target="_blank">西安二手房</a>
				<a href="http://www.youtx.com/xian/" target="_blank">西安短租房</a>
				<a href="http://sx.esf.sina.com.cn/house/" target="_blank">西安二手房出售</a>
				<a href="http://xa.esf.focus.cn" target="_blank">西安二手房</a>
				<a href="http://xa.anjuke.com/sale/" target="_blank">西安二手房</a>
				<a href="http://xa.ganji.com/fang5/" target="_blank">西安二手房</a>
				<a href="http://www.daojia.com/jhall/" target="_blank">母婴专题</a>
				<a href="http://www.jiajuol.com/xian/" target="_blank">西安装修</a>
				<a href="http://xa.jiwu.com/esf/" target="_blank">西安二手房</a>
				<a href="http://qd.58.com/pinpaigongyu/745086633438629888/" target="_blank">HOME公寓</a>
				<a href="http://m.58.com/qd/pinpaigongyu/745086633438629888/" target="_blank">HOME公寓</a>
				<a href="http://helios.58.com/bj/" target="_blank">58二手房优品</a> 
               </dd>
           </dl>
    </div>
<!-- *********************底部********************** -->       
	<%@ include file="bottom.jsp" %>

</body>
</html>

