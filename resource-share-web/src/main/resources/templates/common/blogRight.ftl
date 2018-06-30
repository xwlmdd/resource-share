<div class="page_right">
    <div class="second_categorys_container">
        <h3>栏目导航</h3>
        <ol class="seond_category trans_3">
            <li><a href="${request.contextPath}/blog/getAllBlog?kind=JAVA基础"
                   class="layui-btn layui-btn-primary trans_1">JAVA基础</a></li>
            <li><a href="${request.contextPath}/blog/getAllBlog?kind=Spring"
                   class="layui-btn layui-btn-primary trans_1">Spring</a></li>
            <li><a href="${request.contextPath}/blog/getAllBlog?kind=数据库"
                   class="layui-btn layui-btn-primary trans_1">数据库</a></li>
            <li><a href="${request.contextPath}/blog/getAllBlog?kind=Docker"
                   class="layui-btn layui-btn-primary trans_1">Docker</a></li>
            <li><a href="${request.contextPath}/blog/getAllBlog?kind=微服务"
                   class="layui-btn layui-btn-primary trans_1">微服务</a></li>
        </ol>
    </div>

    <div class="recommend_list">
        <h3>推荐文章</h3>
    <#if recommendBlogs??>
        <ol class="page_right_list trans_3">
            <#list recommendBlogs as recommendBlog>
                <li>
                    <a href="getBlogDetail?id=${recommendBlog.id}">
                            ${recommendBlog.title}
                        </a>
                        <span class="hits"> 853 </span>
                </li>

            </#list>
        </ol>
    </#if>
    </div>

    <div class="mobile_qrcode_container">
        <h3>手机扫码访问</h3>
        <div class="mobile_qrcode wechat_qrcode trans_3">
            <style type="text/css">
                #qrcode {
                    width: 100%;
                    height: 100%;
                }

                #qrcode img {
                    width: 100%;
                    height: 100%;
                }
            </style>
            <div id="qrcode" title="http://www.phplaozhang.com/article-lists/8.html">
                <canvas width="300" height="300" style="display: none;"></canvas>
                " style="display: block;">
            </div>
        </div>
    </div>
</div>
<div class="clear"></div>