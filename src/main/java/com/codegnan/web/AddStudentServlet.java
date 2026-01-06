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

@WebServlet("/add-student")
public class AddStudentServlet extends HttpServlet {

    private StudentService service = new StudentServiceImpl();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("add-student.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        Student s = new Student();
        s.setName(req.getParameter("name"));
        s.setAge(Integer.parseInt(req.getParameter("age")));
        s.setCourse(req.getParameter("course"));

        service.addStudent(s);
        resp.sendRedirect("students");
    }
}

