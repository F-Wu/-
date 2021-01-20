<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="conn" scope="page" class="com.ch6.Conn"></jsp:useBean>
<%//登录页，以及登录验证页不加
    //判断是否登录,验证session对象是否为空
    if (session.getValue("admin")==null){
        //登录失败
        out.print("<script>alert('非法进入！！');window.location.href='游记.html'</script>");
    }
%>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="description" content="xxxxx">
    <meta name="author" content="xxxxx">
    <meta name="keyword" content="xxxxx">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户编辑</title>
    <!-- start: Css -->
    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
    <!-- plugins -->
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/simple-line-icons.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/fullcalendar.min.css"/>
    <link href="asset/css/style.css" rel="stylesheet">

</head>

<body id="mimin" class="dashboard">
<!-- start: Header -->
<nav class="navbar navbar-default header navbar-fixed-top">
    <div class="col-md-12 nav-wrapper">
        <div class="navbar-header" style="width:100%;">
            <div class="opener-left-menu is-open"> <span class="top"></span> <span class="middle"></span> <span class="bottom"></span> </div>
            <a href="首页.jsp" class="navbar-brand"> <b>返回首页</b> </a>
            <ul class="nav navbar-nav navbar-right user-nav">
                <li class="user-name"><span><%=session.getValue("admin")%></span></li>
                <li class="dropdown avatar-dropdown"> <img src="asset/img/avatar.jpg" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                    <ul class="dropdown-menu user-dropdown">
                        <li><a href="#"><p value="<%=session.getValue("admin")%>" id="backli" onclick="back()"><span class="fa fa-power-off"></span> 退出登录</p></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- end: Header -->
