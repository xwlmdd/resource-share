<html  xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all" />
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
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
           <div class="demoTable" >
               <form action="${request.contextPath}/ebook/getAllEbook" id="pageForm">
                   <div class="layui-inline">
                       <input class="layui-input" name="id" id="demoReload" autocomplete="off">
                   </div>
                   <button type="submit" class="layui-btn" data-type="reload">搜索</button>
               </form>
           </div>

           <div class="layui-form">
               <table class="layui-table">
                   <colgroup>
                       <col width="5%">
                       <col width="15%">
                       <col width="20%">
                       <col width="10%">
                       <col width="10%">
                       <col width="10%">
                       <col width="10%">
                       <col>
                   </colgroup>
                   <thead>
                   <tr>
                       <th>ID</th>
                       <th>书名</th>
                       <th>下载地址</th>
                       <th>中英文</th>
                       <th>状态</th>
                       <th>时间</th>
                       <th>上架/下架</th>
                   </tr>
                   </thead>
                   <tbody>
                   <#if paginator??>
                       <#list paginator.list as ebook>
                           <tr>
                               <td>${ebook.id}</td>
                               <td>${ebook.ebookName}</td>
                               <td>${ebook.downloadUrl}</td>
                               <td>${ebook.isChinese}</td>
                               <td>${ebook.isPublish}</td>
                               <td></td>
                               <td>
                                   上架/下架
                               </td>
                           </tr>
                       </#list>
                   </#if>
                   </tbody>
               </table>
           </div>

           <!-- 分页 -->
       <#include "common/pagination.ftl">
           <!-- 底部 -->
       <#include "common/footer.ftl">
       </div>

   </div>
<script type="text/javascript" src="../layui/layui.js"></script>
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</body>
</html>