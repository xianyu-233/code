<%--
  Created by IntelliJ IDEA.
  User: lzp
  Date: 2022/6/13
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>单词测试网站</title>
      <style>


          div.center
          {
              text-align: center;
          }
          a.button
          {
              background-color:aquamarine;
              border: none;
              color: blue;
              padding: 15px 100px;
              text-align: center;
              text-decoration: none;
              display: inline-block;
              font-size: 30px;
              margin: 4px 2px;
              cursor: pointer;
              /* 边角角度 */
              border-radius: 10px;
              /* 透明度 */
              opacity:0.3;
          }
      </style>

      <link rel="shortcut icon"href="Resource/img/滑稽.png">
  </head>


  <body>
     <div><br><br></div>
     <div class="center">
         <form name='form1' action='${pageContext.request.contextPath}/pattern1' method='post'>
             <a class="button" href='javascript:document.form1.submit();'>测量模式一</a>
         </form>
     </div>

     <div class="center">
         <form name='form2' action='${pageContext.request.contextPath}/pattern2' method='post'>
             <a class="button" href='javascript:document.form2.submit();'>测量模式二</a>
         </form>
     </div>
  </body>
</html>
