<%--
  Created by IntelliJ IDEA.
  User: 时贝妮
  Date: 2019/12/17
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电影选择座位</title>


    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta http-equiv="cleartype" content="yes"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="renderer" content="webkit"/>

    <meta name="HandheldFriendly" content="true"/>
    <meta name="format-detection" content="email=no"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <script>"use strict";
    !function () {
        var i = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : "_Owl_", n = window;
        n[i] || (n[i] = {
            isRunning: !1, isReady: !1, preTasks: [], dataSet: [], use: function (i, t) {
                this.isReady && n.Owl && n.Owl[i](t), this.preTasks.push({api: i, data: [t]})
            }, add: function (i) {
                this.dataSet.push(i)
            }, run: function () {
                var t = this;
                if (!this.isRunning) {
                    this.isRunning = !0;
                    var i = n.onerror;
                    n.onerror = function () {
                        this.isReady || this.add({type: "jsError", data: arguments}), i && i.apply(n, arguments)
                    }.bind(this), (n.addEventListener || n.attachEvent)("error", function (i) {
                        t.isReady || t.add({type: "resError", data: [i]})
                    }, !0)
                }
            }
        }, n[i].run())
    }();</script>
    <script>
        cid = "c_2yzd0xp5";
        ci = 73;
        window.system = {
            "seatsPrice": {
                "1": {"expression": "29X1", "price": "29"},
                "2": {"expression": "29X2", "price": "58"},
                "3": {"expression": "29X3", "price": "87"},
                "4": {"expression": "29X4", "price": "116"},
                "5": {"expression": "29X5", "price": "145"},
                "6": {"expression": "29X6", "price": "174"}
            },
            "remind": "为了增加您的观影感受，影厅部分座椅加装了按摩坐垫，如有不适，请与工作人员联系～",
            "uuid": "0AE2ED501BEB11EAAECE4DFEB8858F4546A9E910DA714353883578D4ADDDAA3D",
            "cinemaId": 17075
        };

        window.openPlatform = '';
        window.openPlatformSub = '';
        window.$mtsiFlag = '0';

    </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/countSum.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/countSum2.css"/>
    <script crossorigin="anonymous"
            src="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/stat.88d57c80.js"></script>
    <script>if (window.devicePixelRatio >= 2) {
        document.write('<link rel="stylesheet" href="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/image-2x.8ba7074d.css"/>')
    }</script>
    <style>
        @font-face {
            font-family: stonefont;
            src: url('//vfile.meituan.net/colorstone/c6c90f8cfe5a1d52cb452bb4db3d764a3432.eot');
            src: url('//vfile.meituan.net/colorstone/c6c90f8cfe5a1d52cb452bb4db3d764a3432.eot?#iefix') format('embedded-opentype'),
            url('//vfile.meituan.net/colorstone/51966cef6c9815c093d8e4424f2414bf2272.woff') format('woff');
        }

        .stonefont {
            font-family: stonefont;
        }
    </style>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?703e94591e87be68cc8da0da7cbd0be2";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>
<body>


<div class="header">
    <div class="header-inner">

        <div class="city-container" data-val="{currentcityid:73 }">
            <a href="${pageContext.request.contextPath}/WEB-INF/jsp/FilmMain.jsp" data-act="icon-click"><img
                    src="${pageContext.request.contextPath}/image/longyanlogo.png"/></a>

        </div>
        <div class="nav">
            <ul class="navbar">
                <li><a href="/" data-act="home-click">首页</a></li>
                <li><a href="/films" data-act="movies-click">电影</a></li>
                <li><a href="/cinemas" data-act="cinemas-click">影院</a></li>
                <li><a href="http://www.gewara.com">演出</a></li>

                <li><a href="/board" data-act="board-click">榜单</a></li>
                <li><a href="/news" data-act="hotNews-click">热点</a></li>
                <li><a href="/edimall">商城</a></li>
            </ul>
        </div>

        <div class="user-info">
            <div class="user-avatar J-login">
                <img src="https://p0.meituan.net/movie/7dd82a16316ab32c8359debdb04396ef2897.png">
                <span class="caret"></span>
                <ul class="user-menu">
                    <li><a href="javascript:void 0">登录</a></li>
                </ul>
            </div>
        </div>

        <form action="/query" target="_blank" class="search-form" data-actform="search-click">
            <input name="kw" class="search" type="search" maxlength="32" placeholder="找影视剧、影人、影院" autocomplete="off">
            <input class="submit" type="submit" value="">
        </form>

        <div class="app-download">
            <a href="/app" target="_blank">
                <span class="iphone-icon"></span>
                <span class="apptext">APP下载</span>
                <span class="caret"></span>
                <div class="download-icon">
                    <p class="down-title">扫码下载APP</p>
                    <p class='down-content'>选座更优惠</p>
                </div>
            </a>
        </div>

    </div>
