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
    <title>登陆</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <br>
    <br>
    <div class="row text-center">
        <h2 class="text-info">登陆</h2>
    </div>
    <br>
    <div class="row">
        <div class="col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4 text-center">
            <form class="form-horizontal" action="dologin.html" method="post">
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">用户名</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="username" placeholder="请输入用户名" name="username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">密码</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="password" placeholder="请输入密码" name="password">
                    </div>
                </div>
                <div class="text-right">
                    <input type="reset" class="btn btn-warning" value="重置">
                    <input type="submit" class="btn btn-primary" value="登陆">
                </div>
            </form>
        </div>
        <div class="col-md-3 col-lg-3">
            <div class="form-group">
                <span class="col-md-12 col-lg-12 form-control-static text-danger">${ERR_username}</span>
            </div>
            <div class="form-group">
                <span class="col-md-12 col-lg-12 form-control-static text-danger">${ERR_password}</span>
            </div>
        </div>
    </div>
    <br>
    <br>
    <div class="row">
        <div class="col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4">
            <p>
                用户名：<span class="lead">admin</span>
            </p>
            <p>
                密&nbsp;&nbsp;码：<span class="lead">123</span>
            </p>
        </div>
    </div>
</div>
</body>
</html>