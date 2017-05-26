function submit() {
	if($("#xiaoqu").val() == null || $("#xiaoqu").val() == "") {
		alert("请填写小区名");
	}else if($("#huxingshi1").val() == null || $("#huxingshi1").val() == "" || $("#area2").val() == null || $("#area2").val() == "") {
		alert("请填写房屋户型")
	}else if($("#MinPrice1").val() == null || $("#MinPrice1").val() == "" ) {
		alert("请填写总价");
	}else if($("#Title1").val() == null || $("#Title1").val() == "" ) {
		alert("请填写标题");	
	}else if($("#Phone").val() == null || $("#Phone").val() == "" ) {
		alert("请填写联系电话");
	}else if($("#goblianxiren").val() == null || $("#goblianxiren").val() == "" ) {
		alert("请填写联系人");
	}else if($("#jianzhuniandai").val() == null || $("#jianzhuniandai").val() == "" ) {
		alert("请填写建筑年代");
	}else {
		setTimeout(function() {
			document.publish_form.submit();
		},50)
		
	}
	
}
$(function() {
	$("#zz1").click(function() {
		console.log($("#select_area").html());	
		$("#identity").val($(".focus label").html());
		if($("#select_area").html() != "请选择") {
			$("#village").val($("#select_area").html());
		}
		if($("#select_diduan").html() != "请选择地段") {
			$("#streets").val($("#select_diduan").html());
		}
		if($("#leibie").html() != "请选择类别") {
			$("#htype").val($("#leibie").html());
		}
		if($("#qingkuang").html() != "请选择") {
			$("#decorate").val($("#qingkuang").html());
		}
		if($("#cx").html() != "请选择") {
			$("#cx1").val($("#cx").html());
		}
		if($("#nianxian").html() != "请选择") {
			$("#htime").val($("#nianxian").html());
		}
		if($("#cq").html() != "请选择") {
			$("#cq1").val($("#cq").html());
		}
	})
	
})

