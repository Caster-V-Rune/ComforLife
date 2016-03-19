<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.SalehomeEntity" %>
<%@ page import="com.RenthomeEntity" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<%
    List saleHome = (List)request.getAttribute("admin4SaleHomeInfo");
    int saleSize = saleHome.size();
    List rentHome = (List)request.getAttribute("admin4RentHomeInfo");
    int rentSize = rentHome.size();

%>


<!DOCTYPE html>
<html lang="en">

<head>
    <base href=" <%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>管理</title>

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

    <link href="assets/css/titatoggle-dist.css" rel="stylesheet">
    <style>
        .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{
            text-align: center;
            vertical-align: middle;
        }
        .checkbox{
            margin-left: auto;
            margin-right: auto;
            width: 40px;
        }
    </style>
</head>

<body>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
            <a class="navbar-brand" href="index.html">ComforLife</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    </div><!-- /.container-fluid -->


    <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 新聞<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="/templates/admin.action?index=0">查看新聞量</a>
                            </li>
                            <li>
                                <a href="/templates/admin.action?index=1">已置頂新聞</a>
                            </li>
                            <li>
                                <a href="/templates/admin.action?index=2">添加新聞</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit fa-fw"></i> 房產管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="/templates/admin.action?index=3">審批房產</a>
                            </li>
                            <li>
                                <a href="/templates/admin.action?index=4">刪除房產</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-user fa-fw"></i> 用戶管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="/templates/admin.action?index=5">刪除用戶</a>
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
                <h1 class="page-header">房產</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        審批房產
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>房產ID</th>
                                    <th>標題</th>
                                    <th>方式</th>
                                    <th>提交人</th>
                                    <th>通過</th>
                                    <th>不通過</th>
                                </tr>
                                </thead>
                                <tbody>

                                <%
                                    if (saleSize>0){
                                        SalehomeEntity s;
                                        for(int i=0; i<saleSize; i++){
                                            s=(SalehomeEntity)saleHome.get(i);
                                            out.println(
                                                        "<tr>"+
                                                        "<td>"+s.getHomeId()+"</td>"+
                                                        "<td><a href=''>"+s.getTitle()+"</a></td>"+
                                                        "<td>sale</td>"+
                                                        "<td>"+s.getUserId()+"</td>"+
                                                        "<td>"+
                                                        "<button type='button' class='btn btn-success btn-xs house-yes'>pass</button>"+
                                                        "</td>"+
                                                        "<td>"+
                                                        "<button type='button' class='btn btn-danger btn-xs house-no'>fail</button>"+
                                                        "</td>"+
                                                        "</tr>"
                                                        );
                                        }
                                    }

                                    if (rentSize>0){
                                        RenthomeEntity s;
                                        for(int i=0; i<saleSize; i++){
                                            s=(RenthomeEntity)rentHome.get(i);
                                            out.println(
                                                    "<tr>"+
                                                            "<td>"+s.getHomeId()+"</td>"+
                                                            "<td><a href=''>"+s.getTitle()+"</a></td>"+
                                                            "<td>rent</td>"+
                                                            "<td>"+s.getUserId()+"</td>"+
                                                            "<td>"+
                                                            "<button type='button' class='btn btn-success btn-xs house-yes'>pass</button>"+
                                                            "</td>"+
                                                            "<td>"+
                                                            "<button type='button' class='btn btn-danger btn-xs house-no'>fail</button>"+
                                                            "</td>"+
                                                            "</tr>"
                                            );
                                        }
                                    }
                                %>


                                <%--<tr>--%>
                                    <%--<td>1</td>--%>
                                    <%--<td><a href="">崔樂陽</a></td>--%>
                                    <%--<td>售</td>--%>
                                    <%--<td>崔樂陽</td>--%>
                                    <%--<td>--%>
                                        <%--<button type="button" class="btn btn-success btn-xs house-yes">通過</button>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<button type="button" class="btn btn-danger btn-xs house-no">不通過</button>--%>
                                    <%--</td>--%>

                                <%--</tr>--%>


                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

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

<!-- DataTables JavaScript -->
<script src="assets/js/jquery.dataTables.js"></script>
<script src="assets/js/dataTables.bootstrap.min.js"></script>

<script>
    $(function(){
        $('.active').removeClass('active');
        $('.nav-second-level').removeClass('in');
        $('#dataTables-example').DataTable({
            responsive: true,
            "language": {
                "info": "_START_ - _END_ 共 _TOTAL_ 個房屋",
                "infoEmpty": "無內容",
                "infoFiltered": " - 共 _MAX_ 個房屋",
                "lengthMenu": "每頁顯示 _MENU_ 個房屋",
                "search": "搜索:",
                "zeroRecords": "無符合條件",
                "paginate": {
                    "next": "下一頁",
                    "previous": "上一頁"
                }
            }
        });
        $('.house-yes').on('click', function(){
            var id = $($(this).parents('td').siblings('td')[0]).html();
            var type=$($(this).parents('td').siblings('td')[2]).html();
            if (type=='rent'){
                type=0;
            }else if(type=='sale'){
                type=1;
            }
            var d = {
                id: id,
                type: type
            };
            $(this).parents('tr').remove();
            $.ajax({
                method: 'POST',
                url: '/templates/check.action',
                data: d,
                success: function(){

                },
                error: function(){}
            });
        });
        $('.house-no').on('click', function(){
            var id = $($(this).parents('td').siblings('td')[0]).html();
            var type=$($(this).parents('td').siblings('td')[2]).html();
            if (type=='rent'){
                type=0;
            }else if(type=='sale'){
                type=1;
            }
            var d = {
                id: id,
                type: type
            }
            $(this).parents('tr').remove();
            $.ajax({
                method: 'POST',
                url: '/templates/check.action',
                data: d,
                success: function(){},
                error: function(){}
            });
        });
    });
</script>
</body>

</html>
