<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="conn" scope="page" class="com.ch6.Conn"></jsp:useBean>
<%
    //获取表单数据
    request.setCharacterEncoding("UTF-8");
    String title=request.getParameter("Title");
    String author=request.getParameter("Author");
    String E=request.getParameter("E");
    String time=request.getParameter("TimeS");
    String introduce=request.getParameter("Introduce");
    String C=request.getParameter("Collection");
    String give=request.getParameter("Give");
    String dis=request.getParameter("Discuss");
    System.out.println(title+","+author+","+E+","+time+","+introduce+","+C+","+give+","+dis);
    //组合sql语句  更新数据库内容操作
    String sql="insert into scenic (title,author,E,timeS,introduce,Collection,give,discuss)values('"+title+"','"+author+"','"+E+"','"+time+"','"+introduce+"','"+C+"','"+give+"','"+dis+"')";
    //验证,打印输出
    System.out.println(sql);
    int result=conn.save(sql);
    conn.close();//释放
    if (result>0) {
        out.print("<script>alert('发布成功');window.location.href='管理员主页.jsp'</script>");
    }else {
        out.print("<script>alert('发布失败');window.location.href='管理员主页.jsp'</script>");
    }

%>
