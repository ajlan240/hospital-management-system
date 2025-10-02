package com.dao;

import com.entity.User;

import java.security.PrivateKey;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private final Connection conn;

    public UserDao(Connection conn) {
        this.conn = conn;
    }
    public boolean userRegister(User user) throws SQLException {
        boolean f = false;
        String sql = "INSERT INTO user_details(user_name, user_email, password) VALUES(?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, user.getUname());
        ps.setString(2, user.getEmail());
        ps.setString(3, user.getPassword());
        int i = ps.executeUpdate();
        f = i == 1;
        return f;
    }

    public User userLogin(User user) {
        boolean f = false;
        String password = "";
        String uname = "";
        int id = 0;
        String sql = "SELECT * FROM user_details WHERE user_email=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getEmail());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                password = rs.getString("password");
                if (password.equals(user.getPassword())) {
                    uname = rs.getString("user_name");
                    id = rs.getInt("user_id");
                    user.setUname(uname);
                    user.setId(id);
                    return user;
                }

            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
