package com.dao;

import com.entity.User;
import java.time.ZoneId;


import java.security.PrivateKey;
import java.sql.*;

public class UserDao {
    private final Connection conn;

    public UserDao(Connection conn) {
        this.conn = conn;
    }
    public boolean userRegister(User user) throws SQLException {
        boolean f = false;
        Date date = Date.valueOf(user.getDob());
        String sql = "INSERT INTO user_details(user_name, user_email, user_phone, dob, geneder, blood_group, address, password) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, user.getUname());
        ps.setString(2, user.getEmail());
        ps.setLong(3, user.getPhoneNo());
        ps.setDate(4, date);
        ps.setString(5, user.getGender());
        ps.setString(6, user.getBloodGroup());
        ps.setString(7, user.getAddress());
        ps.setString(8, user.getPassword());
        int i = ps.executeUpdate();
        f = i == 1;
        return f;
    }

    public User userLogin(User user) {
        boolean f = false;
        String password = "";
        String uname = "";
        int id;
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
    public User fetchUserDetails(User user) throws SQLException {
        User u1 = new User();
        int id = 0;
        String userName = "";
        long phone = 0;
        Date dob = null;
        String gender = "";
        String bloodGroup = "";
        String address = "";
        String sql = "SELECT * FROM user_details WHERE user_email=?";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getEmail());
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                id = rs.getInt("user_id");
                userName = rs.getString("user_name");
                phone = rs.getLong("user_phone");
                dob = rs.getDate("dob");
                gender = rs.getString("geneder");
                bloodGroup = rs.getString("blood_group");
                address = rs.getString("address");

            }
            u1.setId(id);
            u1.setUname(userName);
            u1.setEmail(user.getEmail());
            u1.setPhoneNo(phone);
            assert dob != null;
            u1.setDob(dob.toLocalDate());
            u1.setGender(gender);
            u1.setBloodGroup(bloodGroup);
            u1.setAddress(address);
        } catch (Exception e) {
            e.printStackTrace();
        }

    return u1;
    }

    public boolean userUpdate(User u1, User u2) {
        Date date = Date.valueOf(u2.getDob());
        String sql = "UPDATE user_details " +
                " SET  user_name=?, " +
                "user_email=?," +
                "user_phone=?," +
                "dob=?," +
                "geneder=?," +
                "blood_group=?," +
                "address=?" +
                "WHERE user_email=?";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u2.getUname());
            ps.setString(2, u2.getEmail());
            ps.setLong(3, u2.getPhoneNo());
            ps.setDate(4, date);
            ps.setString(5, u2.getGender());
            ps.setString(6, u2.getBloodGroup());
            ps.setString(7, u2.getAddress());
            ps.setString(8, u1.getEmail());

            int i = ps.executeUpdate();
            return i == 1;

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }


    public boolean updatePw(User u1) {
        String sql = "UPDATE user_details SET password=? WHERE user_email=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u1.getPassword());
            ps.setString(2, u1.getEmail());
            int i = ps.executeUpdate();
            return i == 1;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
