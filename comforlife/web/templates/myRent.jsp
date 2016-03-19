<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="org.apache.catalina.User" %>
<%@ page import="com.UserEntity" %>
<%@ page import="com.RenthomeEntity" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<!DOCTYPE html>
<%
    List homeInfo = (List)request.getAttribute("myRentHomeInfo");
    List utmp = (List)request.getAttribute("userInfo");
    UserEntity user = (UserEntity)utmp.get(0);
%>
<html>
<head>
    <base href=" <%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>myRent</title>



    <!-- Bootstrap Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="assets/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="assets/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="assets/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="assets/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>



<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation" style="margin-bottom: 0">

        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="">ComforLife</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class=""><a href="">找租房</a></li>
                    <li><a href="">买新房</a></li>
                    <li><a href="">买二手房</a></li>
                    <li><a href="">新闻</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="personManage.html"><i class="fa fa-user fa-fw"></i> 用户账户</a>
                            </li>
                            <li><a href="userInfo.html"><i class="fa fa-gear fa-fw"></i> 设置</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> 退出登录</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->

        <!-- /.navbar-header -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="personManage.html"><i class="fa fa-user fa-fw"></i> 个人首页</a>
                    </li>
                    <li>
                        <a href="userInfo.html"><i class="fa fa-edit fa-fw"></i> 账户设置</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-dashboard fa-fw"></i> 信息发布<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="myRent.html">我的租房</a>
                            </li>
                            <li>
                                <a href="mySale.html">我的售房</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-star fa-fw"></i> 关注中心<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="personManage.html#focusRent">出租关注</a>
                            </li>
                            <li>
                                <a href="personManage.html#focusSale">销售关注</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>



                    <li>
                        <a href="#"><i class="fa fa-home fa-fw"></i> 客服电话<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <br>
                                <p style="color: #337ab7" align="center">
                                    <strong>184-2836-8006</strong>
                                    <br>
                                    (9:00-18:00)
                                </p>


                            </li>

                        </ul>
                        <!-- /.nav-second-level -->
                    </li>


                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <div id="page-wrapper">


        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">我的租房</h1>
            </div>

        </div>
        <div class="container-fluid">
            <%
                if (homeInfo.size()==0){
                    out.println("穷光蛋......");
                }else{
                    int index = (homeInfo.size()>2? 2:homeInfo.size());
                    RenthomeEntity e;
                    for (int i=0; i<index; i++){
                        e = (RenthomeEntity)homeInfo.get(i);
                        String url = "/templates/show.action?home_id="+e.getHomeId()+"&isrent=1";
                        out.println(
                                " <div class='row'>\n" +
                                        "\n" +
                                        "\n" +
                                        "                <div class='shop-container'>\n" +
                                        "                    <ol class='breadcrumb'>\n" +
                                        "                        <li class='active'><a href='"+url+"'>"+e.getTitle()+"</a></li>\n" +
                                        "                    </ol>\n" +
                                        "\n" +
                                        "\n" +
                                        "                <div class='col-lg-12'>\n" +
                                        "                    <div class='col-lg-5'>\n" +
                                        "                        <div class='simg-container'>\n" +
                                        "                            <div class='simg-hero-cont'>\n" +
                                        "                                <a href=''><img class='simg-hero' src='assets/images/6.jpg' width='350px' height='350px' ></a>\n" +
                                        "                                <div class='simg-hero-overlay simg-hover-show' style='width: 0px; height: 0px; top: 0px; left: 0px;'></div>\n" +
                                        "                            </div>\n" +
                                        "\n" +
                                        "                        </div>\n" +
                                        "                    </div>\n" +
                                        "                    <div class='col-lg-7'>\n" +
                                        "                        <h4>"+e.getTitle()+"</h4>\n" +
                                        "                        <hr>\n" +
                                        "                        <div class='shop-description'>\n" +
                                        "                            <p>\n" +
                                        "                                價格:"+e.getRentNum()+
                                        "                            </p>\n" +
                                        "                            <hr>\n" +
                                        "                            <p>\n" +
                                        "                                小區:"+e.getConName()+
                                        "                            </p>\n" +
                                        "                            <hr>\n" +
                                        "                            <p>\n" +
                                        "                                交通:"+e.getBusiArea()+
                                        "                            </p>\n" +
                                        "                            <hr>\n" +
                                        "                            <p>\n" +
                                        "                                房屋概況: 面积"+e.getArea()+" 房间数"+e.getRoomNum()+
                                        "                            </p>\n" +
                                        "                            <hr>\n" +
                                        "                            <p>\n" +
                                        "                                配套設施: "+e.getDescri()+
                                        "                            </p>\n" +
                                        "                            <hr>\n" +
                                        "                            <p>\n" +
                                        "                                聯繫人:" +user.getPhone()+
                                        "                            </p>\n" +
                                        "                        </div>\n" +
                                        "                    </div>\n" +
                                        "                </div>\n"
                        );
                    }
                }
            %>
            <%--<div class="row">--%>


                <%--<div class="shop-container">--%>
                    <%--<ol class="breadcrumb">--%>
                        <%--<li class="active"><a href="">blahblah</a></li>--%>
                    <%--</ol>--%>


                <%--<div class="col-lg-12">--%>
                    <%--<div class="col-lg-5">--%>
                        <%--<div class="simg-container">--%>
                            <%--<div class="simg-hero-cont">--%>
                                <%--<a href=""><img class="simg-hero" src="assets/images/6.jpg" width="350px" height="350px" ></a>--%>
                                <%--<div class="simg-hero-overlay simg-hover-show" style="width: 0px; height: 0px; top: 0px; left: 0px;"></div>--%>
                            <%--</div>--%>

                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-lg-7">--%>
                        <%--<h4>blahblah</h4>--%>
                        <%--<hr>--%>
                        <%--<div class="shop-description">--%>
                            <%--<p>--%>
                                <%--價格:blahblah--%>
                            <%--</p>--%>
                            <%--<hr>--%>
                            <%--<p>--%>
                                <%--小區:blahblah--%>
                            <%--</p>--%>
                            <%--<hr>--%>
                            <%--<p>--%>
                                <%--交通:blahblah--%>
                            <%--</p>--%>
                            <%--<hr>--%>
                            <%--<p>--%>
                                <%--房屋概況:blahblah--%>
                            <%--</p>--%>
                            <%--<hr>--%>
                            <%--<p>--%>
                                <%--配套設施:blahblah--%>
                            <%--</p>--%>
                            <%--<hr>--%>
                            <%--<p>--%>
                                <%--聯繫人:blahblah--%>
                            <%--</p>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<hr>--%>
                <%--</div>--%>
                <%--<hr>--%>

            <%--</div>--%>
            <%--<div class="row">--%>


                <%--<div class="shop-container">--%>
                    <%--<ol class="breadcrumb">--%>
                        <%--<li class="active"><a href="">blahblah</a></li>--%>
                    <%--</ol>--%>


                    <%--<div class="col-lg-12">--%>
                        <%--<div class="col-lg-5">--%>
                            <%--<div class="simg-container">--%>
                                <%--<div class="simg-hero-cont">--%>
                                    <%--<a href=""><img class="simg-hero" src="assets/images/6.jpg" width="350px" height="350px" ></a>--%>
                                    <%--<div class="simg-hero-overlay simg-hover-show" style="width: 0px; height: 0px; top: 0px; left: 0px;"></div>--%>
                                <%--</div>--%>

                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-lg-7">--%>
                            <%--<h4>blahblah</h4>--%>
                            <%--<hr>--%>
                            <%--<div class="shop-description">--%>
                                <%--<p>--%>
                                    <%--價格:blahblah--%>
                                <%--</p>--%>
                                <%--<hr>--%>
                                <%--<p>--%>
                                    <%--小區:blahblah--%>
                                <%--</p>--%>
                                <%--<hr>--%>
                                <%--<p>--%>
                                    <%--交通:blahblah--%>
                                <%--</p>--%>
                                <%--<hr>--%>
                                <%--<p>--%>
                                    <%--房屋概況:blahblah--%>
                                <%--</p>--%>
                                <%--<hr>--%>
                                <%--<p>--%>
                                    <%--配套設施:blahblah--%>
                                <%--</p>--%>
                                <%--<hr>--%>
                                <%--<p>--%>
                                    <%--聯繫人:blahblah--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<hr>--%>
                <%--</div>--%>

            <%--</div>--%>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!--footer-->

</div>

<!-- jQuery -->
<script src="assets/js/jquery-2.2.1.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="assets/js/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="assets/js/raphael-min.js"></script>
<!--<script src="assets/js/morris.min.js"></script>-->
<!--<script src="assets/js/morris-data.js"></script>-->

<!-- Custom Theme JavaScript -->
<script src="assets/js/sb-admin-2.js"></script>
</body>
</html>