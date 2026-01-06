package com.codegnan.web;

import java.io.IOException;

import com.codegnan.service.StudentService;
import com.codegnan.service.StudentServiceImpl;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete-student")
public class DeleteStudentServlet extends HttpServlet {

    private StudentService service = new StudentServiceImpl();

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        service.deleteStudent(
                Integer.parseInt(req.getParameter("id")));
        resp.sendRedirect("students");
    }
}
