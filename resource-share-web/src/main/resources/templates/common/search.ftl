<!--search start-->
<div class="layui-search">
    <div class="layui-container">
        <div class="layui-row layui-module" style="padding-right: 15px;">
            <form action="http://www.ivusic.com/index/news/index.html" class="layui-form layui-col-space15">
                <div class="layui-col-md2">
                    <input type="text" name="keywords" value="" placeholder="请输入资讯标题" autocomplete="off"
                           class="layui-input">
                </div>
                <div class="layui-col-md2">
                    <select name="cate" lay-verify="required" class="layui-input">
                        <option value="">全部分类</option>
                        <option value="8">站内原创</option>
                        <option value="9">视觉设计</option>
                        <option value="1">编程之道</option>
                        <option value="2">前端开发</option>
                        <option value="3">PHP技巧</option>
                        <option value="4">技术要点</option>
                        <option value="5">微信热文</option>
                        <option value="6">经验总结</option>
                    </select>
                </div>
                <div class="layui-col-md6">
                    <button type="submit" class="layui-btn layui-btn-info self-btn">搜你想搜</button>
                </div>
            </form>

        </div>
    </div>
</div>
<!--search end-->