<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%//登录页，以及登录验证页不加
    //判断是否登录,验证session对象是否为空
    if (session.getValue("admin")==null){
        //登录失败
        out.print("<script>alert('非法进入！！');window.location.href='游记.html'</script>");
    }
%>
<%
//    session.invalidate();
//    response.sendRedirect("");
    out.print("<script> alert('管理员退出成功'); window.location.href='游记.html';</script>");
%>