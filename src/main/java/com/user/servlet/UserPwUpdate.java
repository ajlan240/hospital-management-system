package com.user.servlet;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/updatePassword")
public class UserPwUpdate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password1 = req.getParameter("password1");
        String password2 = req.getParameter("password2");

        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        UserDao dao;
        RequestDispatcher rd = req.getRequestDispatcher("logout");

        User u1 = (User)session.getAttribute("user-obj");
        if(password1.equals(password2)) {
            u1.setPassword(password1);
        }
        try {
             dao = new UserDao(DBConnect.getConn());
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        boolean isPwUpdated = false;
        isPwUpdated = dao.updatePw(u1);

        resp.setContentType("text/html");


        if(isPwUpdated) {

            session.removeAttribute("user-obj");
            session.invalidate();
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Password updated successfully!');");

            out.println("</script>");
            out.println("</body></html>");
            resp.sendRedirect("user-login.jsp");

            System.out.println("Successfullu Updated pw");
        }
        else {

            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Password updation got failed');");
            out.println("window.location.href='reset-password.jsp';"); // redirect after alert
            out.println("</script>");
            out.println("</body></html>");

            System.out.println("Password Updation  got failed");
        }

    }
}
