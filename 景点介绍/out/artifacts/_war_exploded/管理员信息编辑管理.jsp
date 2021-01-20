<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="conn" scope="page" class="com.ch6.Conn"></jsp:useBean>
<%//登录页，以及登录验证页不加
    //判断是否登录,验证session对象是否为空
    if (session.getValue("admin")==null){
        //登录失败
        out.print("<script>alert('非法进入！！');window.location.href='游记.html'</script>");
    }
%>
<%  request.setCharacterEncoding("UTF-8");%>
<%//编辑保存
    //获取表单数据
    String  id=request.getParameter("id");
    String name=request.getParameter("username");
    String password=request.getParameter("userpassword");
    String sex=request.getParameter("usersex");
    String ph=request.getParameter("userph");
    //组合sql语句  更新数据库内容操作
    String sql="update admin set username= '"+name+"',password='"+password+"',sex='"+sex+"',ph='"+ph+"' where id ="+id;
    //验证,打印输出
    System.out.println(sql);
    //自动执行
    int result= conn.save(sql);
    conn.close();//释放
    if (result>0) {
        out.print("<script>alert('修改成功');window.location.href='管理员列表.jsp'</script>");
    }else {
        out.print("<script>alert('修改失败');window.location.href='管理员列表.jsp'</script>");
    }
%>