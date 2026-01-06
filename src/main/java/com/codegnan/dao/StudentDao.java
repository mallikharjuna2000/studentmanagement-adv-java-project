package com.codegnan.dao;

import java.util.List;
import com.codegnan.model.Student;

public interface StudentDao {
	List<Student> findAll();

	Student findById(int id);

	void save(Student student);

	void update(Student student);

	void delete(int id);
}
