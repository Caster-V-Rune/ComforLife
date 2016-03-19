<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <base href=" <%=basePath%>">
    <meta charset="UTF-8">
    <title>${Title}</title>
    <link rel="stylesheet" href="assets/css/post.css" charset="utf-8">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/css/newspost.css" charset="utf-8">
</head>
<body>
    <div class="header">
    <nav class="navbar navbar-default">
    <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
    <a class="navbar-brand" href="">ComforLife</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
    <li class=""><a href="/struts/search.action?kw=&type=1&rentPay=0&salePay=0&room=0&rentType=0">找租房</a></li>
    <li><a href="/struts/search.action?kw=&type=0&rentPay=0&salePay=0&room=0&rentType=0">買新房</a></li>
    <li><a href="/struts/search.action?kw=&type=2&rentPay=0&salePay=0&room=0&rentType=0">買二手房</a></li>
    <li><a href="/struts/newsList.action">新聞</a></li>
    </ul>

        <%
                    HttpSession s = request.getSession(false);
                    if (s.getAttribute("user") == null)
                    {
                    System.out.print("123");
                    %>

    <ul class="nav navbar-nav navbar-right">
    <li><a data-toggle="modal" data-target="#login">登錄</a></li>
    <li><a data-toggle="modal" data-target="#signup">註冊</a></li>
    </ul>

        <%
                    }
                    else
                    {
                    %>

        <%=s.getAttribute("user") %>

    <ul class="nav navbar-nav navbar-right">
    <li><a href='/templates/user?user_id=<%=s.getAttribute("id") %>'><%=s.getAttribute("user") %></a></li>
    <li><a href='/struts/delSession.action'>註銷</a></li>
    </ul>
        <%
                    }
                    %>


    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
    </nav>

    </div><!-- Modal -->
    <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="login">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title" id="login-label">用户登陆</h4>
    </div>
    <div class="modal-body">
    <form action="/struts/denglu.action" id="loginform">
    <div class="form-group">
    <label for="lemail">邮箱</label>
    <input name = "username" type="email" class="form-control" id="lemail" placeholder="邮箱">
    </div>
    <div class="form-group">
    <label for="lpassword">密码</label>
    <input  name = "password" type="password" class="form-control" id="lpassword" placeholder="密码">
    </div>
    </form>
    </div>
    <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
    <button type="button" class="btn btn-primary loginbtn">登陆</button>
    </div>
    </div>
    </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="signup">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title" id="signup-label">用户注册</h4>
    </div>
    <div class="modal-body">
    <form action="/struts/zhuce.action" id="signupform">
    <div class="form-group">
    <label for="semail">邮箱</label>
    <input name = "username" type="email" class="form-control" id="semail" placeholder="邮箱">
    </div>
    <div class="form-group">
    <label for="spassword">密码</label>
    <input name = "password"  type="password" class="form-control" id="spassword" placeholder="密码">
    </div>
    <div class="form-group">
    <label for="confirm">确认密码</label>
    <input type="password" class="form-control" id="confirm" placeholder="确认密码">
    </div>
    <div class="form-group">
    <label for="name">姓名</label>
    <input name="name" type="email" class="form-control" id="name" placeholder="姓名">
    </div>
    <div class="form-group">
    <label for="phone">手机</label>
    <input name="phone" type="text" class="form-control" id="phone" placeholder="手机">
    </div>
    <div class="form-group">
    <label for="check">验证码</label>
    <div class="input-group">
    <input name="identifyingCode" type="text" class="form-control" id="check" placeholder="验证码">
    <span class="input-group-btn">
    <button class="btn btn-default check-btn" type="button">发送验证码</button>
    </span>
    </div>
    </div>
    </form>
    </div>
    <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
    <button type="button" class="btn btn-primary signupbtn">注册</button>
    </div>
    </div>
    </div>
    </div>
<div class="zhanwei"></div>
<div id="container">
    <div id="main">
        <div id="post" class="sticky-menu">
            <div class="inner clearfix">
                <div class="document prose">
                    <div class="surface preview">
                        <div class="content-preview-wrapper">
                            <div class="content-preview">
                                <div class="post-content" style="white-space: normal;">
                                    <h1 style="font-weight: 900">${Title}</h1>
                                    <div style="font-size: xx-small;" class="col-md-12">
                                        <div class="col-md-6">
                                            <p>${Time}</p>
                                        </div>
                                        <div class="col-md-6">
                                            <p>${Author}</p>
                                        </div>
                                    </div>

                                    <p>${Desc}</p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-md-offset-1 widget">
                <div class="widget-body">
                    <p>
                        <img alt="知识共享许可协议" style="border-width:0" src="https://o11vcttoe.qnssl.com/images_80x15.png">
                        本网站采用
                        <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">CC BY-NC-SA 4.0 国际许可协议</a>
                    </p>
                </div>
            </div>
            <div class="col-md-5 widget">
                <div class="widget-body">
                    <p class="text-right">
                        Copyright © 2016 ComforLive
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="assets/js/jquery-2.1.4.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/masonry.pkgd.min.js"></script>
<script src="assets/js/json2.js"></script>
<script src="assets/js/jquery-ui.min.js"></script>
    <script>
    $(function(){
    $('.loginbtn').on('click', function(){
    $('#loginform').submit();
    });
    $('.signupbtn').on('click', function(){
    $('#signupform').submit();
    });
    });
    $(function(){
    var wait = 60;
    function time() {
    if (wait == 0) {
    $('.check-btn').removeAttr("disabled");
    $('.check-btn').html("發送驗證碼");
    wait = 60;
    } else {
    $('.check-btn').attr("disabled", "disabled");
    $('.check-btn').html("重新發送(" + wait + ")");
    wait--;
    setTimeout(function() {
    time()
    },
    1000)
    }
    }
    $('.check-btn').on('click', function(){
    var username = $('input#semail').val();
    $.ajax({
    type: 'POST',
    url: '/struts/yanzheng.action',
    data: {
    username: username
    },
    success: function(){
    time();
    }

    });
    });
    });
    </script>

    </body>
</html>