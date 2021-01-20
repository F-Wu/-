<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="conn" scope="page" class="com.ch6.Conn"></jsp:useBean>
<%//登录验证
    //第一步获取用户名和密码
    String name = request.getParameter("Name");
    String password = request.getParameter("Password");
    //组合sql语句
    String sql="select * from admin where username = '"+name+"' and password ='"+password+"' ";
    System.out.println(sql);
    //调用执行
    ResultSet rs = conn.query(sql);
    if(rs.next()){
        session.setAttribute("admin",name);//创建session对象，内容是当前登录的用户名
        out.print("<script> alert('成功！'); window.location.href='首页.jsp';</script>");

    }
    else{
        out.print("<script> alert('用户名密码错误！请重试'); window.location.href='登录.jsp';</script>");
//        response.sendRedirect("首页.jsp");//跳转到index.jsp
    }
%>
