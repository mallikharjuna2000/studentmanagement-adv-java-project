package com.codegnan.service;

import java.util.List;

import com.codegnan.dao.StudentDao;
import com.codegnan.dao.StudentDaoImpl;
import com.codegnan.model.Student;

public class StudentServiceImpl implements StudentService {

    private StudentDao dao = new StudentDaoImpl();

    public List<Student> getAllStudents() {
        return dao.findAll();
    }

    public Student getStudent(int id) {
        return dao.findById(id);
    }

    public void addStudent(Student student) {
        dao.save(student);
    }

    public void updateStudent(Student student) {
        dao.update(student);
    }

    public void deleteStudent(int id) {
        dao.delete(id);
    }
}
