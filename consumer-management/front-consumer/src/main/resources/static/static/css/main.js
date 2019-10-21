$(function() {

	// 适配
	// iframe
	$(".AccountManagement_c_iframe").css("height", $(document).height());
	// 导航高度
	$(".nav_side").css("height", $(document).height() - 100);

	// iframe 链接
	$(".AccountManagement").click(function() {
		$(".AccountManagement_c_iframe iframe").attr("src", "userShow")
	})
	$(".ColumnManagement").click(
			function() {
				$(".AccountManagement_c_iframe iframe").attr("src",
						"userShow1")
			})
  $(".NewsList").click(function(){
        $(".AccountManagement_c_iframe iframe").attr("src","userShow2")
    })
   
    $("#news_add_btn").click(function(){
    	window.location.href="page/NewsManagement.jsp";
    	// $(".AccountManagement_c_iframe iframe").attr("src","NewsManagement.jsp");
    })
    
   


    
    
    
    
    
    
    

	// pull page 翻页
	$(".pull_page ul li").click(function() {
		var index = $(this).index();
		if ($(this).hasClass("pull_page_df_btn")) {
			return;
		}
		$(this).addClass("on").siblings().removeClass("on");

	})

	// nav
	$(".nav_side>div").click(function() {
		var index = $(this).index();
		$(this).addClass("active").siblings().removeClass("active");
		$(".main_fx>div").eq(index).show().siblings().hide();
		if (index == 0) {
			$(".user_location span").text("账户管理");
		} else if (index == 1) {
			$(".user_location span").text("栏目管理");
		} else if (index == 2) {
			$(".user_location span").text("新闻管理");
		}
	})
	
	
	
	// 弹窗 all
	// z账户管理 -
	// 添加账户
	
	
	$("#add_Account_btn").click(function() {
		$("#add_Account").fadeIn(100);
	})
	$(".add_Account_close").click(function() {
		$("#add_Account").fadeOut(100);
		$("#user_column").fadeOut(100);
		$("#delete_Account").fadeOut(100);
		$("#ac_Account").fadeOut(100);
		$("#add_column").fadeOut(100);
		$("#edit_column").fadeOut(100);
		$("#delete_column").fadeOut(100);
	})
	// 编辑账户
	$("#edit_Account_btn").click(
			function() {
				var id = 0;
				var inp = $("input:checkbox[name=choose]:checked");
				if (inp.length > 1) {
					alert("只能选择一项")
				} else if (inp.length == 0) {
					alert("请选择编辑的用户")
				} else if (inp.length == 1) {
					$.each(inp, function(index, i) {
						id = $(this).val();
					})
					var username = $("input:checkbox[name=choose]:checked")
							.parent().children().next().html();
					var password = $("input:checkbox[name=choose]:checked")
							.parent().parent().next().children("label").html();
					// alert(username+password);
					$("#set").text(username)
					$("#setid").val(id);
					$("#setname").val(username);
					$("#setpassword").val(password);
					$("#user_column").fadeIn(100);
				}
			})
	// 删除账户
	$("#delete_Account_btn").click(function() {
		var inp = $("input:checkbox[name=choose]:checked");
		if (inp.length = 0) {
			alert("请选择用户")

		} else {
			$("#delete_Account").fadeIn(100);
		}

	})
	
	// 栏目管理 -
	$("#add_column_btn").click(function() {
		$("#add_column").fadeIn(100);
	})
	// 编辑栏目
	$("#edit_column_btn").click(function() {
		var id = 0;
		var inp = $("input:checkbox[name=choose]:checked");
		if (inp.length > 1) {
			alert("只能选择一项")
		} else if (inp.length == 0) {
			alert("请选择编辑的用户")
		} else if (inp.length == 1) {
			$.each(inp, function(index, i) {
				id = $(this).val();
			})
			var dpnum = $("input:checkbox[name=choose]:checked").parent().children().next().text();
			var dpname = $("input:checkbox[name=choose]:checked").parent().parent().next().children("label").text();
			$("#setdpid").val(id);
			$("#setdpname").val(dpname);
			$("#setdpnum").val(dpnum);
			$("#edit_column").fadeIn(100);
		}
		
	})
	// 删除栏目
	$("#delete_column_btn").click(function() {
		var inp = $("input:checkbox[name=choose]:checked");
		if (inp.length>0) {
			$("#delete_column").fadeIn(100);
		} else {
			
			alert("请选择用户")
		}

		
	})
	

	

	// 确定 btn
	/*$("#add_Account_ok_btn").click(function() {
		$("#add_Account").fadeOut(100);
	})*/
	/*$("#user_column_ok_btn").click(function() {
		$("#user_column").fadeOut(100);
	})*/
	$("#delete_Account_ok_btn").click(function() {
		$("#delete_Account").fadeOut(100);
	})
	$("#ac_Account_ok_btn").click(function() {
		$("#ac_Account").fadeOut(100);
	})
	/*$("#add_column_ok_btn").click(function() {
		$("#add_column ").fadeOut(100);
	})*/
	/*$("#edit_column_ok_btn").click(function() {
		$("#edit_column ").fadeOut(100);
	})*/

	$("#delete_column_ok_btn").click(function() {
		
		$("#delete_column").fadeOut(100);
	})
})