<div class="container-fluid mimin-wrapper">
    <div id="left-menu">
        <div class="sub-left-menu scroll">
            <ul class="nav nav-list">
                <li>
                    <div class="left-bg"></div>
                </li>
                <li class="active ripple"> <a class="tree-toggle nav-header"  id="left-menu-1"><a href="管理员主页.jsp"><span class="fa-home fa"></span> 管理员首页 <span class="fa-angle-right fa right-arrow text-right"></span></a> </a> </li>
                <li class="ripple"> <a class="tree-toggle nav-header"  id="left-menu-2" > <span class="fa-diamond fa"></span> 用户管理 <span class="fa-angle-right fa right-arrow text-right"></span> </a>
                    <ul class="nav nav-list tree">
                        <li><a href="管理员列表.jsp">管理员列表</a></li>
                        <%--<li><a href="useredit.jsp">信息编辑</a></li>--%>
                    </ul>
                </li>
                <li class="ripple"> <a class="tree-toggle nav-header"  id="left-menu-3"><span class="fa fa-check-square-o"></span> 景点信息管理 <span class="fa-angle-right fa right-arrow text-right"></span> </a>
                    <ul class="nav nav-list tree" >
                        <li><a href="景点列表.jsp">景点列表</a></li>
                        <%--<li><a href="newsitem.jsp">新闻详情</a></li>--%>
                        <li><a href="管理员主页.jsp">景点发布</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <div id="content">
        <div class="panel">
            <div class="panel-body">
                <div class="col-md-12">
                    <h3 class="animated fadeInLeft">景点信息编辑页面</h3>
                    <p class="animated fadeInDown"> 业务 <span class="fa-angle-right fa"></span> 编辑页面 </p>
                </div>
            </div>
        </div>
        <%
            //修改操作 ,获取传进的id值
            String  id=request.getParameter("ID");
            //根据传递过来的值去数据库user表中找到相应记录   组合sql
            String sql="select * from scenic where id = "+id;
            //验证,打印输出
            System.out.println(sql);
            //自动执行
            ResultSet rs = conn.query(sql);
            if (rs.next())
            {
        %>
        <form action="景点信息编辑管理.jsp" method="post">
            <div class="form-element">
                <div class="col-md-12 padding-0">
                    <div class="col-md-12">
                        <div class="panel form-element-padding">
                            <div class="panel-heading">
                                <h4>基本信息</h4>
                            </div>
                            <div class="panel-body" style="padding-bottom:30px;">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label text-right" style="display: none;">用户名ID</label>
                                        <div class="col-sm-3">
                                            <input id="button1" type="text"  name="id" class="form-control" style="display: none;" value="<%=rs.getString("id")%>">

                                        </div>
                                        <label class="col-sm-1 control-label text-right" >主题</label>
                                        <div class="col-sm-3">
                                            <input id="button2" type="text" name="title" class="form-control" value="<%=rs.getString("title")%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label text-right" style="display: none;">用户名</label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" style="display: none;">
                                        </div>
                                        <label class="col-sm-1 control-label text-right">作者</label>
                                        <div class="col-sm-3">
                                            <input id="button3" type="text" name="author" class="form-control" value="<%=rs.getString("author")%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label text-right" style="display: none;">用户名</label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" style="display: none;">
                                        </div>
                                        <label class="col-sm-1 control-label text-right">主题英文</label>
                                        <div class="col-sm-3">
                                            <input id="button4" type="text" name="E" class="form-control" value="<%=rs.getString("E")%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label text-right" style="display: none;">用户名</label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" style="display: none;">
                                        </div>
                                        <label class="col-sm-1 control-label text-right">发表日期</label>
                                        <div class="col-sm-3">
                                            <input id="button5" type="text" name="time" class="form-control" value="<%=rs.getString("timeS")%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label text-right" style="display: none;">用户名</label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" style="display: none;">
                                        </div>
                                        <label class="col-sm-1 control-label text-right">收藏数</label>
                                        <div class="col-sm-3">
                                            <input id="button6" type="text" name="Collection" class="form-control" value="<%=rs.getString("Collection")%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label text-right" style="display: none;">用户名</label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" style="display: none;">
                                        </div>
                                        <label class="col-sm-1 control-label text-right">介绍</label>
                                        <div class="col-sm-3">
                                            <textarea id="button"  name="introduce" class="form-control" cols="1" rows="1" style="display: block">
                                                <%=rs.getString("introduce")%>
                                            </textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label text-right" style="display: none;">用户名</label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" style="display: none;">
                                        </div>
                                        <label class="col-sm-1 control-label text-right">点赞数</label>
                                        <div class="col-sm-3">
                                            <input id="button7" type="text" name="give" class="form-control" value="<%=rs.getString("give")%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-1 control-label text-right" style="display: none;">用户名</label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" style="display: none;">
                                        </div>
                                        <label class="col-sm-1 control-label text-right">评论数</label>
                                        <div class="col-sm-3">
                                            <input id="button8" type="text" name="discuss" class="form-control" value="<%=rs.getString("discuss")%>">
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                        <div class="col-md-12 text-center" style="margin:20px; margin-left: -70px;">
                            <input class="submit btn btn-danger" type="submit" value="保存" >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input class="submit btn btn-danger" type="reset" value="重置" >
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <%
            }else {
                out.print("不存在当前编辑的记录");
            }
        %>
    </div>
    <!-- end: content -->

</div>

<!-- start: Javascript -->
<script src="asset/js/jquery.min.js"></script>
<script src="asset/js/jquery.ui.min.js"></script>
<script src="asset/js/bootstrap.min.js"></script>
<!-- plugins -->
<script src="asset/js/plugins/jquery.nicescroll.js"></script>
<!-- custom -->
<script src="asset/js/main.js"></script>
<%--<script src="js/login.js"></script>--%>
<script src="asset/js/moment.js"></script>
<%--<script src="js/Confim.js"></script>--%>
<!-- end: Javascript -->
<script>
    $("#left-menu-2").click() ;
</script>
<%--<script src="js/Confim.js"></script>--%>
</body>
</html>