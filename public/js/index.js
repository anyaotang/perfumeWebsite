$(function() {
	// 可点击和鼠标悬停显示下拉菜单
	$(document).off('click.bs.dropdown.data-api');
	// 查询目录
	$.ajax({
		type: 'post',
		url: '/api/catalog',
		dataType: 'json',
		success: function(data) {
			if (data.code == 0) {
				for (var i = 0; i < data.msg.length; i++) {
					var ht =
						'<li>' +
						'<a class="menu-item" href="javascript:;" data-href="' + data.msg[i].cg_url + '">' + data.msg[i].cg_alias +
						'</a>' +
						'</li>'
					$('.nav1').append(ht);
					$('.nav1 li:first').addClass('active');
					// 顶部导航栏点击添加active样式
					$('.nav1>li').click(function() {
						//不用判断，当前的li添加active类，其他的删除active类
						$(this).addClass("active").siblings("li").removeClass("active");
					})
					// 页面展示
					$('#content').load('api/homepage')
					$('.menu-item').click(function() {
						var url = $(this).data("href");
						// console.log(url);
						$.ajax({
							url: url,
							dataType: 'html',
							async: true,
							success: function(res) {
								$('#content').html(res)
							}
						})
					});
				}
			}
		}
	});
})
