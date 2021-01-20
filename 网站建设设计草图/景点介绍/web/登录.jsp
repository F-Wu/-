<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登陆</title>
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
            <form action="登录管理.jsp" method="post" name="loginForm">
                <input class="nanber" type="text" placeholder="用户名" name="Name">
                <input class="password" type="password" placeholder="您的密码" name="Password">
                <p><a href = "JavaScript:void(0)" onclick = "openDialog()">忘记密码</a></p>
                <div id="light" class="white_content">
                    <a href = "javascript:void(0)" onclick = "closeDialog()">关闭本窗口</a>
                    <img src="img/登录界面/忘记密码.jpg" style="width: 90%;height: 90%;">
                </div>
                <div id="fade" class="black_overlay"></div>
                <button>登录</button>
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
            还没有账号？<a href="注册.jsp">马上注册</a>
        </div>
    </div>
<script type="text/javascript">
    $(function(){
    })
    function openDialog(){
        document.getElementById('light').style.display='block';
        document.getElementById('fade').style.display='block'
    }
    function closeDialog(){
        document.getElementById('light').style.display='none';
        document.getElementById('fade').style.display='none'
    }
</script>
</body>
</html>
