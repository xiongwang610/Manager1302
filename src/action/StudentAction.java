package action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import entity.Student;
import service.impl.StudentService;
import service.impl.StudentServiceImpl;

public class StudentAction extends SuperAction {

	
	private static final long serialVersionUID = 1L;
	private Student student = new Student();
	private File file;
	private String fileFileName;
	

	//添加学生信息
	public String addStudent() throws IOException{
		
		StudentService studentService = new StudentServiceImpl();
		String image_url = applicationContext.getRealPath("images");
		String url = studentService.saveFile(file, fileFileName, image_url);  //存储图片并获取url
		student.setUrl(url);
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
	
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

}
