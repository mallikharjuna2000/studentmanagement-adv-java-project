package com.codegnan.web;

import java.io.IOException;

import com.codegnan.service.UserService;
import com.codegnan.service.UserServiceImpl;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private UserService service = new UserServiceImpl();

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        String role = service.login(
                req.getParameter("username"),
                req.getParameter("password"));

        if (role != null) {
            HttpSession session = req.getSession();
            session.setAttribute("loggedIn", true);
            session.setAttribute("role", role);
            resp.sendRedirect("students");
        } else {
            resp.sendRedirect("login.jsp?error=true");
        }
    }
}

