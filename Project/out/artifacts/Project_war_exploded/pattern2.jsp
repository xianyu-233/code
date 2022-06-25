<%--
  Created by IntelliJ IDEA.
  User: lzp
  Date: 2022/6/19
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>测试模式二</title>
        <style type="text/css">
            @import url("Resource/Bootstrap/bootstrap.css");
        </style>

    </head>

    <body>
    <%--检查脚本--%>
    <script>
        window.onload = check;
        function check() {
            var TestNum = 0;
            TestNum = ${TestNum};
            var button = document.getElementById("Result");
            if(TestNum >= 9)
                button.disabled = false
        }
    </script>

    <div class="container p-5 my-5 border">
        <div class="container pt-5">
            <div style="text-align: center">
                <p>请选择认识或不认识进行测试</p>
                <p class="text-info">请至少选择10个单词后才能查看结果</p>
            </div>
            <div class="container p-5 my-5 border">
                <div style="text-align: center">
                    <h1>${wordName}</h1>
                </div>
            </div>


            <div class="container mt-3">
                <div style="text-align: center">
                    <form action='${pageContext.request.contextPath}/Test' method='post'>
                        <button name="botton" type="submit" class="btn btn-primary btn-lg" value="1" >认识</button>
                        <button name="botton" type="submit" class="btn btn-primary btn-lg" value="2" >不认识</button>
                    </form>
                </div>
                <br>
                <br>
                <div style="text-align: center">
                    <form id="checkResult" action='${pageContext.request.contextPath}/result2' method='post'>
                        <button id="Result" type="submit" class="btn btn-primary btn-lg" disabled="true" >查看结果</button>
                    </form>
                </div>
            </div>

        </div>
    </div>

    </body>
</html>
