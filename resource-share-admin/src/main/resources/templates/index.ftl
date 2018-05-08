<!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<title>WeShare后台管理</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="icon" href="../favicon.ico">
    <link rel="stylesheet" href="${request.contextPath}/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="//at.alicdn.com/t/font_tnyc012u2rlwstt9.css" media="all" />
	<link rel="stylesheet" href="${request.contextPath}/css/main.css" media="all" />
</head>
<body class="main_body">
<div class="layui-layout layui-layout-admin">
	<!-- 顶部 -->
	<#include "common/header.ftl">
	<!-- 左侧导航 -->
	<#include "common/leftNav.ftl">
	<!-- 右侧内容 -->
	<div class="layui-body layui-form">
		<div class="layui-tab marg0" lay-filter="bodyTab" id="top_tabs_box">
			<ul class="layui-tab-title top_tab" id="top_tabs">
				<li class="layui-this" lay-id=""><i class="iconfont icon-computer"></i> <cite>后台首页</cite></li>
			</ul>
			<ul class="layui-nav closeBox">
				<li class="layui-nav-item">
					<a href="javascript:;"><i class="iconfont icon-caozuo"></i> 页面操作</a>
					<dl class="layui-nav-child">
						<dd><a href="javascript:;" class="refresh refreshThis"><i class="layui-icon">&#x1002;</i> 刷新当前</a></dd>
						<dd><a href="javascript:;" class="closePageOther"><i class="iconfont icon-prohibit"></i> 关闭其他</a></dd>
						<dd><a href="javascript:;" class="closePageAll"><i class="iconfont icon-guanbi"></i> 关闭全部</a></dd>
					</dl>
				</li>
			</ul>
            <div class="panel_box row" style="padding-top:40px">
                <div class="panel col">
                    <a href="javascript:;" data-url="page/message/message.html">
                        <div class="panel_icon">
                            <i class="layui-icon" data-icon="&#xe63a;">&#xe63a;</i>
                        </div>
                        <div class="panel_word newMessage">
                            <span></span>
                            <cite>新消息</cite>
                        </div>
                    </a>
                </div>
                <div class="panel col">
                    <a href="javascript:;" data-url="page/user/allUsers.html">
                        <div class="panel_icon" style="background-color:#FF5722;">
                            <i class="iconfont icon-dongtaifensishu" data-icon="icon-dongtaifensishu"></i>
                        </div>
                        <div class="panel_word userAll">
                            <span></span>
                            <cite>新增人数</cite>
                        </div>
                    </a>
                </div>
                <div class="panel col">
                    <a href="javascript:;" data-url="page/user/allUsers.html">
                        <div class="panel_icon" style="background-color:#009688;">
                            <i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
                        </div>
                        <div class="panel_word userAll">
                            <span></span>
                            <cite>用户总数</cite>
                        </div>
                    </a>
                </div>
                <div class="panel col">
                    <a href="javascript:;" data-url="page/img/images.html">
                        <div class="panel_icon" style="background-color:#5FB878;">
                            <i class="layui-icon" data-icon="&#xe64a;">&#xe64a;</i>
                        </div>
                        <div class="panel_word imgAll">
                            <span></span>
                            <cite>图片总数</cite>
                        </div>
                    </a>
                </div>
                <div class="panel col">
                    <a href="javascript:;" data-url="page/news/newsList.html">
                        <div class="panel_icon" style="background-color:#F7B824;">
                            <i class="iconfont icon-wenben" data-icon="icon-wenben"></i>
                        </div>
                        <div class="panel_word waitNews">
                            <span></span>
                            <cite>待审核文章</cite>
                        </div>
                    </a>
                </div>
                <div class="panel col max_panel">
                    <a href="javascript:;" data-url="page/news/newsList.html">
                        <div class="panel_icon" style="background-color:#2F4056;">
                            <i class="iconfont icon-text" data-icon="icon-text"></i>
                        </div>
                        <div class="panel_word allNews">
                            <span></span>
                            <em>文章总数</em>
                            <cite>文章列表</cite>
                        </div>
                    </a>
                </div>
            </div>
		</div>
	</div>
	<!-- 底部 -->
	<#include "common/footer.ftl">
</div>

<!-- 移动导航 -->
<div class="site-tree-mobile layui-hide"><i class="layui-icon">&#xe602;</i></div>
<div class="site-mobile-shade"></div>
<script type="text/javascript" src="${request.contextPath}/layui/layui.js"></script>
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.8.2.min.js"></script>
<script>
    layui.use('element', function(){
        var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

        //监听导航点击
        element.on('nav(demo)', function(elem){
            //console.log(elem)
            layer.msg(elem.text());
        });
    });
</script>
</body>
</html>
