<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../base/path.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>查询供应商信息</title>
    <jsp:include page="../../base/hb-headc.jsp" flush="true"></jsp:include>
    <jsp:include page="../../base/hb-footj.jsp"></jsp:include>
    <!--<script type="text/javascript" src="/dt-page/extjs.js"></script>-->
</head>
<body>
<div class="page-content">

    <div class="page-header">
        <h1>
            系统管理
            <small><i class="icon-double-angle-right"></i> 供应商信息</small>
        </h1>
    </div>
    <!-- PAGE CONTENT BEGINS -->
    <div class="row">
        <div class="col-xs-12">
            <table id="example" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th>供应商名称</th>
                    <th>供应商类型</th>
                    <th>电话号码</th>
                    <th>地址</th>
                    <th>备注</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody></tbody>
                <!-- tbody是必须的 -->
            </table>


        </div>
        <!-- Button trigger modal -->
    </div>
    <%@ include file="edit2.jsp" %>
</div>
<!--定义操作列按钮模板-->
<script id="spInfotpl" type="text/x-handlebars-template">
    {{#each func}}
        <button type="button" class="btn btn-{{this.type}} btn-sm" onclick="{{this.fn}}">{{this.name}}</button>
    {{/each}}
</script>
</body>
</html>
<script type="text/javascript" src="<%=path%>/resources/js/interfaces/system/sp/sp.js?v=<%=version%>"></script>