</div>
<div class="header-placeholder"></div>


<div class="container" id="app" class="page-cinemas/seat">
    <div class="order-progress-bar">
        <div class="step first done">
            <span class="step-num">1</span>
            <div class="bar"></div>
            <span class="step-text">选择影片场次</span>
        </div>
        <div class="step done">
            <span class="step-num">2</span>
            <div class="bar"></div>
            <span class="step-text">选择座位</span>
        </div>
        <div class="step ">
            <span class="step-num">3</span>
            <div class="bar"></div>
            <span class="step-text">14分钟内付款</span>
        </div>
        <div class="step last ">
            <span class="step-num">4</span>
            <div class="bar"></div>
            <span class="step-text">影院取票观影</span>
        </div>
    </div>


    <div class="main clearfix">
        <div class="hall">
            <div class="seat-example">
                <div class="selectable-example example">
                    <span>可选座位</span>
                </div>
                <div class="sold-example example">
                    <span>已售座位</span>
                </div>
                <div class="selected-example example">
                    <span>已选座位</span>
                </div>
                <div class="couple-example example">
                    <span>情侣座位</span>
                </div>
            </div>


            <div class="seats-block" data-cols="12" data-section-id="1" data-section-name="普通"
                 data-seq-no="201912180213724">
                <div class="row-id-container">
                    <span class="row-id">1</span>
                    <span class="row-id">2</span>
                    <span class="row-id">3</span>
                    <span class="row-id">4</span>
                    <span class="row-id">5</span>
                    <span class="row-id">6</span>
                    <span class="row-id">7</span>
                    <span class="row-id">8</span>
                    <span class="row-id">9</span>
                    <span class="row-id">10</span>
                    <span class="row-id">11</span>
                    <span class="row-id">12</span>
                </div>

                <div class="seats-container">
                    <div class="screen-container">
                        <div class="screen">银幕中央</div>
                        <div class="c-screen-line"></div>
                    </div>

                    <div class="seats-wrapper">
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="1"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="1"
                                  data-no="4101850101#01#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="1"
                                  data-no="4101850101#01#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="1"
                                  data-no="4101850101#01#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="1"
                                  data-no="4101850101#01#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="1"
                                  data-no="4101850101#01#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="1"
                                  data-no="4101850101#01#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="1"
                                  data-no="4101850101#01#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="1"
                                  data-no="4101850101#01#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="1"
                                  data-no="4101850101#01#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="10"
                                  data-row-id="1"
                                  data-no="4101850101#01#10"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="11"
                                  data-row-id="1"
                                  data-no="4101850101#01#11"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="2"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="2"
                                  data-no="4101850101#02#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="2"
                                  data-no="4101850101#02#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="2"
                                  data-no="4101850101#02#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="2"
                                  data-no="4101850101#02#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="2"
                                  data-no="4101850101#02#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="2"
                                  data-no="4101850101#02#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="2"
                                  data-no="4101850101#02#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="2"
                                  data-no="4101850101#02#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="2"
                                  data-no="4101850101#02#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="10"
                                  data-row-id="2"
                                  data-no="4101850101#02#10"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="11"
                                  data-row-id="2"
                                  data-no="4101850101#02#11"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="3"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="3"
                                  data-no="4101850101#03#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="3"
                                  data-no="4101850101#03#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="3"
                                  data-no="4101850101#03#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="3"
                                  data-no="4101850101#03#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="3"
                                  data-no="4101850101#03#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="3"
                                  data-no="4101850101#03#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="3"
                                  data-no="4101850101#03#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="3"
                                  data-no="4101850101#03#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="3"
                                  data-no="4101850101#03#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="10"
                                  data-row-id="3"
                                  data-no="4101850101#03#10"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="11"
                                  data-row-id="3"
                                  data-no="4101850101#03#11"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="4"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="4"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="4"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="4"
                                  data-no="4101850101#04#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="4"
                                  data-no="4101850101#04#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="4"
                                  data-no="4101850101#04#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="4"
                                  data-no="4101850101#04#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="4"
                                  data-no="4101850101#04#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="4"
                                  data-no="4101850101#04#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="4"
                                  data-no="4101850101#04#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="4"
                                  data-no="4101850101#04#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="4"
                                  data-no="4101850101#04#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="5"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="5"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="5"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="5"
                                  data-no="4101850101#05#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="5"
                                  data-no="4101850101#05#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="5"
                                  data-no="4101850101#05#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="5"
                                  data-no="4101850101#05#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="5"
                                  data-no="4101850101#05#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="5"
                                  data-no="4101850101#05#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="5"
                                  data-no="4101850101#05#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="5"
                                  data-no="4101850101#05#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="5"
                                  data-no="4101850101#05#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="6"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="6"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="6"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="6"
                                  data-no="4101850101#06#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="6"
                                  data-no="4101850101#06#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="6"
                                  data-no="4101850101#06#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="6"
                                  data-no="4101850101#06#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="6"
                                  data-no="4101850101#06#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="6"
                                  data-no="4101850101#06#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="6"
                                  data-no="4101850101#06#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="6"
                                  data-no="4101850101#06#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="6"
                                  data-no="4101850101#06#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="7"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="7"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="7"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="7"
                                  data-no="4101850101#07#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="7"
                                  data-no="4101850101#07#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="7"
                                  data-no="4101850101#07#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="7"
                                  data-no="4101850101#07#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="7"
                                  data-no="4101850101#07#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="7"
                                  data-no="4101850101#07#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="7"
                                  data-no="4101850101#07#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="7"
                                  data-no="4101850101#07#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="7"
                                  data-no="4101850101#07#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="8"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="8"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="8"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="8"
                                  data-no="4101850101#08#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="8"
                                  data-no="4101850101#08#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="8"
                                  data-no="4101850101#08#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="8"
                                  data-no="4101850101#08#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="8"
                                  data-no="4101850101#08#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="8"
                                  data-no="4101850101#08#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="8"
                                  data-no="4101850101#08#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="8"
                                  data-no="4101850101#08#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="8"
                                  data-no="4101850101#08#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="9"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="9"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="9"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="9"
                                  data-no="4101850101#09#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="9"
                                  data-no="4101850101#09#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="9"
                                  data-no="4101850101#09#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="9"
                                  data-no="4101850101#09#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="9"
                                  data-no="4101850101#09#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="9"
                                  data-no="4101850101#09#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="9"
                                  data-no="4101850101#09#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="9"
                                  data-no="4101850101#09#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="9"
                                  data-no="4101850101#09#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat empty"
                  data-column-id=""
                  data-row-id="10"
                  data-no=""
                  data-st="E"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="10"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="10"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="1"
                                  data-row-id="10"
                                  data-no="4101850101#10#01"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="10"
                                  data-no="4101850101#10#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="10"
                                  data-no="4101850101#10#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="10"
                                  data-no="4101850101#10#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="10"
                                  data-no="4101850101#10#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="10"
                                  data-no="4101850101#10#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="10"
                                  data-no="4101850101#10#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="10"
                                  data-no="4101850101#10#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="10"
                                  data-no="4101850101#10#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat selectable"
                  data-column-id="1"
                  data-row-id="11"
                  data-no="4101850101#11#01"
                  data-st="N"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat selectable"
                                  data-column-id="2"
                                  data-row-id="11"
                                  data-no="4101850101#11#02"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat empty"
                                  data-column-id=""
                                  data-row-id="11"
                                  data-no=""
                                  data-st="E"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="3"
                                  data-row-id="11"
                                  data-no="4101850101#11#03"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="4"
                                  data-row-id="11"
                                  data-no="4101850101#11#04"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="5"
                                  data-row-id="11"
                                  data-no="4101850101#11#05"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="6"
                                  data-row-id="11"
                                  data-no="4101850101#11#06"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="7"
                                  data-row-id="11"
                                  data-no="4101850101#11#07"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="8"
                                  data-row-id="11"
                                  data-no="4101850101#11#08"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="9"
                                  data-row-id="11"
                                  data-no="4101850101#11#09"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="10"
                                  data-row-id="11"
                                  data-no="4101850101#11#10"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat selectable"
                                  data-column-id="11"
                                  data-row-id="11"
                                  data-no="4101850101#11#11"
                                  data-st="N"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                        <div class="row">
            <span class="seat lover lover-left selectable"
                  data-column-id="1"
                  data-row-id="12"
                  data-no="4101850101#12#01"
                  data-st="L"
                  data-act="seat-click"
                  data-bid="b_s7eiiijf"
            ></span>
                            <span class="seat lover lover-right selectable"
                                  data-column-id="2"
                                  data-row-id="12"
                                  data-no="4101850101#12#02"
                                  data-st="R"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-left selectable"
                                  data-column-id="3"
                                  data-row-id="12"
                                  data-no="4101850101#12#03"
                                  data-st="L"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-right selectable"
                                  data-column-id="4"
                                  data-row-id="12"
                                  data-no="4101850101#12#04"
                                  data-st="R"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-left selectable"
                                  data-column-id="5"
                                  data-row-id="12"
                                  data-no="4101850101#12#05"
                                  data-st="L"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-right selectable"
                                  data-column-id="6"
                                  data-row-id="12"
                                  data-no="4101850101#12#06"
                                  data-st="R"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-left selectable"
                                  data-column-id="7"
                                  data-row-id="12"
                                  data-no="4101850101#12#07"
                                  data-st="L"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-right selectable"
                                  data-column-id="8"
                                  data-row-id="12"
                                  data-no="4101850101#12#08"
                                  data-st="R"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-left selectable"
                                  data-column-id="9"
                                  data-row-id="12"
                                  data-no="4101850101#12#09"
                                  data-st="L"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-right selectable"
                                  data-column-id="10"
                                  data-row-id="12"
                                  data-no="4101850101#12#10"
                                  data-st="R"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-left selectable"
                                  data-column-id="11"
                                  data-row-id="12"
                                  data-no="4101850101#12#11"
                                  data-st="L"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                            <span class="seat lover lover-right selectable"
                                  data-column-id="12"
                                  data-row-id="12"
                                  data-no="4101850101#12#12"
                                  data-st="R"
                                  data-act="seat-click"
                                  data-bid="b_s7eiiijf"
                            ></span>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <%--        电影部分动态实现--%>
        <div class="side">
            <div class="movie-info clearfix">
                <div class="poster">
                    <img src="https://localhost:8080/MovieHouseManage/image/zhongguojizhang.jpg">
                </div>
                <div class="content">
                    <p class="name text-ellipsis">中国机长</p>
                    <div class="info-item">
                        <span>类型 :</span>
                        <span class="value">剧情,传记</span>
                    </div>
                    <div class="info-item">
                        <span>时长 :</span>
                        <span class="value">111分钟</span>
                    </div>
                </div>
            </div>

            <div class="show-info">
                <div class="info-item">
                    <span>影院 :</span>
                    <span class="value text-ellipsis">奥斯卡大郑东国际影城</span>
                </div>
                <div class="info-item">
                    <span>影厅 :</span>
                    <span class="value text-ellipsis">1厅</span>
                </div>
                <div class="info-item">
                    <span>版本 :</span>
                    <span class="value text-ellipsis">国语2D</span>
                </div>
                <div class="info-item">
                    <span>场次 :</span>
                    <span class="value text-ellipsis screen">明天 12月18 16:40</span>
                </div>
                <div class="info-item">
                    <span>票价 :</span>
                    <span class="value text-ellipsis">￥29/张</span>
                </div>
            </div>

            <div class="ticket-info">
                <div class="no-ticket">
                    <p class="buy-limit">座位：一次最多选6个座位</p>
                    <p class="no-selected">请<span>点击左侧</span>座位图选择座位</p>
                </div>
                <div class="has-ticket" style="display:none">
                    <span class="text">座位：</span>
                    <div class="ticket-container" data-limit="6"></div>
                </div>

                <div class="total-price">
                    <span>总价 :</span>
                    <span class="price">0</span>
                </div>
            </div>

            <div class="confirm-order">
                <div id="iLoginComp"></div>

            </div>
        </div>
    </div>

    <script src="https://s0.meituan.net/bs/mt-login-component/v1.0.12/index.min.js"></script>
