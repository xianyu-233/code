<%--
  Created by IntelliJ IDEA.
  User: lzp
  Date: 2022/6/19
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试结果</title>
    <style type="text/css">
        @import url("Resource/Bootstrap/bootstrap.css");
    </style>
</head>
<body>
<div class="container p-5 my-5 border">
    <div class="container pt-5">
        <div style="text-align: center">
            <h1 >你认识的单词数量大约为：${wordsNum}</h1>
            <h2>测试单词总数数为：${num}</h2>
            <h2>认识的单词数为${knowNum},认识率为：${accuracy}%</h2>
            <a  class="btn btn-primary" href="index.jsp">返回首页</a>
        </div>
    </div>
</div>
</body>
</html>
