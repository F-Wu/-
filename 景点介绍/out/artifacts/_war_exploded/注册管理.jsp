<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="conn" scope="page" class="com.ch6.Conn"></jsp:useBean>
<%
//获取内容
    request.setCharacterEncoding("UTF-8");
    String name= request.getParameter("Name");
    String password= request.getParameter("Password");
    String sex= request.getParameter("radioSex");
    String ph= request.getParameter("ph");
    System.out.println(name+","+password+","+sex+","+ph);
    //入库
    String sql="insert into admin (username,password,sex,ph) values('"+name+"','"+password+"','"+sex+"','"+ph+"')";
    System.out.println(sql);
    //执行sql
    int result=conn.save(sql);
    conn.close();//释放
    if (result>0) {
        session.setAttribute("admin", name);
        out.print("<script>alert('注册成功');window.location.href='首页.jsp'</script>");
    }else {
        out.print("<script>alert('注册失败');window.location.href='注册.jsp'</script>");
    }
%>