</div>

<div class="footer">
    <p class="friendly-links">
        关于猫眼 :
        <a href="http://ir.maoyan.com/s/index.php#pageScroll0" target="_blank">关于我们</a>
        <span></span>
        <a href="http://ir.maoyan.com/s/index.php#pageScroll1" target="_blank">管理团队</a>
        <span></span>
        <a href="http://ir.maoyan.com/s/index.php#pageScroll2" target="_blank">投资者关系</a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        友情链接 :
        <a href="http://www.meituan.com" data-query="utm_source=wwwmaoyan" target="_blank">美团网</a>
        <span></span>
        <a href="http://www.gewara.com" data-query="utm_source=wwwmaoyan">格瓦拉</a>
        <span></span>
        <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan" target="_blank">美团下载</a>
        <span></span>
        <a href="https://www.huanxi.com" data-query="utm_source=maoyan_pc" target="_blank">欢喜首映</a>
    </p>
    <p class="friendly-links">
        商务合作邮箱：v@maoyan.com
        客服电话：10105335
        违法和不良信息举报电话：4006018900
    </p>
    <p class="friendly-links">
        用户投诉邮箱：tousujubao@meituan.com
        舞弊线索举报邮箱：wubijubao@maoyan.com
    </p>
    <p class="friendly-links  credentials">
        <a href="/about/licence/1" target="_blank">中华人民共和国增值电信业务经营许可证 京B2-20190350</a>
        <span></span>
        <a href="/about/licence/4" target="_blank">营业性演出许可证 京演（机构）（2019）4094号</a>
    </p>
    <p class="friendly-links  credentials">
        <a href="/about/licence/3" target="_blank">广播电视节目制作经营许可证 （京）字第08478号</a>
        <span></span>
        <a href="/about/licence/2" target="_blank">网络文化经营许可证 京网文（2019）3837-369号 </a>
    </p>
    <p class="friendly-links  credentials">
        <a href="/rules/agreement" target="_blank">猫眼用户服务协议 </a>
        <span></span>
        <a href="/rules/rule" target="_blank">猫眼平台交易规则总则 </a>
        <span></span>
        <a href="/rules/privacy" target="_blank">隐私政策 </a>
    </p>
    <p class="friendly-links  credentials">
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102003232" target="_blank">京公网安备
            11010102003232号</a>
    </p>
    <p>北京猫眼文化传媒有限公司</p>
    <p>
        &copy;2016
        猫眼电影 maoyan.com</p>
    <div class="certificate">
        <a href="http://sq.ccm.gov.cn:80/ccnt/sczr/service/business/emark/toDetail/350CF8BCA8416C4FE0530140A8C0957E"
           target="_blank">
            <img src="http://p0.meituan.net/moviemachine/e54374ccf134d1f7b2c5b075a74fca525326.png"/>
        </a>
        <a href="/about/licence/5" target="_blank">
            <img src="http://p1.meituan.net/moviemachine/805f605d5cf1b1a02a4e3a5e29df003b8376.png"/>
        </a>
    </div>
</div>

<script crossorigin="anonymous" src="//www.dpfile.com/app/owl/static/owl_1.7.11.js"></script>
<script>
    Owl.start({
        project: 'com.sankuai.movie.fe.mywww',
        pageUrl: location.href.split('?')[0].replace(/\/\d+/g, '/:id'),
        devMode: false
    })
</script>
<!--<script crossorigin="anonymous" src="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/es5-shim.bbad933f.js"></script>-->
<!--<script crossorigin="anonymous" src="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/es5-sham.d6ea26f4.js"></script>-->
<script crossorigin="anonymous" src="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/common.9d00a28e.js"></script>
<script crossorigin="anonymous" src="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/cinemas-seat.ff61c305.js"></script>
</body>
</html>