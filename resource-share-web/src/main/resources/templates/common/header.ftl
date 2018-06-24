<div class="fly-header bg-dark">
    <div class="layui-container">
        <a class="fly-logo" href="http://www.ivusic.com/index.html" data-pjax="" title="weshare分享">
            <img src="${request.contextPath}/images/logo.png" alt="ivusic">
        </a>
        <ul class="layui-nav fly-nav layui-hide-xs">
            <li class="layui-nav-item layui-this">
                <a href="${request.contextPath}/blog/getAllBlog" data-pjax="">博客</a>
            </li>
            <li class="layui-nav-item">
                <a href="${request.contextPath}/ebook/getAllEbook" data-pjax="">书籍分享</a>
            </li>
            <li class="layui-nav-item">
                <a href="http://www.ivusic.com/index/topic.html" data-pjax="">视频分享</a>
            </li>
            <li class="layui-nav-item">
                <a href="http://www.ivusic.com/index/link.html" data-pjax="">牛人推荐</a>
            </li>
            <li class="layui-nav-item">
                <a href="http://www.ivusic.com/index/topic.html" data-pjax=""></a>
            </li>
            <span class="layui-nav-bar" style="left: 0px; top: 55px; width: 0px; opacity: 0;"></span></ul>
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