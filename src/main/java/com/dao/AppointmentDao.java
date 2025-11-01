package com.dao;

import com.entity.Appointment;
import com.entity.Department;
import com.entity.Docter;
import com.entity.User;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;
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
        String sql = "INSERT INTO appointments(doct_name, app_date, app_time, app_reason, user_id, status, doct_dept) VALUES (?, ?, ?, ?, ?, ?, ?)";
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
            ps.setString(7, appointment.getDocterDept());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    public List<Appointment> fetchAppoList(User u1) {
        Appointment appointment;
        List<Appointment> appointmentList = new ArrayList<>();
        int id, userId;
        String doctName;
        Date date;
        Time time;
        String status;
        String doctDept;
        String sql = "SELECT * FROM appointments WHERE user_id=? ORDER BY app_date ASC";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, u1.getId());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("app_id");
                doctName = rs.getString("doct_name");
                date = rs.getDate("app_date");
                 time = rs.getTime("app_time");
                 status = rs.getString("status");
                 doctDept = rs.getString("doct_dept");
                 userId = u1.getId();

                 appointment = new Appointment();
                 appointment.setAppId(id);
                 appointment.setUserId(userId);
                 appointment.setDocterName(doctName);
                 appointment.setDate(date.toLocalDate());
                 appointment.setTime(time.toLocalTime());
                 appointment.setStatus(status);
                 appointment.setDocterDept(doctDept);

                appointmentList.add(appointment);
            }
            for (Appointment appointment1 : appointmentList)
                System.out.println(appointment1);

            return appointmentList;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
