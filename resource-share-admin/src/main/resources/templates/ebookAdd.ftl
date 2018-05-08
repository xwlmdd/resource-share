<html  xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../css/main.css" media="all" />
</head>
<body class="main_body">
<div class="layui-layout layui-layout-admin" >
    <!-- 顶部 -->
    <#include "common/header.ftl">
    <!-- 左侧导航 -->
    <#include "common/leftNav.ftl">
    <!-- 右侧内容 -->
    <div class="show data" style="padding-left: 18%;padding-right: 5%">
        <fieldset class="layui-elem-field layui-field-title" >
            <legend>添加数据</legend>
        </fieldset>

        <form class="layui-form layui-form-pane" action="${request.contextPath}/ebook/addEbook" method="post" style="margin-left: 5%">
            <div class="layui-form-item">
                <label class="layui-form-label">书名：</label>
                <div class="layui-input-inline">
                    <input type="text" name="ebookName" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">分类：</label>
                <div class="layui-input-block">
                    <select name="kind" lay-filter="aihao">
                        <option value="java">java</option>
                        <option value="mysql">mysql</option>
                        <option value="redis">redis</option>
                        <option value="算法">算法</option>
                        <option value="面试">面试</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">推荐指数：</label>
                <div class="layui-input-block">
                    <select name="score" lay-filter="aihao">
                        <option value="1">一颗星</option>
                        <option value="2">二颗星</option>
                        <option value="3">三颗星</option>
                        <option value="4">四颗星</option>
                        <option value="5">五颗星</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">是否中文：</label>
                <div class="layui-input-block">
                    <select name="isChinese" lay-filter="aihao">
                        <option value="1">中文</option>
                        <option value="2">英文</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">下载地址：</label>
                <div class="layui-input-block">
                    <input type="text" name="downloadUrl" autocomplete="off" placeholder="请输入标题" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">图片地址：</label>
                <div class="layui-input-block">
                    <input type="text" name="picUrl" autocomplete="off" placeholder="请输入标题" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">目录</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入内容" name="catalog" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn" lay-submit="" lay-filter="demo2">提交</button>
            </div>
        </form>
    </div>
</div>
<!-- 底部 -->
<#include "common/footer.ftl">
<script type="text/javascript" src="../layui/layui.js"></script>
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
        });


        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });


    });
</script>

</body>
</html>