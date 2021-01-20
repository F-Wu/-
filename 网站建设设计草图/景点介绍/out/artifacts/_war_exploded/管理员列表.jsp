<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="conn" scope="page" class="com.ch6.Conn"></jsp:useBean>
<%@ page import="java.sql.ResultSet" %>
<%request.setCharacterEncoding("UTF-8");%>
<%//登录页，以及登录验证页不加
    //判断是否登录,验证session对象是否为空
    if (session.getValue("admin")==null){
        //登录失败
        out.print("<script>alert('非法进入！！');window.location.href='游记.html'</script>");
    }
%>
<head>
    <meta charset="utf-8">
    <meta name="description" content="xxxxx">
    <meta name="author" content="xxxxx">
    <meta name="keyword" content="xxxxx">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户列表</title>
    <!-- start: Css -->
    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
    <!-- plugins -->
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/simple-line-icons.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/fullcalendar.min.css"/>
    <link href="asset/css/style.css" rel="stylesheet">
    <!-- end: Css -->

</head>

<body id="mimin" class="dashboard">
<!-- start: Header -->
<nav class="navbar navbar-default header navbar-fixed-top">
    <div class="col-md-12 nav-wrapper">
        <div class="navbar-header" style="width:100%;">
            <div class="opener-left-menu is-open"> <span class="top"></span> <span class="middle"></span> <span class="bottom"></span> </div>
            <a href="首页.jsp" class="navbar-brand">
                <b>返回首页</b>
            </a>
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
    <!-- start:Left Menu -->
    <div id="left-menu">
        <div class="sub-left-menu scroll">
            <ul class="nav nav-list">
                <li>
                    <div class="left-bg"></div>
                </li>
                <li class="ripple"> <a class="tree-toggle nav-header" id="left-menu-1"><a href="管理员主页.jsp"><span class="fa-home fa"></span> 管理员首页 <span class="fa-angle-right fa right-arrow text-right"></span></a> </a> </li>
                <li class="ripple active">
                    <a class="tree-toggle nav-header"  id="left-menu-2"> <span class="fa-diamond fa"></span> 用户管理
                        <span class="fa-angle-right fa right-arrow text-right"></span> </a>
                    <ul class="nav nav-list tree" >
                        <li><a href="管理员列表.jsp">用户列表</a></li>
                        <%--<li><a href="useredit.jsp">信息编辑</a></li>--%>
                    </ul>
                </li>
                <li class=" ripple">
                    <a class="tree-toggle nav-header"  id="left-menu-3"><span class="fa fa-check-square-o"></span> 景点信息管理
                        <span class="fa-angle-right fa right-arrow text-right"></span>
                    </a>
                    <ul class="nav nav-list tree">
                        <li><a href="景点列表.jsp">景点列表</a></li>
                        <%--<li><a href="newsitem.jsp">新闻详情</a></li>--%>
                        <li><a href="景点发布.jsp">景点发表</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <!-- end: Left Menu -->

    <!-- start: content -->
    <div id="content">
        <div class="panel">
            <div class="panel-body">
                <div class="col-md-12">
                    <h3 class="animated fadeInLeft">管理员列表</h3>
                    <p class="animated fadeInDown"> 业务 <span class="fa-angle-right fa"></span>  管理员列表 </p>
                </div>
            </div>
        </div>
        <div class="col-md-12 padding-0 form-element">
            <div class="col-md-12">
                <div class="panel form-element-padding">

                    <div class="panel">
                        <div class="panel-heading">
                            <h3>管理员信息</h3>
                        </div>
                        <div style="width: 50%;margin: 20px auto;font-size: medium;font-style: normal;">
                            <form method="post" action="管理员列表.jsp">
                                按姓名查找：<input type="text" name="txtSearchName">
                                按手机号查找：<input type="text" name="txtSearchph">
                                按性别查找：<input type="radio" value="男" name="radioSex">男
                                <input type="radio" value="女" name="radioSex">女
                                <input type="submit" value="搜索" class="submit btn btn-danger" style="margin-left: 35%;margin-top: 20px">
                            </form>
                        </div>
                        <div class="panel-body">
                            <div class="responsive-table">
                                <div id="datatables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <table class="table table-striped table-bordered dataTable no-footer" width="100%" cellspacing="0"  style="width: 100%;">
                                                <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc" style="width: 60px;">用户名</th>
                                                    <th class="sorting" style="width: 60px;">密码</th>
                                                    <th class="sorting" style="width: 60px;">性别</th>
                                                    <th class="sorting"  style="width: 60px;">手机号</th>
                                                    <th class="sorting"  style="width: 61px;">编辑</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                    //第一步获取输入姓名
                                                    String searchName=request.getParameter("txtSearchName");
                                                    String str1="";
                                                    if (null!=searchName && ! "".equals(searchName))
                                                        str1 ="and username like '%"+searchName+"%'";

                                                    else
                                                        str1=" ";
                                                    //按手机号搜索
                                                    String searchph=request.getParameter("txtSearchph");
                                                    String str2="";
                                                    if (null!=searchph && !"".equals(searchph))
                                                        str2=" and ph like '%"+searchph+"%'";
                                                    else
                                                        str2="";
                                                    //按性别搜索
                                                    String  sex=request.getParameter("radioSex");
                                                    String str3="";
                                                    if (null!=sex && !"".equals(sex))
                                                        str3=" and sex = '"+sex+"'";
                                                    else
                                                        str3="";

                                                    String sql="select* from admin where '1==1'"+str1+str2+str3;
                                                    ResultSet rs=conn.query(sql);
                                                    while(rs.next())
                                                    {//循环开始
                                                %>
                                                <tr role="row" class="odd">
                                                    <td class="sorting_1"><%=rs.getString("username")%></td>
                                                    <td><%=rs.getString("password")%></td>
                                                    <td><%=rs.getString("sex")%></td>
                                                    <td><%=rs.getString("ph")%></td>
                                                    <td><a href="管理员信息编辑.jsp?ID=<%=rs.getInt("id")%>">编辑 </a > | <a href="管理员信息删除.jsp?ID=<%=rs.getInt("id")%>"> 删除 </a> </td>
                                                </tr>
                                                <%
                                                    }
                                                    conn.close();
                                                %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
<script src="asset/js/moment.js"></script>
<script src="js/Confim.js"></script>
<!-- end: Javascript -->
<script>
    $("#left-menu-2").click() ;
</script>

</body>

</html>