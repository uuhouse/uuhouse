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
		        <a rel="nofollow" class="btn-post" href="${pageContext.request.contextPath}/user_publish.action" title="发布出售信息" ><span>发布出售信息</span></a>
		        <a rel="nofollow" class="btn-post" href="${pageContext.request.contextPath}/user_publishbuy.action" title="发布求购信息" ><span>发布求购信息</span></a>
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
                <span class="list-tab">西安二手房</span>
            </div>
            <ul class="list-style1">
             	 <s:iterator var="h" value="hList">
					<li class="list-img clearfix">
                    <div class="list-mod1">
                        <a href="${pageContext.request.contextPath}/house_findByHid.action?hid=<s:property value="#h.hid" />" class="img-box">
                        	<img width="160" id="image111" height="120" alt="<s:property value="#h.title" />" 
                        	src="${pageContext.request.contextPath}/<s:property value="#h.himage"/>" /></a>
                    </div>
                    
                    <div class="list-mod2">
                        <div class="info-title">
                        	<a href="${pageContext.request.contextPath}/house_findByHid.action?hid=<s:property value="#h.hid" />"  class="list-info-title"><s:property value="#h.title" /></a>
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
                        <p class="list-part"><s:property value="#h.untiprice"/>
                        </p>              
                    </div>
                </li> 
				</s:iterator>	                                            
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
<script>

	
</script>
</html>

