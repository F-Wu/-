<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
    <link rel="stylesheet" href="CSS/登录注册.css">
</head>
<body>
<!-- 大背景 -->
<div class="back">
    <!-- logo -->
    <div class="logo"></div>
    <!-- 内容 -->
    <div class="content">
        <!-- input -->
        <form action="注册管理.jsp" method="post">
            <input class="nanber" type="text" placeholder="您的用户名" name="Name">
            <input class="password" type="password" placeholder="您的密码" name="Password">
            <input class="password" type="text"  name="radioSex"  placeholder="您的性别">
            <input class="password" type="text" placeholder="您的手机号" name="ph">
            <button>立即注册</button>
        </form>
        <div class="hezuo">
            <p>用合作网站账户直接登录</p>
            <ul class="clearfix">
                <a href="">
                    <li class="weibo">
                        <p>新浪微博</p>
                    </li>
                </a>
                <a href="">
                    <li class="QQ">
                        <p>QQ</p>
                    </li>
                </a>
                <a href="">
                    <li class="wx">
                        <p>微信</p>
                    </li>
                </a>

            </ul>
        </div>
    </div>
    <div class="zuce">
        已有账号！<a href="登录.jsp">马上登录</a>
    </div>
</div>
</body>
</html>