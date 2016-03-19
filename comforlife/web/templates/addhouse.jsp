<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-tags.tld" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <base href=" <%=basePath%>">
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/addhouse.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css">
    <link rel="stylesheet" href="assets/css/dropzone.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
        #l-map{
            height: 300px;
            width: 80%;
            margin-left: 130px;
            margin-top: 45px;

        }
        #l-maps{
            height: 300px;
            width: 80%;
            margin-left: 130px;
            margin-top: 45px;

        }
    </style>
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
    <div class="btn-group col-md-offset-5 col-md-2" role="group" aria-label="...">
        <button type="button" class="btn btn-default" id="zu">租房</button>
        <button type="button" class="btn btn-default" id="shou">售房</button>
    </div>

    <div class="house-detail-container" id="zf">
        <form method="post" action="/struts/addRentHouse" class="form-horizontal">
            <div class="form-group">
                <label for="fylx"  class="col-sm-2 control-label ne">房源類型</label>
                <div class="col-sm-10">
                    <select name="HomeType" class="form-control" id="fylx">
                        <option value="1">住宅</option>
                        <option value="2">別墅</option>
                        <option value="3">寫字樓</option>
                        <option value="4">商鋪</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="czfs" class="col-sm-2 control-label ne">出租方式</label>
                <div class="col-sm-10">
                    <select name="RentType" class="form-control" id="czfs">
                        <option value="1">整租</option>
                        <option value="2">合租</option>
                        <option value="3">短租</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="dz" class="col-sm-2 control-label ne">地址</label>
                <div class="col-sm-3">
                    <select name="HomeArea" class="form-control" id="dz">
                        <option value="1">武侯</option>
                        <option value="2">青陽</option>
                        <option value="3">郫縣</option>
                    </select>
                </div>
                <div class="col-sm-3">
                    <select name="BusiArea" class="form-control" id="sq">
                        <option value="1">桐梓林</option>
                        <option value="2">红牌楼</option>
                        <option value="3">内双楠</option>
                    </select>
                </div>
                <div class="col-sm-4">
                    <input type="text"  name="ConName" class="form-control" id="xqdz" placeholder="小區名稱">
                </div>
            </div>
            <div class="form-group">
                <label for="xqmc" class="col-sm-2 control-label ne">小區地址</label>
                <div class="col-sm-10 r-result">
                    <input type="text"  class="form-control" id="xqmc" placeholder="小區地址">
                    <div id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
                </div>
                <div id="l-map"></div>
            </div>

            <div class="form-group">
                <label for="shi" class="col-sm-2 control-label ne">戶型</label>
                <div class="col-sm-2">
                    <input type="text" name="Room" class="form-control" id="shi" >
                </div>
                <p class="form-control-static col-sm-1">室</p>
                <div class="col-sm-2">
                    <input type="text" name="Hall" class="form-control" id="ting" >
                </div>
                <p class="form-control-static col-sm-1">廳</p>
                <div class="col-sm-2">
                    <input type="text"  name="Toilet" class="form-control" id="wei" >
                </div>
                <p class="form-control-static col-sm-1">衛</p>
            </div>
            <div class="form-group">
                <label for="jzmj" class="col-sm-2 control-label ne">建築面積</label>
                <div class="col-sm-3">
                    <input type="text" name="Area" class="form-control" id="jzmj" placeholder="建築面積">
                </div>
                <p class="form-control-static col-sm-2">平方米</p>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label ne">裝修程度</label>
                <div class="col-sm-10">
                    <label class="radio-inline">
                        <input type="radio" name="Fitment"   id="inlineRadio1" value="1"> 豪華裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment"   id="inlineRadio2" value="2"> 精裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment"   id="inlineRadio3" value="3"> 中等裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment"   id="inlineRadio4" value="4"> 簡裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment"   id="inlineRadio5" value="5"> 毛坯
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="cx" class="col-sm-2 control-label ne">朝向</label>
                <div class="col-sm-4">
                    <select  name="Direction" class="form-control" id="cx">
                        <option value="1">南北</option>
                        <option value="2">東西</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="lc" class="col-sm-2 control-label ne">樓層</label>
                <div class="col-sm-2">
                    <input name="Floor" type="text" class="form-control" id="lc" >
                </div>
                <p class="form-control-static col-sm-2">層, 共</p>
                <div class="col-sm-2">
                    <input name="FloorNum" type="text" class="form-control" id="zcs" >
                </div>
                <p class="form-control-static col-sm-2">層</p>
            </div>
            <div class="form-group">
                <label for="ldh" class="col-sm-2 control-label ne">樓棟號</label>
                <div class="col-sm-2">
                    <input type="text" name="BuildNum" class="form-control" id="ldh" >
                </div>
                <p class="form-control-static col-sm-1">棟</p>
                <div class="col-sm-2">
                    <input type="text" name="UnitNum" class="form-control" id="dy" >
                </div>
                <p class="form-control-static col-sm-1">單元</p>
                <div class="col-sm-2">
                    <input type="text" name="RoomNum" class="form-control" id="s" >
                </div>
                <p class="form-control-static col-sm-1">室</p>
            </div>
            <div class="form-group">
                <label for="zj" class="col-sm-2 control-label ne">租金</label>
                <div class="col-sm-3">
                    <input type="text" name="RentNum"  class="form-control" id="zj" >
                </div>
                <p class="form-control-static col-sm-2">元/月</p>
                <div class="col-sm-3">
                    <select name="DepositType" class="form-control" id="zjfs">
                        <option value="1">面議</option>
                        <option value="2">年付</option>
                        <option value="3">半年付</option>
                        <option value="4">押二付一</option>
                        <option value="5">押一付一</option>
                        <option value="6">押一付二</option>
                        <option value="7">押一付三</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <%--<label for="ptss" class="col-sm-2 control-label ne">配套設施</label>--%>
                <%--<div class="col-sm-10">--%>
                    <%--<label class="checkbox-inline">--%>
                        <%--<input type="checkbox" name="Support" id="inlineCheckbox1" value="1"> 牀--%>
                    <%--</label>--%>
                    <%--<label class="checkbox-inline">--%>
                        <%--<input type="checkbox" name="Support" id="inlineCheckbox2" value="2"> 寬帶--%>
                    <%--</label>--%>
                    <%--<label class="checkbox-inline">--%>
                        <%--<input type="checkbox" name="Support" id="inlineCheckbox3" value="3"> 電視--%>
                    <%--</label>--%>
                    <%--<label class="checkbox-inline">--%>
                        <%--<input type="checkbox" name="Support" id="inlineCheckbox4" value="4"> 冰箱--%>
                    <%--</label>--%>
                    <%--<label class="checkbox-inline">--%>
                        <%--<input type="checkbox" name="Support" id="inlineCheckbox5" value="5"> 洗衣機--%>
                    <%--</label>--%>
                    <%--<label class="checkbox-inline">--%>
                        <%--<input type="checkbox" name="Support" id="inlineCheckbox6" value="6"> 空調--%>
                    <%--</label>--%>
                    <%--<label class="checkbox-inline">--%>
                        <%--<input type="checkbox" name="Support" id="inlineCheckbox7" value="7"> 熱水器--%>
                    <%--</label>--%>
                    <%--<label class="checkbox-inline">--%>
                        <%--<input type="checkbox" name="Support" id="inlineCheckbox8" value="8"> 暖氣--%>
                    <%--</label>--%>
                <%--</div>--%>
            </div>
            <div class="form-group">
                <label for="fybt" class="col-sm-2 control-label ne">房源標題</label>
                <div class="col-sm-10">
                    <input type="text"  name="Title" class="form-control" id="fybt" placeholder="房源標題">
                </div>
            </div>
            <div class="form-group">
                <label for="fyms" class="col-sm-2 control-label ne">房源描述</label>
                <div class="col-sm-10">
                    <textarea name="Descri" class="form-control" rows="5" id="fyms"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="rzsj" class="col-sm-2 control-label ne">入住時間</label>
                <div class="col-sm-4">
                    <input name="CheckInTime" type="text" class="form-control" id="rzsj">
                </div>
            </div>
            <input type="hidden" name="Latlng" id="lal">
            <input type="hidden" id="imgs" name="pic">
            <div id="dropzone">
                <div class="dropzone needsclick dz-clickable" id="demo-upload">

                    <div class="dz-message needsclick">
                        Drop files here or click to upload.<br>
                    </div>

                </div></div>

            <input name="user_id" type="hidden" value="<%=s.getAttribute("id") %>"/>

            <div class="col-md-offset-5 col-md-2">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </form>

    </div>
    <div class="house-detail-container" id="sf">
        <form method="post" action="/struts/addSaleHouse" class="form-horizontal dropdown">
            <div class="form-group">
                <label for="fylx" class="col-sm-2 control-label ne">房源類型</label>
                <div class="col-sm-10">
                    <select name="HomeType" class="form-control" id="fylxs">
                        <option value="1">住宅</option>
                        <option value="2">別墅</option>
                        <option value="3">寫字樓</option>
                        <option value="4">商鋪</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="sfxfs" class="col-sm-2 control-label ne">是否新房</label>
                <div class="col-sm-10">
                    <select name="fs" class="form-control" id="sfxfs">
                        <option value="1">新房</option>
                        <option value="0">二手房</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="dz" class="col-sm-2 control-label ne">地址</label>
                <div class="col-sm-3">
                    <select name="HomeArea" class="form-control" id="dzs">
                        <option value="1">武侯</option>
                        <option value="2">青陽</option>
                        <option value="3">郫縣</option>
                    </select>
                </div>
                <div class="col-sm-3">
                    <select name="BusiArea" class="form-control" id="sqs">
                        <option value="1">桐梓林</option>
                        <option value="2">红牌楼</option>
                        <option value="3">内双楠</option>

                    </select>
                </div>
                <div class="col-sm-4">
                    <input type="text" name="ConName" class="form-control" id="xqdzs" placeholder="小區名稱">
                </div>
            </div>
            <div class="form-group">
                <label for="xqmcs" class="col-sm-2 control-label ne">小區地址</label>
                <div class="col-sm-10 r-result">
                    <input type="text" class="form-control" id="xqmcs" placeholder="小區地址">
                    <div id="searchResultPanels" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
                </div>
                <div id="l-maps"></div>
            </div>
            <div class="form-group">
                <label for="shi" class="col-sm-2 control-label ne">戶型</label>
                <div class="col-sm-2">
                    <input type="text" name="Room" class="form-control" id="shis" >
                </div>
                <p class="form-control-static col-sm-1">室</p>
                <div class="col-sm-2">
                    <input type="text" name="Hall" class="form-control" id="tings" >
                </div>
                <p class="form-control-static col-sm-1">廳</p>
                <div class="col-sm-2">
                    <input type="text" name="Toilet" class="form-control" id="weis" >
                </div>
                <p class="form-control-static col-sm-1">衛</p>
            </div>
            <div class="form-group">
                <label for="jzmj" class="col-sm-2 control-label ne">建築面積</label>
                <div class="col-sm-3">
                    <input type="text" name="Area" class="form-control" id="jzmjs" placeholder="建築面積">
                </div>
                <p class="form-control-static col-sm-2">平方米</p>
            </div>
            <div class="form-group">
                <label  class="col-sm-2 control-label ne">裝修程度</label>
                <div class="col-sm-10">
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio1s" value="1"> 豪華裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio2s" value="2"> 精裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio3s" value="3"> 中等裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio4s" value="4"> 簡裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio5s" value="5"> 毛坯
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="cx" class="col-sm-2 control-label ne">朝向</label>
                <div class="col-sm-4">
                    <select name="Direction" class="form-control" id="cxs">
                        <option value="1">南北</option>
                        <option value="2">東西</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="lc" class="col-sm-2 control-label ne">樓層</label>
                <div class="col-sm-2">
                    <input type="text" name="Floor" class="form-control" id="lcs" >
                </div>
                <p class="form-control-static col-sm-2">層, 共</p>
                <div class="col-sm-2">
                    <input type="text" name="TotalFloor"  class="form-control" id="zcss" >
                </div>
                <p class="form-control-static col-sm-2">層</p>
            </div>
            <div class="form-group">
                <label for="ldh" class="col-sm-2 control-label ne">樓棟號</label>
                <div class="col-sm-2">
                    <input type="text"  name="BuildNum" class="form-control" id="ldhs" >
                </div>
                <p class="form-control-static col-sm-1">棟</p>
                <div class="col-sm-2">
                    <input type="text" name="UnitNum" class="form-control" id="dys" >
                </div>
                <p class="form-control-static col-sm-1">單元</p>
                <div class="col-sm-2">
                    <input type="text" name="RoomNum" class="form-control" id="ss" >
                </div>
                <p class="form-control-static col-sm-1">室</p>
            </div>
            <div class="form-group">
                <label for="zj" class="col-sm-2 control-label ne">单价</label>
                <div class="col-sm-3">
                    <input type="text" name="UnitPrice" class="form-control" id="zjs" >
                </div>
                <p class="form-control-static col-sm-2">元/平方米</p>
            </div>
            <div class="form-group">

            </div>
            <div class="form-group">
                <label for="fybt" class="col-sm-2 control-label ne">房源標題</label>
                <div class="col-sm-10">
                    <input type="text" name="Title" class="form-control" id="fybts" placeholder="房源標題">
                </div>
            </div>
            <div class="form-group">
                <label for="fyms" class="col-sm-2 control-label ne">房源描述</label>
                <div class="col-sm-10">
                    <textarea name="Descri" class="form-control" rows="5" id="fymss"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="rzsj" class="col-sm-2 control-label ne">入住時間</label>
                <div class="col-sm-4">
                    <input name="CheckInTime" type="text" class="form-control" id="rzsjs">
                </div>
            </div>
            <input type="hidden" name="Latlng" id="lals">
            <div id="dropzones">
                <div class="dropzone needsclick dz-clickable" id="demo-uploads">
                <div class="dz-message needsclick">
                    Drop files here or click to upload.<br>
                </div>
            </div></div>
    <input type="hidden" id="imgss" name="pic">

    <input name="user_id" type="hidden" value="<%=s.getAttribute("id") %>"/>
            <div class="col-md-offset-5 col-md-2">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </form>

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

    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=kt3NPAS5siry17BPcAgMGBmt"></script>
    <script src="assets/js/jquery-2.1.4.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/masonry.pkgd.min.js"></script>
    <script src="assets/js/json2.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/js/jquery.base64.js"></script>
    <script src="assets/js/dropzone.js"></script>
    <script type="text/javascript">
        // 百度地图API功能
        function G(id) {
            return document.getElementById(id);
        }

        var map = new BMap.Map("l-map");
        map.centerAndZoom("成都",12);                   // 初始化地图,设置城市和地图级别。

        var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
                {"input" : "xqmc"
                    ,"location" : map
                });

        ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
            var str = "";
            var _value = e.fromitem.value;
            var value = "";
            if (e.fromitem.index > -1) {
                value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            }
            str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

            value = "";
            if (e.toitem.index > -1) {
                _value = e.toitem.value;
                value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            }
            str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
            G("searchResultPanel").innerHTML = str;
        });

        var myValue;
        ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
            var _value = e.item.value;
            myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;

            setPlace();
        });

        function setPlace(){
            map.clearOverlays();    //清除地图上所有覆盖物
            function myFun(){
                var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
                map.centerAndZoom(pp, 18);
                $('#lal').val(''+pp.lng+','+pp.lat);
//                console.log($('#lal').val());
                map.addOverlay(new BMap.Marker(pp));    //添加标注
            }
            var local = new BMap.LocalSearch(map, { //智能搜索
                onSearchComplete: myFun
            });
            local.search(myValue);

        }

        var maps = new BMap.Map("l-maps");
        maps.centerAndZoom("成都",12);                   // 初始化地图,设置城市和地图级别。

        var acs = new BMap.Autocomplete(    //建立一个自动完成的对象
                {"input" : "xqmcs"
                    ,"location" : maps
                });

        acs.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
            var str = "";
            var _value = e.fromitem.value;
            var value = "";
            if (e.fromitem.index > -1) {
                value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            }
            str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

            value = "";
            if (e.toitem.index > -1) {
                _value = e.toitem.value;
                value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            }
            str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
            G("searchResultPanels").innerHTML = str;
        });

        var myValues;
        acs.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
            var _value = e.item.value;
            myValues = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;

            setPlaces();
        });

        function setPlaces(){
            maps.clearOverlays();    //清除地图上所有覆盖物
            function myFun(){
                var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
                maps.centerAndZoom(pp, 18);
                $('#lals').val(''+pp.lng+','+pp.lat);
                maps.addOverlay(new BMap.Marker(pp));    //添加标注
            }
            var local = new BMap.LocalSearch(maps, { //智能搜索
                onSearchComplete: myFun
            });
            local.search(myValues);
        }
    </script>
    <script>
        $(function() {
            $('#rzsj').datepicker();
            $('#rzsjs').datepicker();
            $('#zu').addClass('active');
            $('#shou').removeClass('active');
            $('#zf').show();
            $('#sf').hide();
            $('#zu').on('click', function () {
                $('#zu').addClass('active');
                $('#shou').removeClass('active');
                $('#zf').show();
                $('#sf').hide();
            });
            $('#shou').on('click', function () {
                $('#shou').addClass('active');
                $('#zu').removeClass('active');
                $('#sf').show();
                $('#zf').hide();
            });

        });
    </script>
    <script>

        $(function(){
            Array.prototype.remove=function(dx) {
                if(isNaN(dx)||dx>this.length){return false;}
                for(var i=0,n=0;i<this.length;i++)
                {
                    if(this[i]!=this[dx])
                    {
                        this[n++]=this[i]
                    }
                }
                this.length-=1
            }
            var imgs = [];
            var obj = $("#dragandrophandler");
            obj.on('dragenter', function (e) {
                e.stopPropagation();
                e.preventDefault();
                $(this).css('border', '2px solid #0B85A1');
            });
            obj.on('dragover', function (e) {
                e.stopPropagation();
                e.preventDefault();
            });
            obj.on('drop', function (e) {

                $(this).css('border', '2px dotted #0B85A1');
                e.preventDefault();
                var files = e.originalEvent.dataTransfer.files;

                //We need to send dropped files to Server
//                handleFileUpload(files,obj);
                var reader = new FileReader();

                reader.readAsBinaryString(files[0]);
                reader.onload = function(evt){
                    var fileString = evt.target.result;
                    var l = imgs.length;
                    imgs[l]={};
                    var n = files[0].name;
                    n = n.split('\\');
                    n = n[n.length-1];
                    if (n == ''){
                        imgs[l].name = 'img'+l;
                    }
                    else {
                        imgs[l].name = n;
                    }
                    imgs[l].basev = $.base64.encode(fileString);
                    $('.img-table').html('');
                    imgs.forEach(function(e,i){
                        console.log(i);
                        console.log(e);

                        var h = '<tr> <td> <a id="'+
                                i+
                                '">'+
                                e.name+
                                '</a> </td> <td align="right"> <button type="button" class="btn btn-danger btn-xs img-delete">刪除</button> </td> </tr>';
                        $('.img-table').prepend(h);
                        $('#'+i).popover({
                            html: true,
                            placement: 'top',
                            trigger: 'click focus',
                            content: '<img height="200px" width="200px" src="data:image/jpeg;base64,'+ e.basev+'" alt="">'
                        });
                        $('.img-delete').on('click', function (){
                            var deleteid = $($(this).parents('td').siblings('td')[0]).children('a').attr('id');
                            $(this).parents('tr').remove();
                            imgs.remove(deleteid);

                        });
                    });
                    $('#img1base64').val(imgs[0]?imgs[0].basev:'');
                    $('#img2base64').val(imgs[1]?imgs[1].basev:'');
                    $('#img3base64').val(imgs[2]?imgs[2].basev:'');

                }
            });
            $(document).on('dragenter', function (e) {
                e.stopPropagation();
                e.preventDefault();
            });
            $(document).on('dragover', function (e) {
                e.stopPropagation();
                e.preventDefault();
                obj.css('border', '2px dotted #0B85A1');
            });
            $(document).on('drop', function (e) {
                e.stopPropagation();
                e.preventDefault();
            });
            $('#dragandrophandler').on('click',function(){
                $('#file').click();

            });
            $('#file').on('change', function(){
                var files = $('input[id="file"]').prop('files');

                if(files.length == 0){
                    return;
                }else{
                    var reader = new FileReader();

                    reader.readAsBinaryString(files[0]);
                    reader.onload = function(evt){
                        var fileString = evt.target.result;
                        var l = imgs.length;
                        imgs[l]={};
                        var n = $('input[id="file"]').val();
                        n = n.split('\\');
                        n = n[n.length-1];
                        imgs[l].name = n;
                        imgs[l].basev = $.base64.encode(fileString);
                        $('.img-table').html('');
                        imgs.forEach(function(e,i){
                            console.log(i);
                            console.log(e);

                            var h = '<tr> <td> <a id="'+
                                    i+
                                    '">'+
                                    e.name+
                                    '</a> </td> <td align="right"> <button type="button" class="btn btn-danger btn-xs img-delete">刪除</button> </td> </tr>';
                            $('.img-table').prepend(h);
                            $('#'+i).popover({
                                html: true,
                                placement: 'top',
                                trigger: 'click focus',
                                content: '<img height="200px" width="200px" src="data:image/jpeg;base64,'+ e.basev+'" alt="">'
                            });
                            $('.img-delete').on('click', function (){
                                var deleteid = $($(this).parents('td').siblings('td')[0]).children('a').attr('id');
                                $(this).parents('tr').remove();
                                imgs.remove(deleteid);

                            });
                        });
                        $('#img1base64').val(imgs[0]?imgs[0].basev:'');
                        $('#img2base64').val(imgs[1]?imgs[1].basev:'');
                        $('#img3base64').val(imgs[2]?imgs[2].basev:'');
                        console.log($('#img1base64').val());
                    }
                }
            });





            var imgss = [];
            var objs = $("#dragandrophandlers");
            objs.on('dragenter', function (e) {
                e.stopPropagation();
                e.preventDefault();
                $(this).css('border', '2px solid #0B85A1');
            });
            objs.on('dragover', function (e) {
                e.stopPropagation();
                e.preventDefault();
            });
            objs.on('drop', function (e) {

                $(this).css('border', '2px dotted #0B85A1');
                e.preventDefault();
                var files = e.originalEvent.dataTransfer.files;

                //We need to send dropped files to Server
//                handleFileUpload(files,obj);
                var reader = new FileReader();

                reader.readAsBinaryString(files[0]);
                reader.onload = function(evt){
                    var fileString = evt.target.result;
                    var l = imgss.length;
                    imgss[l]={};
                    var n = files[0].name;
                    n = n.split('\\');
                    n = n[n.length-1];
                    if (n == ''){
                        imgss[l].name = 'img'+l;
                    }
                    else {
                        imgss[l].name = n;
                    }
                    imgss[l].basev = $.base64.encode(fileString);
                    $('.img-tables').html('');
                    imgss.forEach(function(e,i){
                        console.log(i);
                        console.log(e);

                        var h = '<tr> <td> <a id="'+
                                i+
                                's">'+
                                e.name+
                                '</a> </td> <td align="right"> <button type="button" class="btn btn-danger btn-xs img-deletes">刪除</button> </td> </tr>';
                        $('.img-table').prepend(h);
                        $('#'+i+'s').popover({
                            html: true,
                            placement: 'top',
                            trigger: 'click focus',
                            content: '<img height="200px" width="200px" src="data:image/jpeg;base64,'+ e.basev+'" alt="">'
                        });
                        $('.img-deletes').on('click', function (){
                            var deleteid = $($(this).parents('td').siblings('td')[0]).children('a').attr('id');
                            console.log(deleteid);
                            console.log($(this).parents('tr'));
                            $(this).parents('tr').remove();
                            imgss.remove(deleteid.split('s')[0]);

                        });
                    });
                    $('#imgs1base64').val(imgss[0]?imgss[0].basev:'');
                    $('#imgs2base64').val(imgss[1]?imgss[1].basev:'');
                    $('#imgs3base64').val(imgss[2]?imgss[2].basev:'');
                }
            });
            $(document).on('dragenter', function (e) {
                e.stopPropagation();
                e.preventDefault();
            });
            $(document).on('dragover', function (e) {
                e.stopPropagation();
                e.preventDefault();
                objs.css('border', '2px dotted #0B85A1');
            });
            $(document).on('drop', function (e) {
                e.stopPropagation();
                e.preventDefault();
            });
            $('#dragandrophandlers').on('click',function(){
                $('#files').click();
            });
            $('#files').on('change', function(){
                var files = $('input[id="files"]').prop('files');

                if(files.length == 0){
                    return;
                }else{
                    var reader = new FileReader();

                    reader.readAsBinaryString(files[0]);
                    reader.onload = function(evt){
                        var fileString = evt.target.result;
                        var l = imgss.length;
                        imgss[l]={};
                        var n = $('input[id="files"]').val();
                        n = n.split('\\');
                        n = n[n.length-1];
                        imgss[l].name = n;
                        imgss[l].basev = $.base64.encode(fileString);
                        $('.img-tables').html('');
                        imgss.forEach(function(e,i){
                            console.log(i);
                            console.log(e);

                            var h = '<tr> <td> <a id="'+
                                    i+
                                    's">'+
                                    e.name+
                                    '</a> </td> <td align="right"> <button type="button" class="btn btn-danger btn-xs img-deletes">刪除</button> </td> </tr>';
                            $('.img-tables').prepend(h);
                            $('#'+i+'s').popover({
                                html: true,
                                placement: 'top',
                                trigger: 'click focus',
                                content: '<img height="200px" width="200px" src="data:image/jpeg;base64,'+ e.basev+'" alt="">'
                            });
                            $('.img-deletes').on('click', function (){
                                var deleteid = $($(this).parents('td').siblings('td')[0]).children('a').attr('id');
                                console.log(deleteid);
                                console.log($(this).parents('tr'));
                                $(this).parents('tr').remove();
                                imgss.remove(deleteid.split('s')[0]);
                            });
                        });
                        $('#imgs1base64').val(imgss[0]?imgss[0].basev:'');
                        $('#imgs2base64').val(imgss[1]?imgss[1].basev:'');
                        $('#imgs3base64').val(imgss[2]?imgss[2].basev:'');
                    }
                }
            });
        });
    </script>
    <script>
        $(function(){
            $('#imgs').val(';');
            $('#imgss').val(';');
            Dropzone.autoDiscover = false;
            $("div#demo-upload").dropzone({
                url: "/struts/imagesLoad",
                maxFiles: 8,
                maxFilesize: 512,
                acceptedFiles: ".png,.jpg,.jpeg",
                init: function() {
                    this.on("addedfile", function(file) {

                        // Create the remove button
                        var removeButton = Dropzone.createElement("<button class='btn btn-default'>Remove file</button>");


                        // Capture the Dropzone instance as closure.
                        var _this = this;

                        // Listen to the click event
                        removeButton.addEventListener("click", function(e) {
                            // Make sure the button click doesn't submit the form:
                            e.preventDefault();
                            e.stopPropagation();

                            // Remove the file preview.
                            _this.removeFile(file);
                            // If you want to the delete the file on the server as well,
                            // you can do the AJAX request here.
                        });

                        // Add the button to the file preview element.
                        file.previewElement.appendChild(removeButton);
                    });
                    this.on("success", function(file, responseText, e) {
                        // Handle the responseText here. For example, add the text to the preview element:
//                        file.previewTemplate.appendChild(document.createTextNode(responseText));

                        var s = $('#imgs').val();
                        $('#imgs').val(s+responseText.split(' ')[0]+';');                    });
                }
            });
            $("div#demo-uploads").dropzone({
                url: "/struts/imagesLoad",
                maxFiles: 8,
                maxFilesize: 512,
                acceptedFiles: ".png,.jpg,.jpeg",
                init: function() {
                    this.on("addedfile", function(file) {

                        // Create the remove button
                        var removeButton = Dropzone.createElement("<button class='btn btn-default'>Remove file</button>");


                        // Capture the Dropzone instance as closure.
                        var _this = this;

                        // Listen to the click event
                        removeButton.addEventListener("click", function(e) {
                            // Make sure the button click doesn't submit the form:
                            e.preventDefault();
                            e.stopPropagation();

                            // Remove the file preview.
                            _this.removeFile(file);
                            // If you want to the delete the file on the server as well,
                            // you can do the AJAX request here.
                        });

                        // Add the button to the file preview element.
                        file.previewElement.appendChild(removeButton);
                    });
                    this.on("success", function(file, responseText, e) {
                        // Handle the responseText here. For example, add the text to the preview element:
//                        file.previewTemplate.appendChild(document.createTextNode(responseText));
                        var s = $('#imgss').val();
                        $('#imgss').val(s+responseText.split(' ')[0]+';');                    });
                }
            });
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