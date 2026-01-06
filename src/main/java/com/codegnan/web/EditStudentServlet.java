package com.codegnan.web;

import java.io.IOException;

import com.codegnan.model.Student;
import com.codegnan.service.StudentService;
import com.codegnan.service.StudentServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/edit-student")
public class EditStudentServlet extends HttpServlet {

    private StudentService service = new StudentServiceImpl();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        req.setAttribute("student", service.getStudent(id));
        req.getRequestDispatcher("edit-student.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        Student s = new Student(
                Integer.parseInt(req.getParameter("id")),
                req.getParameter("name"),
                Integer.parseInt(req.getParameter("age")),
                req.getParameter("course"));

        service.updateStudent(s);
        resp.sendRedirect("students");
    }
}
