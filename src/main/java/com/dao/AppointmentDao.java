package com.dao;

import com.entity.Appointment;
import com.entity.Department;
import com.entity.Docter;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AppointmentDao {
    private final Connection connection;

    public AppointmentDao(Connection connection) {
        this.connection = connection;
    }

    public List<Department> fetchDepartments() {
        List<Department> departmentList = new ArrayList<>();
        Department dept;
        int id;
        String deptName;
        String sql = "SELECT * FROM department";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("dept_id");
                deptName = rs.getString("dept_name");

                dept = new Department(id, deptName);
                departmentList.add(dept);
            }
            return departmentList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Docter> fetchDocter(String dept) {
        String sql = "SELECT * FROM docters WHERE dept_name=?";
        List<Docter> docterList = new ArrayList<>();
        int id;
        String doctName;
        Docter docter;

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, dept);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("docter_id");
                doctName = rs.getString("docter_name");
                docter = new Docter(id, doctName);
                docterList.add(docter);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return docterList;
    }

    public boolean addAppointment(Appointment appointment) {
        String sql = "INSERT INTO appointments(doct_name, app_date, app_time, app_reason, user_id, status) VALUES (?, ?, ?, ?, ?, ?)";
        Date date = Date.valueOf(appointment.getDate());
        Time time = Time.valueOf(appointment.getTime());
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, appointment.getDocterName());
            ps.setDate(2, date);
            ps.setTime(3, time);
            ps.setString(4, appointment.getReason());
            ps.setInt(5, appointment.getUserId());
            ps.setString(6, appointment.getStatus());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
}
