<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>河工程分享群-首页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-1.11.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/main.js"></script>

    <script>
        window.onload = function () {
            //面向对象实现选项卡
            var t1 = new Tab("head-Tabs");
            t1.init();
        };
    </script>

</head>

<body>


<div class="container">

    <!-- 顶部间隙 -->
    <div style="height: 4px"></div>
    <!-- 顶部间隙 End-->

    <!-- 导航栏 -->
    <nav class="navbar navbar-default" id="home_nav">

        <!-- 小屏幕时导航栏被压缩  包括logo-->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#navbar-collapse" aria-expanded="false">
                <!-- 小屏幕显示不全时，显示三条杠 -->
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand">河工程分享论坛</a>
        </div>
        <!-- 小屏幕时导航栏被压缩 -->


        <!-- 导航主体 -->
        <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav nav-tabs  nav-pills ">
                <li role="presentation" class="active"><a href="index.jsp" target="_self">我的主页</a></li>
                <li role="presentation"><a href="download.html" target="_self">资料下载</a></li>
                <li role="presentation"><a href="bbs.html" target="_self">工程论坛</a></li>
                <li role="presentation"><a href="AboutUS.html" target="_self">关于我们</a></li>
                <li role="presentation" class="pull-right">
                    <button type="button" class="btn btn-default">登录</button>
                    <button type="button" class="btn btn-success"><span class="glyphicon glyphicon-home"></span>&nbsp;免费注册</button>
                </li>
            </ul>


            <form class="navbar-form">

                <!-- 站点地图 -->
                <ul class="breadcrumb" style="display: inline-block;padding-top: 10px" ;>
                    <li><span class="glyphicon glyphicon-home" aria-hidden="true"></span></li>
                    <li><a href="#">我的主页</a></li>
                </ul>
                <!-- 站点地图 End -->

                <!-- 搜索栏 -->
                <button type="submit" class="btn btn-default pull-right">搜索</button>
                <input id="secTxt" type="text" class="form-control pull-right" style="width:200px;"
                       placeholder="请输入查找内容">
                <!-- 搜索栏  End -->

            </form>
        </div>
        <!-- 导航主体 End -->

    </nav>
    <!-- 导航栏 End-->

    <!-- 广告栏 -->
    <div class="" style="height: 260px;">

        <div class="jumbotron">
            <h3>广告栏</h3>
            <p>这里是想写的文本。。。。。</p>
            <a href="#" class="btn btn-danger btn-lg">阅读更多</a>
        </div>

    </div>
    <!-- 广告栏 End -->

    <!-- 主体部分-->
    <div class="row">


        <!-- 侧边栏 -->
        <div class="col-xs-3">


            <!-- 属性面板 -->
            <div class="panel panel-primary">
                <div class="panel-heading">个人面板</div>
                <div class="panel-body">

                    <div style="text-align: center; margin: 4px">
                        <img src="img/头像.jpg" height="150px" width="150px" class="img-circle" style="text-align: center;border: #36a2d1 1px solid">
                    </div>

                    <div style="margin: 12px">
                        <table>
                            <tr>
                                <td>
                                    <h3>${user.nickName}</h3>
                                    <span class="glyphicon glyphicon-grain" aria-hidden="true"
                                          style="font-size: 16px;margin-left: 4px"></span>
                                    <a style="font-size: 16px;margin-left: 4px">${user.enrollmentYear}</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-heart-empty" aria-hidden="true"
                                          style="font-size: 16px;margin-left: 4px"></span>
                                    <a style="font-size: 16px;margin-left: 4px">${user.experience}声望</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-education" aria-hidden="true"
                                          style="font-size: 14px;margin-left: 4px"></span>
                                    <a style="font-size: 14px;margin-left: 4px">${academyName}</a><br>
                                    <a style="font-size: 14px;margin-left: 26px">${professionName}</a>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
            <!-- 属性面板 end -->

            <hr>

            <!-- 互动面板 -->
            <div class="panel panel-info">
                <div class="panel-heading">互动</div>
                <div class="panel-body">
                    <table class="col-xs-12 ba_color" style="text-align: center;padding-top: 4px ;height: 80px">
                        <tr>
                            <td>
                                <a style="color: black"  onclick="alert_show()">
                                <span class="glyphicon glyphicon-book" aria-hidden="true"
                                      style="font-size: 20px;color: #3f86d1;"></span>
                                    <br>
                                    <br>
                                    资料分享
                                </a>
                            </td>
                            <td>
                                <a style="color: black" href="#">
                                <span class="glyphicon glyphicon-edit" aria-hidden="true"
                                      style="font-size: 20px;color: #3f86d1;"></span>
                                    <br>
                                    <br>
                                    写回答
                                </a>
                            </td>
                            <td>
                                <a style="color: black" href="#">
                                <span class="glyphicon glyphicon-education" aria-hidden="true"
                                      style="font-size: 20px;color: #3f86d1;"></span>
                                    <br>
                                    <br>
                                    提问题
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- 互动面板 End-->

            <hr>

            <!-- 信息面板 -->
            <div class="panel panel-warning">
                <div class="panel-heading">信息</div>
                <div class="panel-body">

                    <table class="table table-condensed table-hover">
                        <tr>
                            <td class="b1"><span class="glyphicon glyphicon-star-empty" aria-hidden="true"
                                                 style="font-size: 14px;display: inline;"></span></td>
                            <td class="b2"><a>我的收藏</a></td>
                            <td class="b3"><span class="badge">3</span></td>
                        </tr>
                        <tr>
                            <td class="b1"><span class="glyphicon glyphicon-tag" aria-hidden="true"
                                                 style="font-size: 14px"></span></td>
                            <td class="b2"><a>我关注的问题</a></td>
                            <td class="b3"><span class="badge">3</span></td>
                        </tr>
                        <tr>
                            <td class="b1"><span class="glyphicon glyphicon-earphone" aria-hidden="true"
                                                 style="font-size: 14px"></span></td>
                            <td class="b2"><a>我的邀请</a></td>
                            <td class="b3"><span class="badge">3</span></td>
                        </tr>
                        <tr>
                            <td class="b1"><span class="glyphicon glyphicon-file" aria-hidden="true"
                                                 style="font-size: 14px"></span></td>
                            <td class="b2"><a>我的回答</a></td>
                            <td class="b3"><span class="badge" style="background: #5bc0de">3</span></td>
                        </tr>
                    </table>

                </div>
            </div>
            <!-- 信息面板 End-->

            <hr>

            <!-- 标签面板 -->
            <div class="panel panel-success">
                <div class="panel-heading">标签</div>
                <div class="panel-body">
                    <c:forEach items="${json}" var="lab" varStatus="status">
                        <button type="button" class="btn btn-success dropdown-toggle btn-group-xs pull-left"
                                aria-haspopup="true" aria-expanded="false" style="margin: 2px">${lab.name}
                        </button>
                    </c:forEach>


                </div>
            </div>
            <!-- 标签面板 End-->


        </div>
        <!-- 侧边栏 End-->

        <div class="col-xs-9" style="padding: 0px;">

            <!-- 分栏广告板 -->
            <div id="head-Tabs" style="height: auto;">

                <div class="btn-group btn-group-justified" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default" style="background: #ffcc63">热门主题</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default">最新帖子</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default">最新回复</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default">悬赏任务</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default">我的属性</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default">社区成员</button>
                    </div>
                </div>

                <div class="sel_pan">
                    <div class="sel_div" style="display: block;">111</div>
                    <div class="sel_div">222</div>
                    <div class="sel_div">333</div>
                    <div class="sel_div">444</div>
                    <div class="sel_div">555</div>
                    <div class="sel_div">666</div>
                </div>

            </div>
            <!-- 分栏广告板 End -->

            <!-- 资源分享区 -->
            <div class="panel-group" id="homeBody_pane">

                <!-- 原件分享-资料下载 -->
                <div class="panel panel-default">
                    <div class="panel-heading" data-toggle="collapse" data-target="#body_pan1"
                         data-parent="#homeBody_pane">
                        <h4 class="panel-title">
                            <a style="text-decoration-line: none; color: #5bc0de">基础课-资料下载</a>
                        </h4>
                    </div>

                    <div class="collapse panel-collapse in" id="body_pan1">
                        <div class="panel-body">
                            <div class="row">

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                            </div>

                            <ul class=" pagination pagination-sm " style="position: relative; left: 300px">
                                <li><a>&laquo;</a></li>
                                <li class="active"><a>1</a></li>
                                <li><a>2</a></li>
                                <li><a>3</a></li>
                                <li><a>4</a></li>
                                <li><a>5</a></li>
                                <li><a>6</a></li>
                                <li><a>&raquo;</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- 基础课-资料下载 End-->

                <!-- 专业课-资料下载 -->
                <div class="panel panel-default">
                    <div class="panel-heading" data-toggle="collapse" data-target="#body_pan2"
                         data-parent="#homeBody_pane">
                        <h4 class="panel-title">
                            <a style="text-decoration-line: none; color: #5bc0de">专业课-资料下载</a>
                        </h4>
                    </div>

                    <div class="collapse panel-collapse" id="body_pan2">
                        <div class="panel-body">

                            <div class="row">

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                            </div>

                            <ul class=" pagination pagination-sm " style="position: relative; left: 300px">
                                <li><a>&laquo;</a></li>
                                <li class="active"><a>1</a></li>
                                <li><a>2</a></li>
                                <li><a>3</a></li>
                                <li><a>4</a></li>
                                <li><a>5</a></li>
                                <li><a>6</a></li>
                                <li><a>&raquo;</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- 专业课-资料下载 End-->

                <!-- 常用软件-下载 -->
                <div class="panel panel-default">
                    <div class="panel-heading" data-toggle="collapse" data-target="#body_pan4"
                         data-parent="#homeBody_pane">
                        <h4 class="panel-title">
                            <a style="text-decoration-line: none; color: #5bc0de">大学英语四、六考试-资料下载</a>
                        </h4>
                    </div>

                    <div class="collapse panel-collapse" id="body_pan4">
                        <div class="panel-body">

                            <div class="row">

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>


                            </div>


                            <ul class=" pagination pagination-sm " style="position: relative; left: 300px">
                                <li><a>&laquo;</a></li>
                                <li class="active"><a>1</a></li>
                                <li><a>2</a></li>
                                <li><a>3</a></li>
                                <li><a>4</a></li>
                                <li><a>5</a></li>
                                <li><a>6</a></li>
                                <li><a>&raquo;</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- 常用软件-下载 End-->

                <!-- 计算机等级考试-资料下载 -->
                <div class="panel panel-default">
                    <div class="panel-heading" data-toggle="collapse" data-target="#body_pan3"
                         data-parent="#homeBody_pane">
                        <h4 class="panel-title">
                            <a style="text-decoration-line: none; color: #5bc0de">计算机等级考试-资料下载</a>
                        </h4>
                    </div>

                    <div class="collapse panel-collapse" id="body_pan3">
                        <div class="panel-body">

                            <div class="row">

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                            </div>


                            <ul class=" pagination pagination-sm " style="position: relative; left: 300px">
                                <li><a>&laquo;</a></li>
                                <li class="active"><a>1</a></li>
                                <li><a>2</a></li>
                                <li><a>3</a></li>
                                <li><a>4</a></li>
                                <li><a>5</a></li>
                                <li><a>6</a></li>
                                <li><a>&raquo;</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- 计算机等级考试-资料下载 End-->

                <!-- 大学英语四、六考试-资料下载 -->
                <div class="panel panel-default">
                    <div class="panel-heading" data-toggle="collapse" data-target="#body_pan5"
                         data-parent="#homeBody_pane">
                        <h4 class="panel-title">
                            <a style="text-decoration-line: none; color: #5bc0de">大学英语四、六考试-资料下载</a>
                        </h4>
                    </div>

                    <div class="collapse panel-collapse" id="body_pan5">
                        <div class="panel-body">

                            <div class="row">

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                                <div class="mini_div col-xs-12 col-md-6 col-lg-4">
                                    <div class="mini_top">
                                        <img class="img-rounded" src="img/timg.jpg">

                                        <div>
                                            <p><a>Python</a>(12)</p>
                                            <p style="font-size: 10px;line-height: 8px">主题: 61, 帖数: 1473</p>
                                            <p style="font-size: 10px;line-height: 8px">最后发表: 1 分钟前</p>
                                        </div>
                                    </div>
                                    <div class="mini_down">
                                        <table class="table table-condensed table-hover">
                                            <tr>
                                                <td class="c1">1</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">2</td>
                                                <td class="c2"><a>拓薪架构师专属之大数据尊享铂金专业培训课程</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">3</td>
                                                <td class="c2"><a>拓薪Java互联网阶段及电商实战项</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">4</td>
                                                <td class="c2"><a>拓薪Java基础入门阶段</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                            <tr>
                                                <td class="c1">5</td>
                                                <td class="c2"><a>尚硅谷Spring</a></td>
                                                <td class="c3"><span>04-15/11:40</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                            </div>

                            <ul class=" pagination pagination-sm " style="position: relative; left: 300px">
                                <li><a>&laquo;</a></li>
                                <li class="active"><a>1</a></li>
                                <li><a>2</a></li>
                                <li><a>3</a></li>
                                <li><a>4</a></li>
                                <li><a>5</a></li>
                                <li><a>6</a></li>
                                <li><a>&raquo;</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- 大学英语四、六考试-资料下载 End-->

            </div>
            <!-- 资源分享区 End-->

        </div>

        <!--页尾 -->
        <div class="col-xs-12" style="height: 200px;border: 1px rebeccapurple solid;margin-top: 20px"></div>
        <!--页尾 End-->

    </div>


