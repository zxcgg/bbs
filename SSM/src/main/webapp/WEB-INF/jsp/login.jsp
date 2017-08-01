<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="/css/styles.css">
</head>
<body>
<div class="htmleaf-container">

    <div class="wrapper">

        <div class="container">
            <h1>Welcome</h1>

            <form class="form" action="/user/userlogin" method="post">
                <input type="text" placeholder="用户名" id="username" name="username">
                <input type="password" placeholder="密  码" id="pass" name="pass">
                <span id="vailspan"></span><br>
                <input type="button" id="change" value="${sessionScope.user.username}换一首歌">
                <button type="submit" class="login-button" id="login-button">登录</button>
                <button id="zhuce" class="login-button">注册</button>
            </form>
        </div>
        <ul class="bg-bubbles">
            <div class="yinyue" id="yinyue">
                <audio autoplay>
                    <source src="http://mp3.flash127.com/music/18440.mp3" type="audio/mpeg">
                    您的浏览器不支持音频格式。
                </audio>
            </div>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>

        </ul>

    </div>
</div>

<script src="/js/jquery.min.js" type="text/javascript"></script>
<script src="/js/login.js" type="text/javascript"></script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#000000">
    <h1>欢迎登录</h1>
</div>
</body>
</html>