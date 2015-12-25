package service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import entity.Student;

public interface StudentService {
	
	public void saveStudent(Student student);  //持久化student
	public Student getStudentBySid(String sid);  //通过学号获取Student
	public List<Student> getStudentByPage(int first ,int max);  //分页查询
	public String saveFile(File file,String fileFileName,String image_url)throws IOException;
	
}
