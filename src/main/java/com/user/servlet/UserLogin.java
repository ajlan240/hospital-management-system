package com.user.servlet;

import com.dao.UserDao;
import com.db.DbConnect;
import com.enitiy.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user_login")
public class UserLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User u1 = new User(email, password);
        UserDao daoU1 = new UserDao(DbConnect.getConn());
        boolean f = daoU1.userAuthenticate(u1);
        HttpSession session = req.getSession();
        if(f) {
            resp.sendRedirect("user/user_dashboard.jsp");
        }


    }
}
