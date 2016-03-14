<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-tags.tld" prefix="s"%>
<html lang="en">
<head>
    <base href=" <%=basePath%>">
    <meta charset="UTF-8">
    <title>ComforLife</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <script src="assets/js/jquery-2.2.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="assets/css/index.css">
    <script src="assets/js/index.js"></script>

</head>
<body>
    <!--header-->
    <div class="header">
        <div class="header-list hidden"></div>
        <%
            HttpSession s = request.getSession(false);
            if (s.getAttribute("user") == null)
            {
                System.out.print("123");
         %>

        <div class="login"><a data-toggle="modal" data-target="#login">登陆</a> | <a data-toggle="modal" data-target="#signup">注册</a></div>
        <%
            }
            else
            {
         %>

        <%=s.getAttribute("user") %>
        <%
            }
        %>
    </div>
    <!--motaikuang-->
    <!-- Modal -->
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
    <div class="arrow-down">
        <div class="button-next-cont">
            <div class="button-next">
                <div class="glyphicon glyphicon-chevron-down"></div>
            </div>
        </div>
    </div>
    <!--shouye-->
    <div class="first-page">
        <!--sousuo-->
        <div class="house-search">
            <div class="logo"></div>
            <div class="search-type">
                <div class="types">
                    <a href="" id="maixinfang" class="cur">买新房</a>
                    <a href="" id="zhaozufang">找租房</a>
                    <a href="" id="maiershoufang">买二手房</a>
                </div>
            </div>
            <div class="innerline"><div class="sanjiao"></div></div>
            <div class="search-input">
                <div class="input-group">
                    <input id="search" type="text" class="form-control" placeholder="买新房">
                    <span class="input-group-btn">
                        <button class="btn btn-default" id="searchbtn" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                    </span>
                </div>
            </div>
        </div>
    </div>

    <!--xiangxixinxi-->
    <div class="details" id="details">
        <div class="detail">
            <div class="detail-header">
                买房
            </div>
            <div class="detail-line">
                <div class="line1"></div>
                <div class="line2"></div>
            </div>
            <div class="detail-container">
                <div class="house-list">
                    <div class="xuxian"></div>
                    <div class="list">
                        <div class="flist">
                            <div class="tag">
                            <div class="dian"></div>
                            <div class="house-list-title">熱盤推薦</div>
                            <div class="house-list-title-bg"></div>
                            </div>

                            <s:iterator value="recommandList" id="recomList">

                            <div class="one-house">
                                <div class="house-name"><s:property value="recomList.title" /> </div>
                                <div class="house-price"><s:property value="recomList.unitPrice" /></div>
                            </div>

                        </div>
                        <div class="tlist">
                            <div data-spy="scroll" data-target="" data-offset="0" class="scroll-list">
                                <div class="tag">
                                    <div class="dian"></div>
                                    <div class="house-list-title">二月一日</div>
                                    <div class="house-list-title-bg"></div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="tag">
                                    <div class="dian"></div>
                                    <div class="house-list-title">二月一日</div>
                                    <div class="house-list-title-bg"></div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="tag">
                                    <div class="dian"></div>
                                    <div class="house-list-title">二月一日</div>
                                    <div class="house-list-title-bg"></div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="tag">
                                    <div class="dian"></div>
                                    <div class="house-list-title">二月一日</div>
                                    <div class="house-list-title-bg"></div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="house-pictures">
                    <div class="fpic">
                        <img src="assets/images/1.jpg" alt="">
                        <div class="fpic-des">eevee</div>
                    </div>
                    <div class="pic">
                        <img src="assets/images/2.jpg" alt="">
                        <div class="pic-des">eevee</div>
                    </div>
                    <div class="pic">
                        <img src="assets/images/3.jpg" alt="">
                        <div class="pic-des">eevee</div>
                    </div>
                    <div class="pic">
                        <img src="assets/images/4.jpg" alt="">
                        <div class="pic-des">eevee</div>
                    </div>
                    <div class="pic">
                        <img src="assets/images/5.jpg" alt="">
                        <div class="pic-des">eevee</div>
                    </div>
                </div>
                <div class="house-news">
                    <div class="news-header">
                        <div class="news-header-name">
                            房產諮詢
                        </div>
                        <div class="news-header-icon">
                            <span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="news-block">
                        <div class="fnews">這是一條新聞</div>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                    </div>
                    <div class="news-block">
                        <div class="fnews">這是一條新聞</div>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                    </div>
                </div>
            </div>
        </div>
        <div class="detail">
            <div class="detail-header">
                新房
            </div>
            <div class="detail-line">
                <div class="line1"></div>
                <div class="line2"></div>
            </div>
            <div class="detail-container">
                <div class="house-list">
                    <div class="xuxian"></div>
                    <div class="list">
                        <div class="flist">
                            <div class="tag">
                                <div class="dian"></div>
                                <div class="house-list-title">熱盤推薦</div>
                                <div class="house-list-title-bg"></div>
                            </div>
                            <div class="one-house">
                                <div class="house-name">香山長島</div>
                                <div class="house-price">待定</div>
                            </div>
                            <div class="one-house">
                                <div class="house-name">香山長島</div>
                                <div class="house-price">待定</div>
                            </div>
                            <div class="one-house">
                                <div class="house-name">香山長島</div>
                                <div class="house-price">待定</div>
                            </div>
                            <div class="one-house">
                                <div class="house-name">香山長島</div>
                                <div class="house-price">待定</div>
                            </div>
                        </div>
                        <div class="tlist">
                            <div data-spy="scroll" data-target="" data-offset="0" class="scroll-list">
                                <div class="tag">
                                    <div class="dian"></div>
                                    <div class="house-list-title">二月一日</div>
                                    <div class="house-list-title-bg"></div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="tag">
                                    <div class="dian"></div>
                                    <div class="house-list-title">二月一日</div>
                                    <div class="house-list-title-bg"></div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="tag">
                                    <div class="dian"></div>
                                    <div class="house-list-title">二月一日</div>
                                    <div class="house-list-title-bg"></div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="tag">
                                    <div class="dian"></div>
                                    <div class="house-list-title">二月一日</div>
                                    <div class="house-list-title-bg"></div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                                <div class="one-house">
                                    <div class="house-name">香山長島</div>
                                    <div class="house-price">待定</div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="house-pictures">
                    <div class="fpic">
                        <img src="assets/images/1.jpg" alt="">
                        <div class="fpic-des">eevee</div>
                    </div>
                    <div class="pic">
                        <img src="assets/images/2.jpg" alt="">
                        <div class="pic-des">eevee</div>
                    </div>
                    <div class="pic">
                        <img src="assets/images/3.jpg" alt="">
                        <div class="pic-des">eevee</div>
                    </div>
                    <div class="pic">
                        <img src="assets/images/4.jpg" alt="">
                        <div class="pic-des">eevee</div>
                    </div>
                    <div class="pic">
                        <img src="assets/images/5.jpg" alt="">
                        <div class="pic-des">eevee</div>
                    </div>
                </div>
                <div class="house-news">
                    <div class="news-header">
                        <div class="news-header-name">
                            房產諮詢
                        </div>
                        <div class="news-header-icon">
                            <span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="news-block">
                        <div class="fnews">這是一條新聞</div>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                    </div>
                    <div class="news-block">
                        <div class="fnews">這是一條新聞</div>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                        <li class="news">這是一條新聞這是一條新聞這是一條新聞</li>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
        $(function(){
            $('#searchbtn').on('click', function(){
                var kw = $('#search').val();
                var type = $('.cur').attr('id');
                var type_dic = {
                    'maixinfang': 0,
                    'zhaozufang': 1,
                    'maiershoufang': 2
                }
                $.post({
                    url: '/struts/search.action',
                    data: {
                        kw: kw,
                        type: type_dic[type],
                        rentPay:0,
                        salePay:0,
                        room:0,
                        rentType:0

                    }
                });
            });

        });
    </script>
</body>
</html>