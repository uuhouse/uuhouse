
var area = new Array();
var num = 0;
area[num++] = new Array("电子一路","雁塔");
area[num++] = new Array("电子二路","雁塔");
area[num++] = new Array("电子三路","雁塔");
area[num++] = new Array("电子四路","雁塔");
area[num++] = new Array("电子五路","雁塔");
area[num++] = new Array("丈八东路","雁塔");
area[num++] = new Array("西斜七路","雁塔");
area[num++] = new Array("雁塔西路","雁塔");
area[num++] = new Array("吉祥诚信商业街","雁塔");
area[num++] = new Array("明德门","雁塔");
area[num++] = new Array("市政府","雁塔");
area[num++] = new Array("翠华路","雁塔");
area[num++] = new Array("国展中心","雁塔");
area[num++] = new Array("电视塔","雁塔");
area[num++] = new Array("西影路","雁塔");
area[num++] = new Array("杨家村","雁塔");
area[num++] = new Array("吉祥路","雁塔");
area[num++] = new Array("三爻","雁塔");
area[num++] = new Array("太白小区","雁塔");
area[num++] = new Array("永松路","雁塔");
area[num++] = new Array("丁白路","雁塔");
area[num++] = new Array("小寨路","雁塔");
area[num++] = new Array("大雁塔","雁塔");
area[num++] = new Array("长延堡","雁塔");
area[num++] = new Array("电子城","雁塔");
area[num++] = new Array("太白南路","雁塔");
area[num++] = new Array("电子正街","雁塔");
area[num++] = new Array("北山门","雁塔");
area[num++] = new Array("等驾坡","雁塔");
area[num++] = new Array("鱼化寨","雁塔");
area[num++] = new Array("雁塔周边","雁塔");
$(function() {
	//选择身份
	$("#geren").click(function() {
		$("#geren").removeClass().addClass("radio focus");
		$("#shangjia").removeClass().addClass("radio");	
	})
	$("#shangjia").click(function() {
		$("#shangjia").removeClass().addClass("radio focus");
		$("#geren").removeClass().addClass("radio");	
	})

	//小区名称
	$("#xiaoqu").blur(function() {
		if($("#xiaoqu").val() == "") {
			$("#xiaoqu").parent().removeClass().addClass("input_text_wrap error");
			$("#xiaoqu_error").css("display", "block");
		}
	})
	$("#xiaoqu").focus(function() {
		$("#xiaoqu").parent().removeClass().addClass("input_text_wrap");
		$("#xiaoqu_error").css("display", "none");
	})

	//户型
	$("#huxingshi1").blur(function() {
		if($("#huxingshi1").val() == "") {
			$("#huxingshi1").parent().removeClass().addClass("input_text_wrap clearfix error");
			$("#shi_error").css("display", "block");
			$("#mianji_error").css("display", "none");
		}
		
	})
	$("#huxingshi1").focus(function() {
		$("#huxingshi1").parent().removeClass().addClass("input_text_wrap clearfix");
		$("#shi_error").css("display", "none");
	})
	$("#area2").blur(function() {
		if($("#area2").val() == "") {
			$("#area2").parent().removeClass().addClass("input_text_wrap clearfix error");
			$("#mianji_error").css("display", "block");
			$("#shi_error").css("display", "none");
		}
	})
	$("#area2").focus(function() {
		$("#area2").parent().removeClass().addClass("input_text_wrap clearfix");
		$("#mianji_error").css("display", "none");
	})

	//总价
	$("#MinPrice1").blur(function() {
		if($("#MinPrice1").val() == "") {
			$("#MinPrice1").parent().removeClass().addClass("input_text_wrap clearfix error");
			$("#zongjia_error").css("display", "block");
		}
	})
	$("#MinPrice1").focus(function() {
		$("#MinPrice1").parent().removeClass().addClass("input_text_wrap clearfix");
		$("#zongjia_error").css("display", "none");
	})
	//标题
	$("#Title1").blur(function() {
		if($("#Title1").val() == "") {
			$("#Title1").parent().removeClass().addClass("input_text_wrap error");
			$("#biaoti_error").css("display", "block");
		}
	})
	$("#Title1").focus(function() {
		$("#Title1").parent().removeClass().addClass("input_text_wrap");
		$("#biaoti_error").css("display", "none");
	})
	//手机号码
	$("#Phone").blur(function() {
		if($("#Phone").val() == "") {
			$("#Phone").parent().removeClass().addClass("input_text_wrap error");
			$("#phone_error").css("display", "block");
		}
	})
	$("#Phone").focus(function() {
		$("#Phone").parent().removeClass().addClass("input_text_wrap");
		$("#phone_error").css("display", "none");
	})
	//联系人
	$("#goblianxiren").blur(function() {
		if($("#goblianxiren").val() == "") {
			$("#goblianxiren").parent().removeClass().addClass("input_text_wrap error");
			$("#lianxiren_error").css("display", "block");
		}
	})
	$("#goblianxiren").focus(function() {
		$("#goblianxiren").parent().removeClass().addClass("input_text_wrap");
		$("#lianxiren_error").css("display", "none");
	})
	//类型
	$("#fangyuanleixing").click(function(){
		$("#leixing").toggle();

	})
	$("#leixing li").click(function() {
		var leibie = this.innerHTML;
		
		$("#leibie").html(leibie);
		//js线程冲突
		setTimeout(function(){
			$("#leixing").css("display","none");
		},0)
		
	})
	$("#fangyuanleixing").blur(function() {
		$("#leixing").css("display","none");
		
	})
	//产权
	$("#chanquannianxian").click(function(){
		$("#changquan").toggle();

	})
	$("#changquan li").click(function() {
		var leibie = this.innerHTML;
		
		$("#nianxian").html(leibie);
		//js线程冲突
		setTimeout(function(){
			$("#changquan").css("display","none");
		},0)
		
	})
	$("#chanquannianxian").blur(function() {
		$("#changquan").css("display","none");
		
	})
	//地区
	$("#localArea1").click(function(){
		$("#diqu11").toggle();

	})
	$("#diqu11 li").click(function() {
		var leibie = this.innerHTML;	
		$("#select_area").html(leibie);
		for(var i=0;i<area.length;i++) {
			if(area[i][1] == leibie) {
				
				$("#diduanxuanxiang ul").append("<li>" + area[i][0] + "</li>");
			}
		}
		$("#diduanxuanxiang li").click(function() {
			var leibie = this.innerHTML;
			$("#select_diduan").html(leibie);
			//js线程冲突
			setTimeout(function(){
				$("#diduanxuanxiang").css("display","none");
			},0)
			
		})
		//js线程冲突
		setTimeout(function(){
			$("#diqu11").css("display","none");
		},0)
		
	})
	$("#localArea1").blur(function() {
		$("#diqu11").css("display","none");
		
	})
	//街道
	$("#local_diduan").click(function(){
		$("#diduanxuanxiang").toggle();

	})
	$("#diduanxuanxiang li").click(function() {
		var leibie = this.innerHTML;
		alert(leibie);
		$("#select_diduan").html(leibie);
		//js线程冲突
		setTimeout(function(){
			$("#diduanxuanxiang").css("display","none");
		},0)
		
	})
	$("#local_diduan").blur(function() {
		$("#diduanxuanxiang").css("display","none");
		
	})
	
	
})
	