package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    private static Connection connection;
    public static Connection getConn() throws SQLException, ClassNotFoundException {
        String url = "jdbc:mysql://localhost:3306/hospital_data";
        String uname = "root";
        String password = "920756";
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(url, uname, password);
        return connection;
    }
}
