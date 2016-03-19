<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>

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

    <link rel="stylesheet" href="assets/bower_components/trumbowyg/dist/ui/trumbowyg.min.css">

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
    <li><a href="/templates/user?user_id=<%=s.getAttribute("id") %>"><i class="fa fa-user fa-fw"></i> 用户账户</a>
    </li>
    <li class="divider"></li>
    <li><a href='/struts/delSession.action'>註銷</a></li>

    </ul>
    <!-- /.dropdown-user -->
    </li>
    </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->


    <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 新聞<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="">查看新聞量</a>
                            </li>
                            <li>
                                <a href="">已置頂新聞</a>
                            </li>
                            <li>
                                <a href="">添加新聞</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit fa-fw"></i> 房產管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="">審批房產</a>
                            </li>
                            <li>
                                <a href="">刪除房產</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-user fa-fw"></i> 用戶管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="">刪除用戶</a>
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
                <h1 class="page-header">添加新聞</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        添加新聞
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="title">新聞標題</label>
                                <input type="text" class="form-control" id="title" placeholder="標題">
                            </div>
                            <div class="form-group">
                                <label for="trumbowyg">詳細新聞</label>
                                <textarea id="trumbowyg"></textarea>
                            </div>
                            <button type="submit" class="btn btn-default col-md-offset-5">Submit</button>
                        </form>
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

<script src="assets/bower_components/trumbowyg/dist/trumbowyg.min.js"></script>
<script src="assets/bower_components/trumbowyg/dist/plugins/base64/trumbowyg.base64.min.js"></script>


<script>
    $(function(){
        $('.active').removeClass('active');
        $('.nav-second-level').removeClass('in');
        $('#trumbowyg').trumbowyg({
            autogrow: true,
            fullscreenable: false,
            btnsDef: {
                // Customizables dropdowns
                image: {
                    dropdown: ['insertImage', 'upload', 'base64'],
                    ico: 'insertImage'
                }
            },
            btns: ['viewHTML',
                '|', 'formatting',
                '|', 'btnGrp-design',
                '|', 'link',
                '|', 'image',
                '|', 'btnGrp-justify',
                '|', 'btnGrp-lists',
                '|', 'horizontalRule']
        });




        /********************************************************

         * Customized button pane + buttons groups + dropdowns

         * Use upload plugin

         *******************************************************/



        /*

         * Add your own groups of button

         */

//        $.trumbowyg.btnsGrps.test = ['bold', 'link'];
//
//
//
//        /* Add new words for customs btnsDef just below */
//
//        $.extend(true, $.trumbowyg.langs, {
//
//            fr: {
//
//                align: 'Alignement',
//
//                image: 'Image'
//
//            }
//
//        });
//
//        $('#customized-buttonpane').trumbowyg({
//
//            lang: 'zn',
//
//            closable: true,
//
//            fixedBtnPane: true,
//
//            btnsDef: {
//
//                // Customizables dropdowns
//
//                align: {
//
//                    dropdown: ['justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull'],
//
//                    ico: 'justifyLeft'
//
//                },
//
//                image: {
//
//                    dropdown: ['insertImage', 'upload', 'base64'],
//
//                    ico: 'insertImage'
//
//                }
//
//            },
//
//            btns: ['viewHTML',
//
//                '|', 'formatting',
//
//                '|', 'btnGrp-test',
//
//                '|', 'align',
//
//                '|', 'btnGrp-lists',
//
//                '|', 'image']
//
//        });
//



    });
</script>
</body>

</html>
