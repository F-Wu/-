<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%//登录页，以及登录验证页不加
    //判断是否登录,验证session对象是否为空
    if (session.getValue("admin")==null){
        //登录失败
        out.print("<script>alert('非法进入！！');window.location.href='游记.html'</script>");
    }
%>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="CSS/游记.css">
</head>
<body>
<div>
    <!--头部1-->
    <div class="head clearfix margin">
        <!--logos-->
        <div class="logos clearfix">
            <div class="logo">
                <img src="img/游记/logo.png" >
            </div>
            <div class="name">
                <img src="img/游记/name.png" >
            </div>
        </div>
        <!-- 导航 -->
        <div class="nav">
            <ul class="navs clearfix">
                <li><a href="#">首页</a></li>
                <li>
                    <a href="#">地区</a>
                </li>
                <li><a href="#">特惠</a></li>
                <li><a href="#">资讯</a></li>
                <li class="start"><a href="./游记.html">游记</a></li>
            </ul>
        </div>
        <!-- 登录、注册 -->
        <div class="sign clearfix">
                <span>
                    欢迎您:<%=session.getValue("admin")%>
                </span>
            <div class="border"></div>
            <span>
                    <a href="logout.jsp">退出</a>
                </span>
        </div>
    </div>
</div>
<div class="div2">
    <!-- 头部2 -->
    <div class="head2 clearfix margin">
        <!-- 左侧搜索 -->
        <div class="left"></div>
        <!-- 右侧 -->
        <div class="right clearfix">
            <div class="hisrecold"></div>
            <div class="comment"></div>
            <a class="personal" href="管理员主页.jsp" style="display: block"></a>
        </div>
    </div>
