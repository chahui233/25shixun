package com.example.yytfsupportsite.yytf.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
    public static Connection getConnection() throws Exception {
        String url = "jdbc:mysql://localhost:3306/yytf_support?serverTimezone=Asia/Shanghai&useUnicode=true&characterEncoding=UTF-8";

        String user = "yytf_support";
        String pass = "942647486";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, user, pass);
    }
}
