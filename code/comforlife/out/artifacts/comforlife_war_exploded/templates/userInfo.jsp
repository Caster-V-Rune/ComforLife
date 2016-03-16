<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";

    HttpSession s = request.getSession(false);
    if (s.getAttribute("user") == null)
    {
        System.out.print("123");
    }
%>
<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-tags.tld" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <base href=" <%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>userInfo</title>


    <link rel="stylesheet" href="assets/css/team.css">



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
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8">
                    <h1 class="page-header"><strong>用户信息</strong></h1>
                </div>

                <div class="col-lg-10">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>密码修改</strong>
                        </div>
                        <div class="panel-body">
                            <div class="row">



                                <!-- /.col-lg-6 (nested) -->
                                <form class="form-horizontal" >
                                    <div class="form-group">
                                        <label for="newpass" class="col-sm-2 control-label">新密码：</label>
                                        <div class="col-sm-4">
                                            <input type="password" name="Password" class="form-control" id="newpass" placeholder="New password (6-18)">

                                        </div>
                                        <div class="col-md-2" style="display: inline" id="tip1"></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="newpassCon" class="col-sm-2 control-label">确认密码：</label>
                                        <div class="col-sm-4">
                                            <input type="password" class="form-control" id="newpassCon" placeholder="Confirm new password">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-6">
                                            <button type="submit" class="btn btn-sm btn-primary passwd-btn">确认</button>
                                        </div>

                                    </div>

                                </form>



                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->

                    <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>信息修改</strong>
                    </div>
                    <div class="panel-body">
                        <div class="row">

                            <form class="form-horizontal" >
                                <div class="form-group">
                                    <label for="infoname" class="col-sm-2 control-label">姓名：</label>
                                    <div class="col-sm-4">
                                        <input name="UserName" class="form-control" id="infoname" placeholder="Name">

                                    </div>
                                    <div class="col-md-2" style="display: inline" id="tip2"></div>
                                </div>
                                <div class="form-group">
                                    <label for="infophone" class="col-sm-2 control-label">联系方式：</label>
                                    <div class="col-sm-4">
                                        <input  name="Phone" class="form-control" id="infophone" placeholder="Phone">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-6">
                                        <p  class="help-block" style="font-size: small">请如实填写用户信息，以方便合作联系！</p>
                                        <button type="submit" class="btn btn-sm btn-primary info-btn" id="info-btn" >确认</button>
                                    </div>

                                </div>

                            </form>


                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>

                    <div class="panel panel-default panel-red">
                        <div class="panel-heading">
                            <strong>注销账户</strong>
                        </div>
                        <div class="panel-body">
                            <div class="row">


                                <form class="form-horizontal">

                                    <div class="form-group">

                                        <div class="col-sm-offset-2 col-sm-6">
                                            <p  class="help-block" style="font-size: small">您一旦注销账户，将无法找回！请慎重考虑</p>

                                            <button type="submit" class="btn btn-sm btn-primary btn-danger" id="cancel-btn" >注销账户</button>
                                        </div>

                                    </div>

                                </form>



                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>

    <!--footer-->
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
<script charset="utf-8">
    $(function(){
        $('#newpass').blur(function() {
            var num = $('#newpass').val().length;
            if (num < 6) {
                $("#tip1").html("<font color=\"red\" size=\"2\">  too short</font>");
            }
            else if (num > 18) {
                $("#tip1").html("<font color=\"red\" size=\"2\">  too long</font>");
            }
            else {
                $("#tip1").html("<font color=\"green\" size=\"2\"> Accept</font>");
            }
        });

        $(".passwd-btn").click(function(){
            var flag=true;

            var pass=$('#newpass').val();
            var pass2=$('#newpassCon').val();
            var num1=$('#newpass').val().length;
            var num2=$('#newpassCon').val().length;
            if(num1!=num2||num1<6||num2<6||num1>18||num2>18||pass!=pass2){
                flag=false;
            }
            else{
                flag=true;
            }
            if(flag){
                alert('密码修改正确！');
                $.ajax({
                    'url':'/struts/changePassword.action',
                    'data':{
                        user_id:<%=s.getAttribute("id") %>,
                        Password: $('#newpass').val()
                    },
                    'method':'POST'

                });
            }
            else{

                alert('确认密码不正确，请重新输入！');
            }
        });



    });
    $(function(){
        $('#infoname').blur(function() {
            var num = $('#infoname').val().length;
            if (num == 0) {
                $("#tip2").html("<font color=\"red\" size=\"2\">  不能为空</font>");
            }

            else {
                $("#tip2").html("<font color=\"green\" size=\"2\"> Accept</font>");
            }
        });

        $('#infophone').blur(function() {
            var num = $('#infohome').val().length;
            if (num == 0) {
                $("#tip3").html("<font color=\"red\" size=\"2\">  不能为空</font>");
            }

            else {
                $("#tip3").html("<font color=\"green\" size=\"2\"> Accept</font>");
            }
        });

        $("#info-btn").click(function(){
            var flag=true;

            var num1=$('#infoname').val().length;
            var num2=$('#infophone').val().length;
            if(num1 == 0 || num2 == 0){
                flag=false;
            }
            else{
                flag=true;
            }
            if(flag){
                alert('信息更改成功');
                $.ajax({
                    'url':'/struts/changeInfor.action',
                    'data':{
                        user_id:<%=s.getAttribute("id") %>,
                        UserName:encodeURI($('#infoname').val()),
                        Phone:$('#infophone').val()

                    },
                    'method':'POST'

                });
            }
            else{

                alert('信息格式不正确，请重新输入！');
            }
        });

    });
    $(function(){
        $("#cancel-btn").click(function(){
            alert('账户已注销！');
            $.ajax({
                'url':'/struts/delUser.action',
                'data':{
                    user_id:<%=s.getAttribute("id") %>
                },
                'method':'POST'

            });
        });
    });


</script>
</body>
</html>