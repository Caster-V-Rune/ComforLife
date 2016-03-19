<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>團隊展示</title>
    <link rel="stylesheet" href="assets/css/bootstrap.css">

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
    <script src="assets/js/jquery-2.1.4.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>