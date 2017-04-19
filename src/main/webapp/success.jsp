<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2017/4/14
  Time: 下午1:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>登陆成功</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <br>
    <br>
    <br>
    <div class="row">
        <div class="col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4 text-center">
            <h2 class="text-success">登陆成功</h2>
        </div>
    </div>
    <br>
    <br>
    <div class="row">
        <div class="col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4 ">
            <p class="bg-success">
                欢迎<span class="bg-danger">${user.username}</span>，您已登陆成功！
            </p>
            <br>
            <br>
            <p class="text-right">
                <a href="logout.html">退出</a>
            </p>
        </div>
    </div>
</div>

</body>
</html>