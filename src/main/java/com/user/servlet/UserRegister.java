package com.user.servlet;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/signup")
public class UserRegister extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");


        User u1 = new User(username, email, password);

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        boolean isRegistered = false;
        try {
            UserDao dao = new UserDao(DBConnect.getConn());
            isRegistered = dao.userRegister(u1);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        if(isRegistered) {
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Data saved successfully!');");
            out.println("window.location.href='user_login.jsp';"); // redirect after alert
            out.println("</script>");
            out.println("</body></html>");

            System.out.println("Successfull Registered");
        }
        else {

            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Success fully Registered!');");
            out.println("window.location.href='signup.jsp';"); // redirect after alert
            out.println("</script>");
            out.println("</body></html>");

            System.out.println("Registration got failed");
        }
    }
}
