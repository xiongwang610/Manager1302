package action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.validation.SkipValidation;

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
		if(file != null){
			String image_url = applicationContext.getRealPath("images");
			String url = studentService.saveFile(file, fileFileName, image_url);  //存储图片并获取url
			student.setUrl(url);
		}
		studentService.saveStudent(student);
		return "addStudent_success";
		
	}
	
	@SkipValidation
	public String getStudentByPage(){
		
		StudentService studentService = new StudentServiceImpl();
		List<Student> list = studentService.getStudentByPage(student.getNum(), 8);
		session.setAttribute("student", list);
	
		return "query_student";
		
	}
	
	@SkipValidation
	public String updateStudent(){
		
		StudentService studentService = new StudentServiceImpl();
		studentService.updateStudent(student);
		List<Student> list = studentService.getStudentByPage(0, 8);
		session.setAttribute("student", list);
		
		return "update_student";
		
	}
	
	
	public String toUpdateStudent(){
		
		StudentService studentService = new StudentServiceImpl();
		student = studentService.getStudentBySid(student.getSid());
		session.setAttribute("student", student);
		return "toUpdateStudent_success" ;
	}
	
	public void validate() {
		
		if(student.getSid().equals(""))addFieldError("sid_error", "学号不能为空");
		if(student.getSname().equals(""))addFieldError("sname_error", "名字不能为空");
		if(student.getPhoneNumber().equals(""))addFieldError("phoneNumber_error", "手机号码不能为空");
		if(student.getAddress().equals(""))addFieldError("address_error", "地址不能为空");
		if(student.getBirthday().equals(""))addFieldError("birthday_error", "生日不能为空");
		if(student.getDormintory().equals(""))addFieldError("dormintory_error", "寝室号不能为空");
		
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
