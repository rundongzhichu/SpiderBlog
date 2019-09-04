<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/x-icon" href="images/icon/logo.ico" />
    <link type="text/css" rel="styleSheet"  href="static/css/login.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录/注册</title>
</head>

<body>
    <div id="bg">
        <div id="hint"><!-- 提示框 -->
            <p>登录失败</p>
        </div>
        <div id="login_wrap">
            <div id="login"><!-- 登录注册切换动画 -->
                <div id="status">
                    <i style="top: 0">Log</i>
                    <i style="top: 35px">Sign</i>
                    <i style="right: 5px">in</i>
                </div>
                <span>
                    <form method="post" action="/LoginServlet">
                        <p class="form"><input type="text" id="user" name="uname" placeholder="username"></p>
                        <p class="form"><input type="password" id="passwd" name="upass" placeholder="password"></p>
                        <input type="submit" value="Log in" class="btn" onclick="login()" style="margin-right: 20px;">
                    </form>
                    <a href="#">Forget your password?</a>
                </span>
            </div>

            <div id="login_img"><!-- 图片绘制框 -->
                <span class="circle">
                    <span></span>
                    <span></span>
                </span>
                <span class="star">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </span>
                <span class="fly_star">
                    <span></span>
                    <span></span>
                </span>
                <p id="title">BLOGES</p>
            </div>
        </div>
    </div>
    <script type='text/javascript' src='static/js/login.js'></script>
</body>
</html>