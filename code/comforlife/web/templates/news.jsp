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
	<meta charset="utf-8">
	<title>News</title>
	<meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
	
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/font-awesome.css">
	<link rel="stylesheet" href="assets/css/bs-fix.css">
	<link rel="stylesheet" href="assets/css/news.css">

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
					<ul class="nav navbar-nav navbar-right">
						<li><a href="">登錄</a></li>
						<li><a href="">註冊</a></li>
					</ul>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>

	</div>
	<div class="zhanwei"></div>
	<div class="news-container">
		<ol class="breadcrumb">
			<li><a href="/struts/index.action">宜居</a></li>
			<li>新聞</li>
		</ol>

        <c:forEach var="news" items="${newsList}" varStatus="status">
            <div class="news-entry">
                <div class="news-top">
                    <h3><a href="/struts/news?id=${news.id}">${news.title}</a></h3>
                    <div class="news-date">${news.time}</div>
                </div>
                <div class="news-bottom">
                    <p class="news-summary">
                            ${news.summary}
                    </p>
                    <a href="/struts/news.action?id=${news.id}">
                        <button class="btn news-fullbtn">阅读全文</button>
                    </a>
                </div>
            </div>
        </c:forEach>


        <p class="page-selection text-center"></p>
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

	<script src="assets/js/jquery-2.2.1.min.js"></script>
	<script src="assets/js/jquery.bootpag.min.js"></script>
    <script>
        var allpages = $('.news-entry');
        var allpages_number = allpages.length;
        $(allpages).hide();
        for(var i = 0; i < 10; i++){
            $(allpages[i]).show();
        }
        $('.page-selection').bootpag({
            total: Math.ceil(allpages_number/10),
            maxVisible: 10
        }).on("page", function(event, num){
            $(allpages).hide();
            for(var i = 0; i < 10; i++){
                $(allpages[i+(num-1)*10]).show();
            }
        });
    </script>



</body>
</html>