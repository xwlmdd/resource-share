<!DOCTYPE html>
<html class=" ">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="baidu-site-verification" content="Z6vOHj2Lpk">
        <title>美图 - 做全网最好的DJ音乐站</title>
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
    </head>
<body style="">
<!--头部导航栏-->
<#include "common/header.ftl">

<!--Pjax Start-->
<div id="container">
    <div style="height: 15px"></div>
    <#--<#include "common/search.ftl">-->
    <div class="layui-container">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <ul class="fly-case-list mar-no">
                    <#if paginator??>
                        <#list paginator.list as ebook>
                            <li class="wid261 hide-li-1">
                                <div style="width: 80%;">
                                    <a class="fly-case-img" href="getEbookDetail?id=${ebook.id}" data-pjax="">
                                        <img src="${ebook.picUrl}" style="margin-left: 15%;margin-top: 5%;">
                                    </a>
                                </div>

                                <div style="margin-left: 10%;">
                                    <h2 class="layui-elip" >
                                        <a href="getEbookDetail?id=${ebook.id}" data-pjax="">${ebook.ebookName}</a>
                                    </h2>
                                    <h2 class="layui-elip" >
                                        [中文] 评分:${ebook.score}分
                                    </h2>
                                </div>
                                <hr>
                                <div>
                                    <div style="margin-left: 15%;">
                                         <a   href="getEbookDetail?id=${ebook.id}" class="layui-btn layui-btn-normal">详情信息</a>
                                         <a   href="${ebook.downloadUrl}" target="_blank" class="layui-btn  layui-btn-normal">立即下载</a>
                                    </div>
                                </div>
                            </li>
                        </#list>
                    </#if>
                </ul>

            </div>
        </div>
    </div>
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

<ul class="layui-fixbar" style="right: 10px; bottom: 100px;"><li class="layui-icon layui-fixbar-top" lay-type="top" style="background-color: rgb(57, 57, 57); display: none;"></li></ul><div class="layui-layer-move"></div></body></html>