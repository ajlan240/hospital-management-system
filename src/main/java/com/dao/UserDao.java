package com.dao;

import com.enitiy.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDao {
    private Connection conn;

    public UserDao(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean userRegister(User u) {
        boolean f = false;
        String sql = "insert into user_details(name, email, password) values(?, ?, ?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());

            int i = ps.executeUpdate();
            if (i == 1) {
               f = true;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return f;
    }

    public boolean userAuthenticate(User u) {
        boolean f = false;
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u.getEmail());
            ps.setString(2, u.getPassword());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return f;
    }
}