</div>
<!-- 内容 -->
<div class="content clearfix margin">
    <!-- 左侧内容 -->
    <div class="cntleft">
        <!-- 标题 -->
        <div class="title">
            <!-- 精选文章 -->
            <div>
                <span>精选文章</span>
                <img src="./img/游记/rarrow.png">
            </div>
            <!-- 精选照片 -->
            <div>
                <span>精选照片</span>
                <img src="./img/游记/Darrow.png">
            </div>
        </div>
        <!-- 分割线 -->
        <div class="line"></div>
        <!-- 精选照片 -->
        <ul class="Selpht">
            <!-- 小桥流水 -->
            <li>
                <img src="./img/游记/Bridge.jpg">
                <div class="clearfix">
                    <div class="theme">
                        <p>小桥流水</p>
                        <span>2017年03月06日</span>
                    </div>
                    <img src="./img/游记/bridgeauthorpng.png">
                </div>
            </li>
            <!-- 黄昏与山 -->
            <li>
                <img src="./img/游记/mountain.png">
                <div class="clearfix">
                    <div class="theme">
                        <p>黄昏与山</p>
                        <span>2017年03月06日</span>
                    </div>
                    <img src="./img/游记/mounauthor.png">
                </div>
            </li>
            <!-- 冰雪奇缘 -->
            <li>
                <img src="./img/游记/Snow.png">
                <div class="clearfix">
                    <div class="theme">
                        <p>冰雪奇缘</p>
                        <span>2017年03月06日</s>
                    </div>
                    <img src="./img/游记/sniwauthor.png">
                </div>
            </li>
        </ul>
        <!-- 分割线 -->
        <div class="line"></div>
        <!-- 小照片部分 -->
        <ul class="smalpho">
            <!-- sun夕阳 -->
            <li>
                <div class="top clearfix">
                    <img src="./img/游记/sun.jpg">
                    <div class="theme">
                        <p>夕阳西下</p>
                        <span>2017年11月01日</span>
                    </div>
                </div>
                <!-- 分割线 -->
                <div class="line"></div>
            </li>
            <!-- 寻找seek -->
            <li>
                <div class="top clearfix">
                    <img src="./img/游记/seek.jpg">
                    <div class="theme">
                        <p>寻找</p>
                        <span>2017年2月01日</span>
                    </div>

                </div>
                <!-- 分割线 -->
                <div class="line"></div>
            </li>
            <!-- 梦dream -->
            <li>
                <div class="top clearfix">
                    <img src="./img/游记/dream.jpg">
                    <div class="theme">
                        <p>梦之旅</p>
                        <span>2017年8月08日</span>
                    </div>

                </div>
                <!-- 分割线 -->
                <div class="line"></div>
            </li>
            <!-- 古堡castle -->
            <li>
                <div class="top clearfix">
                    <img src="./img/游记/castle.png">
                    <div class="theme">
                        <p>古堡环绕</p>
                        <span>2017年02月01日</span>
                    </div>

                </div>
                <!-- 分割线 -->
                <div class="line"></div>
            </li>
            <!-- 童话fairy -->
            <li>
                <div class="top clearfix">
                    <img src="./img/游记/fairy.jpg">
                    <div class="theme">
                        <p>梦幻童话</p>
                        <span>2017年12月01日</span>
                    </div>

                </div>
                <!-- 分割线 -->
                <div class="line"></div>
            </li>
        </ul>
        <!-- 关于我们 -->
        <div class="abouus">
            <p>关于我们</p>
            <span>悠游旅游是全球领先的旅游网站**，帮助旅行者发现每次旅行中的更多精彩。提供超过5.7亿条点评和建议，全面覆盖全球的旅游商户——超过730万个住宿、航空公司、景点和餐厅信息，汇集众智帮助旅行者选择吃住玩乐。悠游旅游还搜索超过200家网站，帮助旅行者找到当日优惠的酒店价格并预订，悠游旅游：懂得更多，订得更好，玩得更棒。</span>
            <button>了解更多</button>
        </div>
    </div>
    <!-- 精选文章 -->
    <div class="Selarticle">
        <!-- 德国1 -->
        <div class="article">
            <!-- 头部 -->
            <div class="top clearfix">
                <div class="title">
                    <p>将德国的美好时光与幸福心态定格<span>Determine the good time and happiness of Germany</span></p>
                </div>
                <div class="titleatho">
                    <p>2017年12月23日</p>
                    <div class="clearfix">
                        <p>Ben</p>
                        <img src="./img/游记/ben.jpg">
                    </div>
                </div>
            </div>
            <img src="./img/游记/deguo.jpg">
            <p>喜欢洪莉，先喜欢她的语言表达，后来喜欢她的拍照功力，出了书以后又喜欢上她的文字。“浑身
                金毛、通体雪白。”谈起老公日耳曼民族的起源，洪莉用这八个字形容他们从山林中向这个世界走
                来的景象。我被她诗一般的语言迷住。我喜欢文字，洪莉偏偏是一个语言能力极强的人，她总是用
                特别浅白的语言，说出抑扬顿挫的诗意。</p>
            <div class="btn clearfix">
                <button>继续阅读</button>
                <ul class="clearfix">
                    <li>
                        <img src="./img/游记/Collection.jpg">
                        <span>187</span>
                        <div class="lines"></div>
                    </li>
                    <li>
                        <img src="./img/游记/love.jpg">
                        <span>256</span>
                        <div class="lines"></div>
                    </li>
                    <li>
                        <img src="./img/游记/comment.jpg">
                        <span>120</span>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 德国2 -->
        <div class="article">
            <!-- 头部 -->
            <div class="top clearfix">
                <div class="title">
                    <p>将德国的美好时光与幸福心态定格<span>Determine the good time and happiness of Germany</span></p>
                </div>
                <div class="titleatho">
                    <p>2017年12月23日</p>
                    <div class="clearfix">
                        <p>万鄄</p>
                        <img src="./img/游记/wang.jpg">
                    </div>
                </div>
            </div>
            <img src="./img/游记/deguo2.jpg">
            <p>喜欢洪莉，先喜欢她的语言表达，后来喜欢她的拍照功力，出了书以后又喜欢上她的文字。“浑身
                金毛、通体雪白。”谈起老公日耳曼民族的起源，洪莉用这八个字形容他们从山林中向这个世界走
                来的景象。我被她诗一般的语言迷住。我喜欢文字，洪莉偏偏是一个语言能力极强的人，她总是用
                特别浅白的语言，说出抑扬顿挫的诗意。</p>
            <div class="btn clearfix">
                <button>继续阅读</button>
                <ul class="clearfix">
                    <li>
                        <img src="./img/游记/Collection.jpg">
                        <span>187</span>
                        <div class="lines"></div>
                    </li>
                    <li>
                        <img src="./img/游记/love.jpg">
                        <span>256</span>
                        <div class="lines"></div>
                    </li>
                    <li>
                        <img src="./img/游记/comment.jpg">
                        <span>120</span>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 德国3 -->
        <div class="article">
            <!-- 头部 -->
            <div class="top clearfix">
                <div class="title">
                    <p>将德国的美好时光与幸福心态定格<span>Determine the good time and happiness of Germany</span></p>
                </div>
                <div class="titleatho">
                    <p>2017年12月23日</p>
                    <div class="clearfix">
                        <p>木子</p>
                        <img src="./img/游记/muzi.jpg">
                    </div>
                </div>
            </div>
            <img src="./img/游记/deguo3.jpg">
            <p>喜欢洪莉，先喜欢她的语言表达，后来喜欢她的拍照功力，出了书以后又喜欢上她的文字。“浑身
                金毛、通体雪白。”谈起老公日耳曼民族的起源，洪莉用这八个字形容他们从山林中向这个世界走
                来的景象。我被她诗一般的语言迷住。我喜欢文字，洪莉偏偏是一个语言能力极强的人，她总是用
                特别浅白的语言，说出抑扬顿挫的诗意。</p>
            <div class="btn clearfix">
                <button>继续阅读</button>
                <ul class="clearfix">
                    <li>
                        <img src="./img/游记/Collection.jpg">
                        <span>187</span>
                        <div class="lines"></div>
                    </li>
                    <li>
                        <img src="./img/游记/love.jpg">
                        <span>256</span>
                        <div class="lines"></div>
                    </li>
                    <li>
                        <img src="./img/游记/comment.jpg">
                        <span>120</span>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 翻页 -->
        <div class="tuenpage clearfix">
            <button><p><上一页</p></button>
            <ul class="clearfix">
                <li>1</li>
                <li><a href="">2</a></li>
                <li>3</li>
                <li>4</li>
                <li>5</li>
                <li>6</li>
                <li>7</li>
                <li>...</li>
                <li class="lilast">30</li>
            </ul>
            <button><下一页</button>
        </div>
    </div>

</div>
<!-- 页面底部 -->
<div class="page_btn">
    <div class="page_btn_text">
        <p>© 2017 Leyouyou.cn 粤ICP备12345678号 粤公网安备123456789012号 粤ICP证12345<br>营业执照 新出网证(粤)字123号 全国统一客服电话：0000-123-456</p>
    </div>
</div>
</body>
</html>
