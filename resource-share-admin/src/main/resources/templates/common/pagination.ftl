
<style>
    ul.pagination {
        display: inline-block;
        padding: 0;
        margin: 0;
    }

    ul.pagination li {display: inline;}

    ul.pagination li a {
        color: black;
        float: left;
        padding: 8px 16px;
        text-decoration: none;
        transition: background-color .3s;
        border: 1px solid #ddd;
    }

    ul.pagination li a.active {
        background-color: #4CAF50;
        color: white;
        border: 1px solid #4CAF50;
    }

    ul.pagination li a:hover:not(.active) {background-color: #ddd;}
</style>

<#if paginator??>
	<div class="row">
		<form method="post" action="" id="pageDefaultForm" style="display: none">
            <input type='hidden' name='limit' value='2'>
		</form>
		<ul class="pagination">
            <li><a href="javascript:void(0);"  pageNo='1'>首页</a></li>
			<li><a href="javascript:void(0);"  pageNo='${paginator.prePage}'>«</a></li>
			<#list paginator.navigatepageNums as index>
				<li>
					<a href="javascript:void(0);" pageNo='${index}' <#if paginator.pageNum == index>class="active"</#if>>${index}</a>
				</li>
			</#list>
			<li><a href="javascript:void(0);"  pageNo='${paginator.nextPage}'>»</a></li>
            <li><a href="javascript:void(0);"  pageNo='${paginator.pageSize}'>末页</a></li>
		</ul>
	</div>
</#if>

<script type="text/javascript" src="${request.contextPath}/js/jquery-1.8.2.min.js"></script>
<script>
    $(function() {
        $(".pagination li a").click(function() {
            filp($(this).attr("pageNo"));
        });
//        $("#pageLimitSelect").change(function() {
//            filp(1);
//        });
        function filp(page) {
            var $form = $("#pageForm");//比如你有搜索条件要上传，只要把你form的id设为pageForm就行了;
            if ($form.length == 0) {//如果没有有id为pageForm表单，就启用默认表单
                $form = $("#pageDefaultForm")
            }
            $form.append("<input type='hidden' name='page' value='" + page + "'>");
            $form.append("<input type='hidden' name='limit' value='2'>");
            $form.submit();
        }
    });
</script>