</div>


<!-- 弹窗与遮罩 -->
<div id="cover" class="hide" ></div>
<div id="alert" class="hide">
    <!-- 属性面板 -->
    <div class="panel panel-info">
        <div class="panel-heading">
            分享网盘文件
        </div>
        <div class="panel-body" id="share_alert_body">

            <textarea class="form-control" rows="4" placeholder="请描述所分享内容的"></textarea>

            <div style="margin-top: 14px">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="panUrl" class="col-sm-2 control-label">网盘网址：</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="panUrl">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="panCode" class="col-sm-2 control-label">分享密码：</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="panCode">
                        </div>
                    </div>
                </form>
            </div>

            <form style="position: relative">

                <div>
                    <p style="position: relative;left: 400px;display: inline-block;font-size: 16px;">添加本地文件附件
                        <input type="file" id="exampleInputFile" style="display: inline-block;margin-left: 8px">
                    </p>
                </div>

                <hr>

                <div>
                    <h5 style="display:inline-block;">适用年级:</h5>
                    <div class="btn-group btn-group-sm" role="group" aria-label="年级" style="margin-bottom: 2px;margin-left: 8px; display:inline-block;">
                        <button type="button" class="btn btn-default">大一</button>
                        <button type="button" class="btn btn-default">大二</button>
                        <button type="button" class="btn btn-default">大三</button>
                        <button type="button" class="btn btn-default">大四</button>
                        <button type="button" class="btn btn-default">通用</button>
                    </div>

                    <h5 style="display:inline-block;margin-left: 32px">选填:</h5>
                    <select class="form-control btn-xs" style="width: 140px;margin-left: 8px; display:inline-block;">
                        <option>——请选择学院——</option>
                        <option>矿测学院</option>
                        <option>信电学院</option>
                        <option>文法学院</option>
                        <option>数理学院</option>
                    </select>

                    <select class="form-control btn-xs" style="width: 140px;margin-left: 8px; display:inline-block;">
                        <option>——请选择专业——</option>
                        <option>安全工程</option>
                        <option>测绘工程</option>
                        <option>遥感科学与技术</option>
                        <option>采矿工程</option>
                    </select>
                </div>



                <!-- 资料所属分类 -->
                <div style="margin-top: 4px">
                    <h5 style="display:inline-block;">资源分类:</h5>
                    <select class="form-control btn-xs" style="width: 140px;margin-left: 8px; display:inline-block;">
                        <option>专业课程</option>
                        <option>软件学习</option>
                        <option>英语考证</option>
                        <option>计算机考证</option>
                        <option>考研</option>
                        <option>杂类</option>
                    </select>

                    <select class="form-control btn-xs" style="width: 140px;margin-left: 8px; display:inline-block;">
                        <option>考试复习重点</option>
                        <option>教程习题答案</option>
                        <option>实习、实验报告</option>
                        <option>课程设计</option>
                        <option>专业赛事</option>
                        <option>拓展学习</option>
                    </select>

                    <select class="form-control btn-xs" style="width: 140px;margin-left: 8px; display:inline-block;">
                        <option>高数</option>
                        <option>大物</option>
                        <option>电气</option>
                    </select>

                    <select class="form-control btn-xs" style="width: 140px;margin-left: 8px; display:inline-block;">
                        <option>图片(jpg)</option>
                        <option>文档(doc、PDF)</option>
                        <option>幻灯片(ppt)</option>
                        <option>各类格式混合</option>
                    </select>

                </div>

                <!-- 资料来源 -->
                <div style="margin-top: 4px">
                    <h5 style="display:inline-block;">是否原创:</h5>
                    <label style="margin-left: 8px">
                        <input type="radio" name="op-source" id="op5" value="option1" checked>我是原创
                    </label>

                    <label style="margin-left: 8px">
                        <input type="radio" name="op-source" id="op6" value="option2">来源于互联网
                    </label>

                    <label style="margin-left: 8px">
                        <input type="radio" name="op-source" id="op7" value="option2">来源于其他渠道
                    </label>

                </div>
            </form>


        </div>
        <div class="panel-footer" style="text-align: center;">
            <button type="submit" class="btn btn-success btn-lg" style="width: 150px;">确认提交</button>
            <button type="submit" class="btn btn-danger btn-lg" style="width: 150px;margin-left: 30px" onclick="alert_hide()">取消返回</button>
        </div>
    </div>
    <!-- 属性面板 end -->


</div>



</body>
</html>
