$(function() {
	$("#tijiao222").click(function() {
		document.cityform.submit();
	})
	//户型
	$("#huxingshi1").blur(function() {
		if($("#huxingshi1").val() == "") {
			$("#huxingshi1").parent().removeClass().addClass("input_text_wrap clearfix error");
			$("#shi_error").css("display", "block");
		}
	})
	$("#huxingshi1").focus(function() {
		$("#huxingshi1").parent().removeClass().addClass("input_text_wrap clearfix");
		$("#shi_error").css("display", "none");
	})
	//面积
	$("#area1").blur(function() {
		if($("#area1").val() == "") {
			$("#area1").parent().removeClass().addClass("input_text_wrap clearfix error");
			$("#area1_error").css("display", "block");
			$("#area2_error").css("display", "none");
		}
	})
	$("#area1").focus(function() {
		$("#area1").parent().removeClass().addClass("input_text_wrap clearfix");
		$("#area1_error").css("display", "none");
	})
	$("#area2").blur(function() {
		if($("#area2").val() == "") {
			$("#area2").parent().removeClass().addClass("input_text_wrap clearfix error");
			$("#area2_error").css("display", "block");
			$("#area1_error").css("display", "none");
		}
	})
	$("#area2").focus(function() {
		$("#area2").parent().removeClass().addClass("input_text_wrap clearfix");
		$("#area2_error").css("display", "none");
	})

	//价格
		$("#MinPrice1").blur(function() {
		if($("#MinPrice1").val() == "") {
			$("#MinPrice1").parent().removeClass().addClass("input_text_wrap clearfix error");
			$("#MinPrice1_error").css("display", "block");
			$("#MinPrice2_error").css("display", "none");
		}
	})
	$("#MinPrice1").focus(function() {
		$("#MinPrice1").parent().removeClass().addClass("input_text_wrap clearfix");
		$("#MinPrice1_error").css("display", "none");
	})
	$("#MinPrice2").blur(function() {
		if($("#MinPrice2").val() == "") {
			$("#MinPrice2").parent().removeClass().addClass("input_text_wrap clearfix error");
			$("#MinPrice2_error").css("display", "block");
			$("#MinPrice1_error").css("display", "none");
		}
	})
	$("#MinPrice2").focus(function() {
		$("#MinPrice2").parent().removeClass().addClass("input_text_wrap clearfix");
		$("#MinPrice2_error").css("display", "none");
	})
	//标题
	$("#title1").blur(function() {
		if($("#title1").val() == "") {
			$("#title1").parent().removeClass().addClass("input_text_wrap error");
			$("#biaoti_error").css("display", "block");
		}
	})
	$("#title1").focus(function() {
		$("#title1").parent().removeClass().addClass("input_text_wrap");
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
	//房屋类型
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
	
	//产权年限
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
	$("#diduan").blur(function() {
		if($("#diduan").val() == "") {
			$("#diduan").parent().removeClass().addClass("input_text_wrap error");
			$("#diduan_error").css("display", "block");
		}
	})
	$("#diduan").focus(function() {
		$("#diduan").parent().removeClass().addClass("input_text_wrap");
		$("#diduan_error").css("display", "none");
	})
	
})

function submit() {
	if($("#title1").val() == null || $("#title1").val() == "") {
		alert("请填写标题");
	}else if($("#diduan").val() == null || $("#diduan").val() == "") {
		alert("请填写求购地区")
	}else if($("#huxingshi1").val() == null || $("#huxingshi1").val() == "") {
		alert("请填写期望户型")
	}else if($("#MinPrice1").val() == null || $("#MinPrice1").val() == "" || $("#MinPrice2").val() == null || $("#MinPrice2").val() == "" ) {
		alert("请填写期望价格");
	}else if($("#area1").val() == null || $("#area1").val() == "" || $("#area2").val() == null || $("#area2").val() == "") {
		alert("请填写期望面积")
	}else if($("#Content1").val() == null || $("#Content1").val() == "" ) {
		alert("请填写补充说明");	
	}else if($("#Phone").val() == null || $("#Phone").val() == "" ) {
		alert("请填写联系电话");
	}else if($("#goblianxiren").val() == null || $("#goblianxiren").val() == "" ) {
		alert("请填写联系人");
	}else if($("#goblianxiren").val() == null || $("#goblianxiren").val() == "" ) {
		alert("请填写联系人");
	}else {
		setTimeout(function() {
			document.publish_form.submit();
		},50)
		
	}
}

$(function() {
	$("#zz1").click(function() {
		
		if($("#leibie").html() != "请选择类别") {
			$("#htype").val($("#leibie").html());
		}
		if($("#nianxian").html() != "请选择") {
			$("#propertyright").val($("#nianxian").html());
		}
	})
})


