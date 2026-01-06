package com.codegnan.web;

import java.io.IOException;

import com.codegnan.service.StudentService;
import com.codegnan.service.StudentServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/students")
public class ViewStudentsServlet extends HttpServlet {

    private StudentService service = new StudentServiceImpl();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setAttribute("students", service.getAllStudents());
        req.getRequestDispatcher("students.jsp").forward(req, resp);
    }
}

