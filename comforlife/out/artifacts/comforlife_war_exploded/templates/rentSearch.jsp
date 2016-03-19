<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-tags.tld" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
    <base href=" <%=basePath%>">
    <meta charset="UTF-8">
    <title>搜索</title>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/search.css">
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
    <div class="search-container">
        <div class="col-lg-6 search-box">
            <div class="input-group">
                <input type="text" id="search-kw" class="form-control" placeholder="Search for..." value="${kw}">
                <span class="input-group-btn">
                    <button class="btn btn-default search-btn" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                    </button>
                </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
        <div class="tag-box">
            <div class="tags type">
                <div class="tags-name" v="type">種類</div>
                <div class="tag active" id="shouf" v="0">買新房</div>
                <div class="tag" id="zu" v="1">租房</div>
                <div class="tag" id="shous" v="2">買二手房</div>
            </div>
            <div class="tags zu">
                <div class="tags-name" v="rentPay">租金</div>
                <div class="tag active" v="0">不限</div>
                <div class="tag" v="1">0-500</div>
                <div class="tag" v="2">500-1000</div>
                <div class="tag" v="3">1000-2000</div>
                <div class="tag" v="4">2000-3000</div>
                <div class="tag" v="5">3000-5000</div>
                <div class="tag" v="6">5000-8000</div>
            </div>
            <div class="tags shou">
                <div class="tags-name" v="salePay">每平方米</div>
                <div class="tag active" v="0">不限</div>
                <div class="tag" v="1">0-500</div>
                <div class="tag" v="2">2000-3000</div>
                <div class="tag" v="3">3000-5000</div>
                <div class="tag" v="4">5000-8000</div>
                <div class="tag" v="5">8000-10000</div>
                <div class="tag" v="6">10000-20000</div>
            </div>
            <div class="tags">
                <div class="tags-name" v="room">戶型</div>
                <div class="tag active" v="0">不限</div>
                <div class="tag" v="1">一居</div>
                <div class="tag" v="2">二居</div>
                <div class="tag" v="3">三居</div>
                <div class="tag" v="4">四居</div>
            </div>
            <div class="tags zu">
                <div class="tags-name" v="rentType">方式</div>
                <div class="tag active" v="0">不限</div>
                <div class="tag" v="1">整租</div>
                <div class="tag" v="2">合租</div>
                <div class="tag" v="3">日租</div>
                <div class="tag" v="4">周租</div>
            </div>
        </div>
        <div class="house-container">
            <div id="g1" class="house-group">
                <c:forEach var="home" items="${result}" varStatus="status">
                    <c:if test="${type == 1}">
                        <div class="a-house">
                    <img src="assets/images/cly.jpg" alt="">
                    <div class="house-details">
                        <div class="house-name">
                             ${home.title}
                        </div>
                        <div class="house-types">
                        <c:if test="${home.rentType == 1}">整租
                        </c:if>
                        <c:if test="${home.rentType ==2}">合租
                        </c:if>
                        <c:if test="${home.rentType == 3}">日租
                        </c:if>
                        <c:if test="${home.rentType ==4}">周租
                        </c:if>
                            <span>|</span>
                            ${home.room}室${home.hall}廳
                            <span>|</span>
                                ${home.area}平方米
                            <span>|</span>
                                ${home.floor}/${home.floorNum}層
                            <span>|</span>
                            <c:if test="${home.direction == 1}">南北朝向
                            </c:if>
                            <c:if test="${home.direction == 2}">东西朝向
                            </c:if>
                        </div>
                        <div class="house-position">
                                ${home.homeArea}-${home.busiArea}-${home.conName}
                        </div>
                    </div>
                    <div class="house-price">
                        <span>${home.rentNum}</span>元/月
                    </div>
                </div>
                    </c:if>
                    <c:if test="${type == 0}">
                        <div class="a-house">
                            <img src="assets/images/cly.jpg" alt="">
                            <div class="house-details">
                                <div class="house-name">
                                        ${home.title}
                                </div>
                                <div class="house-types">
                                        ${home.room}室${home.hall}廳
                                    <span>|</span>
                                        ${home.area}平方米
                                    <span>|</span>
                                        ${home.floor}/${home.totalFloor}層
                                    <span>|</span>
                                    <c:if test="${home.direction == 1}">南北朝向
                                    </c:if>
                                    <c:if test="${home.direction == 2}">东西朝向
                                    </c:if>
                                </div>
                                <div class="house-position">
                                        ${home.homeArea}-${home.busiArea}-${home.conName}
                                </div>
                            </div>
                            <div class="house-price">
                                <span>${home.unitPrice}</span>元/平方米
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${type == 2}">
                        <div class="a-house">
                            <img src="assets/images/cly.jpg" alt="">
                            <div class="house-details">
                                <div class="house-name">
                                        ${home.title}
                                </div>
                                <div class="house-types">
                                        ${home.room}室${home.hall}廳
                                    <span>|</span>
                                        ${home.area}平方米
                                    <span>|</span>
                                        ${home.floor}/${home.totalFloor}層
                                    <span>|</span>
                                    <c:if test="${home.direction == 1}">南北朝向
                                    </c:if>
                                    <c:if test="${home.direction == 2}">东西朝向
                                    </c:if>
                                </div>
                                <div class="house-position">
                                        ${home.homeArea}-${home.busiArea}-${home.conName}
                                </div>
                            </div>
                            <div class="house-price">
                                <span>${home.unitPrice}</span>元/平方米
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
            <p class="page-selection text-center"></p>

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
    <script src="assets/js/jquery.bootpag.min.js"></script>

    <script>
        (function($) {
            $.extend({
                urlGet:function()
                {
                    var aQuery = window.location.href.split("?");  //取得Get参数
                    var aGET = new Array();
                    if(aQuery.length > 1)
                    {
                        var aBuf = aQuery[1].split("&");
                        for(var i=0, iLoop = aBuf.length; i<iLoop; i++)
                        {
                            var aTmp = aBuf[i].split("=");  //分离key与Value
                            aGET[aTmp[0]] = aTmp[1];
                        }
                    }
                    return aGET;
                }
            })
        })(jQuery);
        $(function(){
            var args = [];
            $('.tag').on('click', function () {
                $(this).siblings('.tag').removeClass('active');
                $(this).addClass('active');
                $('.tags').each(function(index, e){
                    var i = $(e).children('.tags-name').attr('v');
                    var v;
                    $(e).children('.tag').each(function(index, e){
                        if ($(e).hasClass('active')){
                            v = $(e).attr('v');
                        }
                    });
                    args[i] = v;
                });
                console.log(JSON.stringify(args));

            }) ;

            $('.zu').show();
            $('.shou').hide();

            $('#zu').on('click', function(){
                $('.zu').show();
                $('.shou').hide();
            });
            $('#shouf').on('click', function(){
                $('.shou').show();
                $('.zu').hide();
            });
            $('#shous').on('click', function(){
                $('.shou').show();
                $('.zu').hide();
            });

            $('.search-btn').on('click', function(){
                args['kw'] = $('#search-kw').val();
                var s = '?';

                for (var i in args){
                    s += '' + i + '=' + args[i] + '&';
                }
                var url = '/struts/search.action';
                window.location = url+s;

            });
            var allpages = $('.a-house');
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
            var GET = $.urlGet();
            args = GET;
            $('.tags-name').each(function(i,e){
                var value = GET[$(this).attr('v')];
                $(e).siblings('.tag').removeClass('active');
                $(e).siblings('.tag').each(function(i,e){
                    if ($(e).attr('v')==value){
                        $(e).addClass('active');

                    }
                })
            });
            if (GET['type']==1){
                $('.zu').show();
                $('.shou').hide();
            }
            else{
                $('.zu').hide();
                $('.shou').show();
            }
//            $('#search-kw').val(GET['kw']);
        });
    </script>
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