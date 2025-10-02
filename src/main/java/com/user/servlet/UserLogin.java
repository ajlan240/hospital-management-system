package com.user.servlet;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        User u1 = new User(email, password);
        HttpSession session1 = req.getSession();
        try {
            UserDao dao = new UserDao(DBConnect.getConn());
            u1 = dao.userLogin(u1);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        if(!(u1 == null)) {
            session1.setAttribute("uname", u1.getUname());
            resp.sendRedirect("user_dashboard.jsp");
            System.out.println(u1);
        } else {
            session1.setAttribute("erMsg", "error email or password");
            resp.sendRedirect("user_login.jsp");
        }

    }
}
