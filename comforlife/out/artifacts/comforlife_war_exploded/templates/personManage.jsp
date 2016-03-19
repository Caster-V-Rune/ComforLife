
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.UserEntity" %>
<%@ page import="com.NewsEntity" %>
<%@ page import="com.RenthomeEntity" %>
<!DOCTYPE html>
<html>
<head>
    <%  List saleHomeId = (List)request.getAttribute("saleHomeId");
        List saleHomeInfo = (List)request.getAttribute("saleHomeInfo");
        List rentHomeId = (List)request.getAttribute("rentHomeId");
        List rentHomeInfo = (List)request.getAttribute("rentHomeInfo");
        List news = (List)request.getAttribute("news");
        List personalInfo = (List)request.getAttribute("personalInfo");
        UserEntity user = (UserEntity)personalInfo.get(0);
    %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title> <% out.println(user.getName()); %>  </title>


    <link rel="stylesheet" href="assets/css/team.css">


    <link href="assets/css/index.css" rel="stylesheet">
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

    <!--上边都是导航和边框-->



    <div id="page-wrapper">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" ><strong>Hi ! 亲爱的<a href="#"><% out.println(user.getName());%> </a></strong></h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <div class="row">
            <div class="col-lg-8">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-clock-o fa-fw"></i> <strong>历史记录</strong>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <ul class="timeline">
                            <li>
                                <div class="timeline-badge"><i class="fa fa-check"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        <p><small class="text-muted"><i class="fa fa-clock-o"></i> 11 hours ago via Twitter</small>
                                        </p>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero laboriosam dolor perspiciatis omnis exercitationem. Beatae, officia pariatur? Est cum veniam excepturi. Maiores praesentium, porro voluptas suscipit facere rem dicta, debitis.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-badge warning"><i class="fa fa-credit-card"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem dolorem quibusdam, tenetur commodi provident cumque magni voluptatem libero, quis rerum. Fugiat esse debitis optio, tempore. Animi officiis alias, officia repellendus.</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium maiores odit qui est tempora eos, nostrum provident explicabo dignissimos debitis vel! Adipisci eius voluptates, ad aut recusandae minus eaque facere.</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="timeline-badge danger"><i class="fa fa-bomb"></i>
                                </div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                    </div>
                                    <div class="timeline-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus numquam facilis enim eaque, tenetur nam id qui vel velit similique nihil iure molestias aliquam, voluptatem totam quaerat, magni commodi quisquam.</p>
                                    </div>
                                </div>
                            </li>



                        </ul>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-8 -->
            <div class="col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>便捷服务</strong>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-6 col-md-6">
                                <a href="#"><span class=" fa fa-search fa-align-center" style="font-size: 30px"></span>
                                <p><strong>帮你卖房</strong></p>

                                </a>
                            </div>

                            <div class="col-xs-6 col-md-6">
                                <a href="#" class="thumbnail">
                                    <img src="assets/images/1.jpg" alt="...">
                                </a>
                            </div>

                            <div class="col-xs-6 col-md-6">
                                <a href="#" class="thumbnail">
                                    <img src="assets/images/1.jpg" alt="...">
                                </a>
                            </div>

                            <div class="col-xs-6 col-md-6">
                                <a href="#" class="thumbnail">
                                    <img src="assets/images/1.jpg" alt="...">
                                </a>
                            </div>

                        </div>

                    </div>
                    <!-- /.panel-body -->
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>房产资讯</strong>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="list-group">
                            <%
                                for (int i=0; i<news.size(); i++){
                                    String title = ((NewsEntity)news.get(i)).getTitle();
                                    String desc = ((NewsEntity)news.get(i)).getSummary();
                                    out.println("<a href=\"#\" class=\"list-group-item\">" +
                                                "<h4 class=\"list-group-item-heading\">" + title +
                                                "<p class=\"list-group-item-text\">" + desc +
                                                "</a>"
                                                );
                                }

                            %>


                            <%--<a href="#" class="list-group-item">--%>
                                <%--<h4 class="list-group-item-heading"><% out.println()%></h4>--%>
                                <%--<p class="list-group-item-text">神经病对双方都很费劲</p>--%>
                            <%--</a>--%>
                            <%--<a href="#" class="list-group-item">--%>
                                <%--<h4 class="list-group-item-heading">List group item heading</h4>--%>
                                <%--<p class="list-group-item-text">...</p>--%>
                            <%--</a>--%>

                            <%--<a href="#" class="list-group-item">--%>
                                <%--<h4 class="list-group-item-heading">List group item heading</h4>--%>
                                <%--<p class="list-group-item-text">...</p>--%>
                            <%--</a>--%>
                        </div>


                    </div>

                </div>
            </div>
            <div class="col-lg-12" id="focusRent">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>出租关注</strong>
                    </div>
                    <!-- /.panel-heading -->

                    <div class="panel-body">
                        <div class="row">

                            <%
                                int index = rentHomeInfo.size()<=4 ? rentHomeInfo.size() : 4;
                                for (int i=0; i<index; i++){
                                    int id = ((RenthomeEntity)rentHomeInfo.get(i)).getHomeId();
                                    String href = "/templates/show.action?home_id="+id+"&isrent=1";
                                    out.println(
                                            " <div class='col-xs-6 col-md-3'>"+
                                                    " <a href='"+href+"' class='thumbnail'>"+
                                                    " <img src='assets/images/"+i+".jpg'>"+
                                                    " </a></div>"
                                    );
                                }

                            %>



                            <%--<div class="col-xs-6 col-md-3">--%>
                                <%--<a href="" class="thumbnail">--%>
                                    <%--<img src="assets/images/1.jpg" alt="100%x180">--%>

                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="col-xs-6 col-md-3">--%>
                                <%--<a href="#" class="thumbnail">--%>
                                    <%--<img src="assets/images/1.jpg" alt="">--%>

                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="col-xs-6 col-md-3">--%>
                                <%--<a href="#" class="thumbnail">--%>
                                    <%--<img src="assets/images/1.jpg" alt="">--%>

                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="col-xs-6 col-md-3">--%>
                                <%--<a href="#" class="thumbnail">--%>
                                    <%--<img src="assets/images/1.jpg" alt="">--%>

                                <%--</a>--%>
                            <%--</div>--%>

                        </div>

                    </div>
                    <!-- /.panel-body -->
                </div>

                <!-- /.panel-body -->
            </div>

            <div class="col-lg-12" id="focusSale">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>销售关注</strong>
                    </div>
                    <!-- /.panel-heading -->

                    <div class="panel-body">
                        <div class="row">
                            <%
                                index = rentHomeInfo.size()<=4 ? rentHomeInfo.size() : 4;
                                for (int i=0; i<index; i++){
                                    int id = ((RenthomeEntity)rentHomeInfo.get(i)).getHomeId();
                                    String href = "/templates/show.action?home_id="+id+"&isrent=0";
                                    out.println(
                                            " <div class='col-xs-6 col-md-3'>"+
                                                    " <a href='"+href+"' class='thumbnail'>"+
                                                    " <img src='assets/images/"+i+".jpg'>"+
                                                    " </a></div>"
                                    );
                                }

                            %>
                            <%--<div class="col-xs-6 col-md-3">--%>
                                <%--<a href="#" class="thumbnail">--%>
                                    <%--<img src="assets/images/1.jpg" alt="100%x180">--%>

                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="col-xs-6 col-md-3">--%>
                                <%--<a href="#" class="thumbnail">--%>
                                    <%--<img src="assets/images/1.jpg" alt="">--%>

                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="col-xs-6 col-md-3">--%>
                                <%--<a href="#" class="thumbnail">--%>
                                    <%--<img src="assets/images/1.jpg" alt="">--%>

                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="col-xs-6 col-md-3">--%>
                                <%--<a href="#" class="thumbnail">--%>
                                    <%--<img src="assets/images/1.jpg" alt="">--%>

                                <%--</a>--%>
                            <%--</div>--%>

                        </div>

                    </div>
                    <!-- /.panel-body -->
                </div>

                <!-- /.panel-body -->
            </div>

        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-md-offset-1 widget">
                <div class="widget-body">
                    <p><img alt="知识共享许可协议" style="border-width:0" src="https://o11vcttoe.qnssl.com/images_80x15.png"> 本网站采用 <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">CC BY-NC-SA 4.0 国际许可协议</a>
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