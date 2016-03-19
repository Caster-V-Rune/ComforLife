<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.SaleattentionEntity" %>
<%@ page import="com.UserEntity" %>
<%@ page import="org.apache.catalina.User" %>
<%@ page import="com.SalehomeEntity" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<html><head>
    <base href=" <%=basePath%>">
    <%  List list = (List)request.getAttribute("homeinfo");
        SalehomeEntity home = (SalehomeEntity) list.get(0);
        UserEntity user = (UserEntity)list.get(1);
    %>


    <meta charset="utf-8">
    <title><% out.println(home.getTitle());%></title>
    <meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">

    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/bs-fix.css">
    <link rel="stylesheet" href="assets/css/syt.css">
    <link rel="stylesheet" href="assets/css/shop.css">
    <link rel="stylesheet" href="assets/css/show.css">
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

            </div><!-- /.navbar-collapse -->        </div><!-- /.container-fluid -->
    </nav>

</div>
<div class="zhanwei"></div>

<div class="shop-container">
    <ol class="breadcrumb">
        <li><a href="">宜居</a></li>
        <li><a href="">买房</a></li>
        <li class="active"><a href=""><% out.println(home.getConName());%></a></li>
    </ol>
    <div class="shop-first-row">
        <div class="simg-container">
            <div class="simg-hero-cont">
                <img class="simg-hero" src="<% out.println(home.getCert1());%>">
                <div class="simg-hero-overlay simg-hover-show"></div>
            </div>
            <div class="simg-preview-zoom simg-hover-show" style="background: url(&quot;&quot;) no-repeat;"></div>
            <ul class="simg-list">
                <li class="hover"><img src="<% out.println(home.getCert1());%>"></li>
            </ul>
        </div>
        <div class="shop-right-container">
            <h4><% out.println(home.getTitle());%></h4>
            <hr>
            <div class="shop-description">
                <p>
                    價格:<% out.println(home.getUnitPrice()); %>元/平方米
                </p>
                <hr>
                <p>
                    小區:<% out.println(home.getConName()); %>
                </p>
                <hr>
                <p>
                    交通:<% out.println(home.getBusiArea()); %>
                </p>
                <hr>
                <p>
                    房屋概況:<% out.println(home.getFloor()+"层,"+home.getRoom()+"室"+home.getHall()+"厅"+home.getToilet()+"卫"); %>

                </p>
                <hr>
                <p>
                    面积:<% out.println(home.getFloor());%>平方米
                </p>
                <hr>
                <p>
                    聯繫人:<% out.println(user.getName());%>
                </p>
            </div>
        </div>
    </div>

    <hr>
</div>
<div class="information">
        <div id="info">
            基本信息
        </div>
    <div class="info-table">
        <div class="info-cell">
            <p class="info-type">楼层</p>
            <p class="info-value"><% out.println(home.getFloor());%></p>
        </div>
        <div class="info-cell">
            <p class="info-type">栋号</p>
            <p class="info-value"><% out.println(home.getBuildNum());%></p>
        </div>
        <div class="info-cell">
            <p class="info-type">单元</p>
            <p class="info-value"><% out.println(home.getUnitNum());%></p>
        </div>
        <div class="info-cell">
            <p class="info-type">房间号</p>
            <p class="info-value"><% out.println(home.getRoomNum());%></p>
        </div>

    </div>
        <div class="info-detail">
            <div class="info-poeple">
                <p class="name"><% out.println(user.getName());%></p>
                <p class="phone-number">
                    <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                    聯繫電話:<% out.println(user.getPhone());%>
                </p>
            </div>
            <div class="info-description">
                <p><% out.println(home.getDescri());%></p>

            </div>
        </div>
        <div id="pic"><p>圖片</p></div>
    <div class="pics">
        <%
            if (home.getCert1() != null )
            {
        %>
        <div class="pic-item">
            <img src="<% out.println(home.getCert1());%>" alt="">
        </div>
        <%
            }
        %>
        <%
            if (home.getCert2() != null )
            {
        %>
        <div class="pic-item">
            <img src="<% out.println(home.getCert2());%>" alt="">
        </div>
        <%
            }
        %>
        <%
            if (home.getCert2() != null )
            {
        %>
        <div class="pic-item">
            <img src="<% out.println(home.getCert3());%>" alt="">
        </div>
        <%
            }
        %>

    </div>
        <div id="map-title">地圖</div>
        <div id="map">
        </div>
</div>

<div id="footer">
</div>

<script src="assets/js/jquery-2.1.4.js"></script>
<script src="assets/js/imgscale.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/show.js"></script>
<script src="assets/js/masonry.pkgd.min.js"></script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=kt3NPAS5siry17BPcAgMGBmt"></script>
<script>
    $(function () {
        $('.simg-preview-zoom').imageScaleFrom(
                $('.simg-hero-cont'),
                {
                    'autoScale': true,
                    // 'moveOverlay': $('.simg-hero-overlay'),
                    'moveCallback': function (rect) {
                        $('.simg-hero-overlay').css({
                            'width': rect['width'],
                            'height': rect['height'],
                            'top': rect['top'],
                            'left': rect['left']
                        });
                    }
                });

        $('.simg-hero-cont').hover(
                function () { $('.simg-hover-show').addClass('hover'); },
                function () { $('.simg-hover-show').removeClass('hover'); });

        $('.simg-list li').hover(function () {
            $('.simg-list li').removeClass('hover');
            $(this).addClass('hover');

            $('.simg-hero').attr('src', $(this).children('img')[0].src);
            $('.simg-preview-zoom').imageScaleUpdate();
        });
    });
    $(function(){
        var map = new BMap.Map('map');
        var p = new BMap.Point(<% out.println(home.getLatlng());%>);
        map.centerAndZoom(p, 18);
        map.addControl(new BMap.MapTypeControl());
        map.enableScrollWheelZoom(true);
        var marker = new BMap.Marker(p);
        map.addOverlay(marker);              
        marker.setAnimation(BMAP_ANIMATION_BOUNCE);
        marker.disableDragging();
    });
    $(function(){
        $('.pics').masonry({
            // options
            itemSelector: '.pic-item',
            columnWidth: $('.pics').width()/2,
        });
    });
</script>



  

</body></html>