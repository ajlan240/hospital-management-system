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

@WebServlet("/user_register")
public class UserRegister  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = new User(name, email, password);
        UserDao dao = new UserDao(DbConnect.getConn());
        boolean f = dao.userRegister(user);

        HttpSession session = req.getSession();

        if(f) {
            session.setAttribute("SucMsg", "Successfully Registered");
            resp.sendRedirect("Signup.jsp");
        } else {
            session.setAttribute("errorMsg", "Something went wrong");
            resp.sendRedirect("Signup.jsp");
            System.out.println("something went wrong");
        }


    }
}
