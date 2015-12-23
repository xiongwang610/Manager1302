package action;

import java.util.List;

import entity.Student;
import service.impl.StudentService;
import service.impl.StudentServiceImpl;

public class StudentAction extends SuperAction {

	
	private static final long serialVersionUID = 1L;
	private Student student = new Student();
	
	//添加学生信息
	public String addStudent(){
		
		StudentService studentService = new StudentServiceImpl();
		studentService.saveStudent(student);
		return "addStudent_success";
		
	}
	
	public String getStudentByPage(){
		
		StudentService studentService = new StudentServiceImpl();
		List<Student> list = studentService.getStudentByPage(student.getNum(), 8);
		request.setAttribute("student", list);
		
		return "query";
		
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	

}
