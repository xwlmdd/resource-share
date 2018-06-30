<!DOCTYPE html>
<!-- saved from url=(0050)http://www.ivusic.com/index/article/show/id/1.html -->
<html class=" " style=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    </head>
<body style="">
<!--头部导航栏-->
<#include "common/header.ftl">
<div id="container1" style="padding-top: 35px">
    <div style="height: 15px"></div>
</div>
    <div class="layui-container">
        <div id="primary" class="primary" role="main">
            <div class="area">
                <article>
                    <header class="single-header">
                        <div class="single-meta">
                            <h1 class="title">书名：【<#if ebook??>${ebook.ebookName}</#if>】</h1>
                            <h1 class="title">目录</h1>
                        </div>
                        <div class="data-meta">
                            <p class="badge-num">172</p>
                            <p>
                            <span class="author">
                                <a href="http://www.ivusic.com/index/user/index/id/1.html"  rel="author" data-pjax=""> 管理员 </a>
                                发布于
                                <time class="data-time">
                                    <#if ebook??>
                                        ${ebook.createTime?string('yyyy-MM-hh mm:ss')}
                                    </#if>
                                </time>
                            <#--</span>-->
                                <#--<span class="comments-link">-->
                                <#--<a href="http://www.ivusic.com/index/article/show/id/1.html#comments">2 条评论</a>-->
                            <#--</span>-->
                            </p>
                        </div>
                    </header>
                    <div class="single-content-wrapper">
                        <div class="single-content photos">
                            <#--<blockquote class="layui-elem-quote">-->
                            <#--</blockquote>-->
                            <#if ebook??>
                                ${ebook.catalog}
                            </#if>
                        </div>
                    </div>
                    <div class="single-footer">
                        <div class="single-heart">
                            <a href="javascript:;" class="user-signin " id="setLove" data-id="1" data-mid="30">
                                <i class="fa fa-heart"></i>
                                <span class="heart-text">喜欢</span> ( <span class="heart-no">2</span> )
                            </a>
                            <div class="loading-line"></div>
                        </div>
                        <nav class="navigation post-navigation" role="navigation">
                            <div class="nav-links">
                            <#if preEbook??>
                                <a class="pre-post"  rel="none" href="getEbookDetail?id=${preEbook.id}">上一本：${preEbook.ebookName}</a>
                                <#else>
                                    <a class="pre-post"  rel="none" href="javascript:;">没有更多了</a>
                            </#if>
                            <#if nextEbook??>
                                <a class="next-post" rel="next" href="getEbookDetail?id=${nextEbook.id}" data-pjax="">下一本：${nextEbook.ebookName}</a>
                                <#else>
                                <a class="next-post" rel="next" href="javascript:;" data-pjax="">没有更多了</a>
                            </#if>

                            </div>
                        </nav>
                    </div>
                </article>
            </div>
            <div class="area">
                <div class="related-posts">
                    <h2 class="title">推荐书籍</h2>
                    <ul>
                        <#if recommendEbooks??>
                            <#list recommendEbooks as recommendEbook>
                                <li>
                                    <div class="item">
                                        <div class="thumb">
                                            <a href="getEbookDetail?id=${recommendEbook.id}" data-pjax="">
                                                <img  src="${recommendEbook.picUrl}" style="height: 100%;">
                                            </a>
                                        </div>
                                        <a class="post-title" rel="bookmark" href="getEbookDetail?id=${recommendEbook.id}">
                                        ${recommendEbook.ebookName}
                                        </a>
                                    </div>
                                </li>
                            </#list>
                        </#if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
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
        , base: '/static/index//mods/' //这里实际使用时，建议改成绝对路径
    }).use('music');
</script>


<ul class="layui-fixbar" style="right: 10px; bottom: 100px;"><li class="layui-icon layui-fixbar-top" lay-type="top" style="background-color: rgb(57, 57, 57); display: none;"></li></ul><div class="layui-layer-move" style="cursor: move; display: none;"></div></body></html>