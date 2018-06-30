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
    <!-- 文章 开始 -->
    <div class="main">
        <div class="page_left">
            <ul class="page_left_list">
        <#if paginator??>
            <#list paginator.list as blog>
                <li class="no_pic">
                    <h2 class="title"><a href="getBlogDetail?id=${blog.id}">${blog.title}</a></h2>
                    <div class="date_hits">
                        <span>创建时间：
                            <#if blog??>
                                ${blog.createTime?string('yyyy-MM-hh mm:ss')}
                            </#if>
                        </span>
                        <span>
                            <a href="getBlogDetail?id=${blog.id}">${blog.kind}</a>
                        </span>
                        <span class="hits">
                            <i class="layui-icon" title="点击量"></i> 319
                        </span>
                        <p class="commonts">
                            <i class="layui-icon" title="点击量"></i>
                            <span id="sourceId::888" class="cy_cmt_count">1</span>
                        </p>
                    </div>
                    <div class="desc">
                        <#if blog.description??>
                            ${blog.description}
                        </#if>
                    </div>
                </li>
            </#list>
        </#if>
            </ul>
            <div id="page"></div>
        </div>
    <#include "common/blogRight.ftl">
    </div>
    <!-- 文章 结束 -->
</div>
<div class="text-center pagePjax">
    <#include "common/pagination.ftl">
</div>

<!--Pjax End-->
<#include "common/footer.ftl">

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
<div class="layui-layer-move"></div>
</body>
</html>