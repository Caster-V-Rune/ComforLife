<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"templates"+"/";
%>
<!DOCTYPE html>
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


                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

    </div>
    <div class="zhanwei"></div>
    <div class="house-detail-container">
        <form action="/struts/addRentHouse" class="form-horizontal">
            <div class="form-group">
                <label for="fylx" class="col-sm-2 control-label ne">房源類型</label>
                <div class="col-sm-10">
                    <select name="HomeType" class="form-control" id="fylx">
                        <option>住宅</option>
                        <option>別墅</option>
                        <option>寫字樓</option>
                        <option>商鋪</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="czfs" class="col-sm-2 control-label ne">出租方式</label>
                <div class="col-sm-10">
                    <select name="RentType" class="form-control" id="czfs">
                        <option>整租</option>
                        <option>合租</option>
                        <option>短租</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="xqmc" class="col-sm-2 control-label ne">小區名稱</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="xqmc" placeholder="小區名稱">
                </div>
            </div>
            <div class="form-group">
                <label for="dz" class="col-sm-2 control-label ne">地址</label>
                <div class="col-sm-3">
                    <select name="HomeArea" class="form-control" id="dz">
                        <option>武侯</option>
                        <option>青陽</option>
                        <option>金牛</option>
                        <option>成華</option>
                        <option>高新區</option>
                        <option>雙流</option>
                        <option>郫縣</option>
                        <option>龍泉</option>
                        <option>溫江</option>
                        <option>新都</option>
                        <option>成都周邊</option>
                        <option>高新西區</option>
                        <option>錦江</option>
                        <option>都江堰</option>
                    </select>
                </div>
                <div class="col-sm-3">
                    <select name="BusiArea" class="form-control" id="sq">
                        <option>武侯</option>
                    </select>
                </div>
                <div class="col-sm-4">
                    <input type="text" name="ConName" class="form-control" id="xqdz" placeholder="小區地址">
                </div>
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
                    <input type="text" name="Toilet" class="form-control" id="wei" >
                </div>
                <p class="form-control-static col-sm-1">衛</p>
            </div>
            <div class="form-group">
                <label for="jzmj"  class="col-sm-2 control-label ne">建築面積</label>
                <div class="col-sm-3">
                    <input type="text" name="Area" class="form-control" id="jzmj" placeholder="建築面積">
                </div>
                <p class="form-control-static col-sm-2">平方米</p>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label ne">裝修程度</label>
                <div class="col-sm-10">
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio1" value="1"> 豪華裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio2" value="2"> 精裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio3" value="3"> 中等裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio4" value="4"> 簡裝修
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="Fitment" id="inlineRadio5" value="5"> 毛坯
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="cx" class="col-sm-2 control-label ne">朝向</label>
                <div class="col-sm-4">
                    <select name="Direction" class="form-control" id="cx">
                        <option>南北</option>
                        <option>東西</option>

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
                    <input  name="FloorNum" type="text" class="form-control" id="zcs" >
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
                    <input type="text"  name="UnitNum" class="form-control" id="dy" >
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
                    <input type="text" name="RentNum" class="form-control" id="zj" >
                </div>
                <p class="form-control-static col-sm-2">元/月</p>
                <div class="col-sm-3">
                    <select name="DepositType" class="form-control" id="zjfs">
                        <option>面議</option>
                        <option>年付</option>
                        <option>半年付</option>
                        <option>押二付一</option>
                        <option>押一付一</option>
                        <option>押一付二</option>
                        <option>押一付三</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label  class="col-sm-2 control-label ne">配套設施</label>
                <div class="col-sm-10">
                    <label class="checkbox-inline">
                        <input type="checkbox" name="Support" id="inlineCheckbox1" value="option1"> 牀
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="Support" id="inlineCheckbox2" value="option2"> 寬帶
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="Support"id="inlineCheckbox3" value="option3"> 電視
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="Support"id="inlineCheckbox4" value="option4"> 冰箱
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="Support"id="inlineCheckbox5" value="option5"> 洗衣機
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="Support"id="inlineCheckbox6" value="option6"> 空調
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="Support"id="inlineCheckbox7" value="option7"> 熱水器
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="Support"id="inlineCheckbox8" value="option8"> 暖氣
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="fybt" class="col-sm-2 control-label ne">房源標題</label>
                <div class="col-sm-10">
                    <input type="text" name="Title" class="form-control" id="fybt" placeholder="房源標題">
                </div>
            </div>
            <div class="form-group">
                <label for="fyms" class="col-sm-2 control-label ne">房源描述</label>
                <div class="col-sm-10">
                    <textarea name="Desc" class="form-control" rows="5" id="fyms"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="rzsj" class="col-sm-2 control-label ne">入住時間</label>
                <div class="col-sm-4">
                    <input name="CheckInTime" type="text" class="form-control" id="rzsj">
                </div>
            </div>
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
    <script src="assets/js/jquery-2.1.4.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/masonry.pkgd.min.js"></script>
    <script src="assets/js/json2.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>

    <script>
        $(function(){
            $('#rzsj').datepicker();
        })
    </script>
</body>
</html>