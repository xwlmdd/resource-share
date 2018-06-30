<!DOCTYPE html>
<html class=" ">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="baidu-site-verification" content="Z6vOHj2Lpk">
    <title>weShare - 乐于分享</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="icon" href="http://www.ivusic.com/index/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/jplayer.flat.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/animate.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/simple-line-icons.css">
    <!--STYLESHEET-->
    <link href="${request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.contextPath}/css/font-face.css" rel="stylesheet" type="text/css">
    <link href="${request.contextPath}/css/nifty.min.css" rel="stylesheet">
    <link href="${request.contextPath}/css/nprogress.css" rel="stylesheet">
    <link href="${request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${request.contextPath}/layui/css/layui.css" rel="stylesheet">
    <link href="${request.contextPath}/css/global.css" rel="stylesheet">
    <link id="layuicss-layer" rel="stylesheet" href="${request.contextPath}/layui/css/modules/layer/default/layer.css" media="all">
    <script src="${request.contextPath}/js/wb.js" type="text/javascript" charset="utf-8"></script>
    <script src="${request.contextPath}/js/jquery.min.js"></script>
    <script src="${request.contextPath}/js/jquery.lazyload.min.js"></script>
    <link href="${request.contextPath}/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${request.contextPath}/layui/css/layer.css" media="all">
</head>
<body style="">
<!--头部导航栏-->
<#include "common/header.ftl">

<!--Pjax Start-->
<div id="container">
    <div style="height: 15px"></div>
<#--<#include "common/search.ftl">-->
    <div class="layui-side layui-bg-black left_nav trans_2">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="left_nav">
                <li class="layui-nav-item home"><a href="http://www.phplaozhang.com/">首页</a></li>
                <li class="layui-nav-item">
                    <a href="javascript:void();">学无止境<span class="layui-nav-more"></span></a>
                    <dl class="layui-nav-child"> <!-- 二级菜单 -->
                        <dd><a href="http://www.phplaozhang.com/article-lists/8.html">杂谈</a></dd>
                        <dd><a href="http://www.phplaozhang.com/article-lists/9.html">PHP</a></dd>
                        <dd><a href="http://www.phplaozhang.com/article-lists/10.html">建站</a></dd>
                        <dd><a href="http://www.phplaozhang.com/article-lists/11.html">WEB前端</a></dd>
                        <dd><a href="http://www.phplaozhang.com/article-lists/15.html">LzCMS</a></dd>
                        <dd><a href="http://www.phplaozhang.com/article-lists/16.html">Python</a></dd>
                        <dd><a href="http://www.phplaozhang.com/article-lists/17.html">微信小程序</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:void();">分享无价<span class="layui-nav-more"></span></a>
                    <dl class="layui-nav-child"> <!-- 二级菜单 -->
                        <dd><a href="http://www.phplaozhang.com/download-lists/13.html">源码分享</a></dd>
                        <dd><a href="http://www.phplaozhang.com/download-lists/14.html">jQuery特效</a></dd>
                        <dd><a href="http://www.phplaozhang.com/download-lists/18.html">软件工具</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="http://www.phplaozhang.com/link-lists/3.html">日记</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:void();">关于<span class="layui-nav-more"></span></a>
                    <dl class="layui-nav-child"> <!-- 二级菜单 -->
                        <dd><a href="http://www.phplaozhang.com/page/5.html">关于老张</a></dd>
                        <dd><a href="http://www.phplaozhang.com/page/6.html">关于LzCMS</a></dd>
                        <dd><a href="http://www.phplaozhang.com/feedback.html">留言</a></dd>
                    </dl>
                </li>
                <span class="layui-nav-bar"></span></ul>
        </div>
    </div>
    <div class="left_nav_mask"></div>
    <div class="left_nav_btn"><i class="layui-icon"></i></div>
    <!-- 文章 开始 -->
    <#if blog??>
    <div class="main">
        <div class="page_left">
            <div class="detail_container trans_3">
                <h1>${blog.title}</h1>
                <div class="date_hits"><span><i>发布时间：</i>${blog.publishTime?string('yyyy-MM-hh mm:ss')}</span><span>
                    <i>热度：</i> 1538</span>
                    <span>
                        <i>评论数：</i>
                        <a href="javascript:void(0);" id="changyan_count_unit">0</a>
                    </span>
                </div>
                <div class="content" deep="3"><p style="text-align: justify;">
                    ${blog.content}
                </div>
                <div class="keywords"><p>获得,大量,优质</p></div>
                <div class="prev_next">
                    <div class="prev">上一篇：
                        <#if preBlog??>
                            <a href="getBlogDetail?id=${preBlog.id}">
                                ${preBlog.title}
                            </a>
                        <#else>
                            无
                        </#if>
                    </div>
                    <div class="next">下一篇：
                        <#if nextBlog??>
                            <a href="getBlogDetail?id=${nextBlog.id}">
                                ${nextBlog.title}
                            </a>
                        <#else>
                            无
                        </#if>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <#include "common/blogRight.ftl">
    </#if>
</div>

<!--Pjax End-->
    <div>
        <#include "common/footer.ftl">
    </div>

<!--JAVASCRIPT-->
<script src=".${request.contextPath}/js/jquery-1.10.2.min.js"></script>
<script src=".${request.contextPath}/js/jquery.cookie.js"></script>
<script src=".${request.contextPath}/js/jquery.pjax.js"></script>

<!-- Bootstrap And Player -->
<script src=".${request.contextPath}/js/layui.js"></script>
<script src=".${request.contextPath}/js/nifty.min.js"></script>
<script src=".${request.contextPath}/js/nprogress.js"></script>
<script src=".${request.contextPath}/js/bootstrap.js"></script>
<script src=".${request.contextPath}/js/jquery.jplayer.min.js"></script>
<script src=".${request.contextPath}/js/jplayer.playlist.js"></script>
<script src=".${request.contextPath}/js/jplayer.init.js"></script>
<script>
    layui.config({
        version: "2.0"
        , base: '/static/index/mods/' //这里实际使用时，建议改成绝对路径
    }).use('music');
</script>

<ul class="layui-fixbar" style="right: 10px; bottom: 100px;">
    <li class="layui-icon layui-fixbar-top" lay-type="top" style="background-color: rgb(57, 57, 57); display: none;"></li>
</ul>
<div class="layui-layer-move">
</div>
</body>
</html>