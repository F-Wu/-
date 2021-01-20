<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%//登录页，以及登录验证页不加
    //判断是否登录,验证session对象是否为空
    if (session.getValue("admin")==null){
        //登录失败
        out.print("<script>alert('非法进入！！');window.location.href='游记.html'</script>");
    }
%>
<jsp:useBean id="conn" scope="page" class="com.ch6.Conn"></jsp:useBean>
<%request.setCharacterEncoding("UTF-8");%>
<%
    //删除操作 ,获取传进的id值
    String  id=request.getParameter("ID");
    //组合sql
    String sql="delete from scenic where id = "+id;
    //验证,打印输出
    System.out.println(sql);
    //自动执行删除
    int result= conn.save(sql);
    conn.close();//释放
    if (result>0)
        out.print("<script>alert('删除成功');window.location.href='景点列表.jsp'</script>");
    else
        out.print("<script>alert('删除失败');window.location.href='景点列表.jsp'</script>");
%>