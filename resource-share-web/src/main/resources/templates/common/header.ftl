<div class="fly-header bg-dark">
    <div class="layui-container">
        <a class="fly-logo" href="${request.contextPath}/blog/getAllBlog" data-pjax="" title="weshare分享">
            <img src="${request.contextPath}/images/logo.png" alt="weShare">
        </a>
        <ul class="layui-nav fly-nav layui-hide-xs">
            <li class="layui-nav-item layui-this">
                <a href="${request.contextPath}/blog/getAllBlog" data-pjax="">博客</a>
            </li>
            <li class="layui-nav-item">
                <a href="${request.contextPath}/ebook/getAllEbook?type=0" data-pjax="">书籍分享</a>
            </li>
            <li class="layui-nav-item">
                <a href="j${request.contextPath}/ebook/getAllEbook?type=1" data-pjax="">视频分享</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:void(0);" data-pjax="">牛人推荐</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:void(0);" data-pjax=""></a>
            </li>
            <span class="layui-nav-bar" style="left: 0px; top: 55px; width: 0px; opacity: 0;"></span></ul>
        <ul class="layui-nav fly-nav-user">
            <!-- 未登入的状态 -->
            <li class="layui-nav-item">
                <a class="iconfont icon-touxiang layui-hide-xs" href="javascript:void(0);" data-pjax=""></a>
            </li>
            <li class="layui-nav-item"><a href="javascript:void(0);" data-pjax="">登录</a></li>
            <li class="layui-nav-item"><a href="javascript:void(0);" data-pjax="">注册</a></li>
            <span class="layui-nav-bar"></span></ul>
    </div>
</div>

<div class="page-loading">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>