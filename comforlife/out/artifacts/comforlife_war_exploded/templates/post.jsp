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
    <title>標題</title>
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
                    <li><a href="">登錄</a></li>
                    <li><a href="">註冊</a></li>
                </ul>

                <%
                }
                else
                {
                %>

                <%=s.getAttribute("user") %>
                <%
                    }
                %>




            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

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
</body>
</html>