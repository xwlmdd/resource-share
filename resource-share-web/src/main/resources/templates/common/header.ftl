<div class="fly-header bg-dark">
    <div class="layui-container">
        <a class="fly-logo" href="http://www.ivusic.com/index.html" data-pjax="" title="weshare分享">
            <img src="${request.contextPath}/images/logo.png" alt="ivusic">
        </a>
        <ul class="layui-nav fly-nav layui-hide-xs">
            <li class="layui-nav-item layui-this">
                <a href="http://www.ivusic.com/index.html" data-pjax="">首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="${request.contextPath}/ebook/getAllEbook" data-pjax="">书架</a>
            </li>
            <li class="layui-nav-item">
                <a href="http://www.ivusic.com/index/topic.html" data-pjax="">学习视频库</a>
            </li>
            <li class="layui-nav-item">
                <a href="http://www.ivusic.com/index/topic.html" data-pjax="">优秀博客</a>
            </li>
            <li class="layui-nav-item">
                <a href="http://www.ivusic.com/index/link.html" data-pjax="">导航</a>
            </li>
            <span class="layui-nav-bar" style="left: 0px; top: 55px; width: 0px; opacity: 0;"></span></ul>

        <ul class="layui-nav layui-hide-md" style="float: right;margin-top:18px;">
            <li class="layui-nav-item no-nav-more" style="line-height: 30px;">
                <a href="javascript:;"><span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child"> <!-- 二级菜单 -->
                    <dd><a href="http://www.ivusic.com/index.html" data-pjax="">首页</a></dd>
                    <dd><a href="http://www.ivusic.com/index/music.html" data-pjax="">电音</a></dd>
                    <dd><a href="http://www.ivusic.com/index/topic.html" data-pjax="">专辑</a></dd>
                    <dd><a href="http://www.ivusic.com/index/link.html" data-pjax="">导航</a></dd>
                    <dd><a href="http://www.ivusic.com/index/news.html" data-pjax="">资讯</a></dd>
                    <dd><a href="http://www.ivusic.com/index/article.html" data-pjax="">论坛</a></dd>
                    <dd><a href="http://www.ivusic.com/index/picture.html" data-pjax="">美图</a></dd>
                    <dd><a href="http://www.ivusic.com/index/user/login.html" data-pjax="">登录</a></dd>
                    <dd><a href="http://www.ivusic.com/index/user/register.html" data-pjax="">注册</a></dd>
                </dl>
            </li>
            <span class="layui-nav-bar"></span></ul>

        <ul class="layui-nav fly-nav-user">
            <!-- 未登入的状态 -->
            <li class="layui-nav-item">
                <a class="iconfont icon-touxiang layui-hide-xs" href="http://www.ivusic.com/index/user/login.html" data-pjax=""></a>
            </li>
            <li class="layui-nav-item"><a href="http://www.ivusic.com/index/user/login.html" data-pjax="">登录</a></li>
            <li class="layui-nav-item"><a href="http://www.ivusic.com/index/user/register.html" data-pjax="">注册</a></li>
            <span class="layui-nav-bar"></span></ul>
    </div>
</div>

<div class="page-loading">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>