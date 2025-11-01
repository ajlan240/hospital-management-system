package com.user.servlet;

import com.dao.AppointmentDao;
import com.db.DBConnect;
import com.entity.Appointment;
import com.entity.Department;
import com.entity.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@WebServlet("/appointmentServlet")
public class AppointmentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AppointmentDao appDao = null;
        HttpSession session = req.getSession();
        try {
            appDao = new AppointmentDao(DBConnect.getConn());
            List<Department> departmentList = appDao.fetchDepartments();

//        req.setAttribute("deptList", departmentList);
            session.setAttribute("selectedDept", "Choose a department");
            session.setAttribute("deptList", departmentList);
            resp.sendRedirect("appointment.jsp");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User u1 = (User)session.getAttribute("user-obj");
        String doctName = req.getParameter("doctor");
        LocalDate date = LocalDate.parse(req.getParameter("date"));
        LocalTime time = LocalTime.parse(req.getParameter("time"));
        String reason = req.getParameter("reason");
        String status = "pending";
        int userId = u1.getId();
        Appointment appointment = new Appointment();
        boolean isAppAdded = false;
        RequestDispatcher rd = req.getRequestDispatcher("appointment.jsp");
        System.out.println(userId);
        try {
            AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
            appointment.setDocterName(doctName);
            appointment.setDate(date);
            appointment.setTime(time);
            appointment.setStatus(status);
            appointment.setReason(reason);
            appointment.setUserId(userId);
            isAppAdded = dao.addAppointment(appointment);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        if(isAppAdded) {
            req.setAttribute("appAddStatus", "App Added Successfully");
            req.setAttribute("color", "green");
            rd.forward(req, resp);
        }
        else {
            req.setAttribute("appAddStatus", "App Added Failed");
            req.setAttribute("color", "red");
            rd.forward(req, resp);
        }
    }
}
