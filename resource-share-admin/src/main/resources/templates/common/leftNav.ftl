<link rel="stylesheet" href="${request.contextPath}/layui/css/layui.css" media="all" />
<!-- 左侧导航 -->
<div class="layui-side layui-bg-black">
    <div class="user-photo">
        <a class="img" title="我的头像"><img src="${request.contextPath}/images/face.jpg"></a>
        <p>你好！<span class="userName"></span>, 欢迎登录</p>
    </div>
    <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:;">书籍管理</a>
            <dl class="layui-nav-child">
                <dd><a href="${request.contextPath}/admin/toEbook" >书籍管理</a></dd>
                <dd><a href="${request.contextPath}/admin/toAddEbook" >上架书籍</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">视频管理</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">上架视频</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">博客管理</a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;">博客查询</a></dd>
            </dl>
        </li>
    </ul>
</div>
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