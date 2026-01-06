package com.codegnan.service;

import java.util.List;
import com.codegnan.model.Student;

public interface StudentService {
	List<Student> getAllStudents();

	Student getStudent(int id);

	void addStudent(Student student);

	void updateStudent(Student student);

	void deleteStudent(int id);
}
