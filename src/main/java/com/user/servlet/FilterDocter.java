package com.user.servlet;

import com.dao.AppointmentDao;
import com.db.DBConnect;
import com.entity.Docter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/filterDocter")
public class FilterDocter extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String dept = req.getParameter("department");
        List<Docter> docters;
        HttpSession session = req.getSession();

        try {
            AppointmentDao appDao = new AppointmentDao(DBConnect.getConn());
            docters = appDao.fetchDocter(dept);
            for (Docter docter : docters) {
                System.out.println(docter);
            }
            session.setAttribute("docterList", docters);
            session.setAttribute("selectedDept", dept);
            resp.sendRedirect("appointment.jsp");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
