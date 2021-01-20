package com.ch6;

import java.sql.*;

public class Conn {
    //定义全局对象
    Connection Conn=null;//创建连接对象
    Statement stmt=null;
    ResultSet rs=null;

    //    构造方法，自动执行
    public  Conn() throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");//装置驱动
    }

    /**
     *
     * @param sql
     * @return
     * @throws SQLException
     */
    public ResultSet query(String sql) throws SQLException {
        //创建连接  shop是链接的数据库名 "root",密码"1234"
        Conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/test?useUnicode=true&characterEncoding=UTF-8","root","1109781356");
//        创建执行SQL语句对象
        stmt=Conn.createStatement();
//        执行查询操作
        rs=stmt.executeQuery(sql);
        return  rs;//返回结果
    }

    /**
     *
     * @throws SQLException
     */
    public  void  close() throws  SQLException{
        if (rs!=null)
            rs.close();
        if (stmt!=null)
            stmt.close();
        if (Conn!=null)
            Conn.close();
    }

    public int save(String sql)  throws  SQLException{
        //创建连接  shop是链接的数据库名 "root",密码"1234"
        Conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/test?useUnicode=true&characterEncoding=UTF-8","root","1109781356");
//        创建执行SQL语句对象
        stmt=Conn.createStatement();
//        执行查询操作
        return  stmt.executeUpdate(sql);
    }
}
