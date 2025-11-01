package com.user.servlet;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.Date;

@WebServlet("/signup")
public class UserRegister extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String username = req.getParameter("username");
        String email = req.getParameter("email");
        Long phoneNo = Long.parseLong(req.getParameter("phone"));
        LocalDate dob =  LocalDate.parse(req.getParameter("dob"));
        String gender =req.getParameter("gender");
        String bloodGroup = req.getParameter("bloodGroup");
        String address = req.getParameter("address");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");

        HttpSession session = req.getSession();

        User u1 = null;
        if(password.equals(confirmPassword)) {
                u1 = new User(username, email, phoneNo, dob, gender, bloodGroup, address, password);

        }

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
         boolean isRegistered = false;
        try {
            UserDao dao = new UserDao(DBConnect.getConn());
            assert u1 != null;
            isRegistered = dao.userRegister(u1);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        if(isRegistered) {

            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Data saved successfully!');");
            out.println("window.location.href='user-login.jsp';"); // redirect after alert
            out.println("</script>");
            out.println("</body></html>");

            System.out.println("Successfull Registered");
        }
        else {

            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Success fully Registered!');");
            out.println("window.location.href='user-reg.jsp';"); // redirect after alert
            out.println("</script>");
            out.println("</body></html>");

            System.out.println("Registration got failed");
        }
    }
}
