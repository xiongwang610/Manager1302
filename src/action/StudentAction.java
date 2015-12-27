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
		System.out.println(111111);
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
		System.out.println(student.getNum());
		List<Student> list = studentService.getStudentByPage(student.getNum(), 8);
		session.setAttribute("student", list);
	
		return "query_student";
		
	}
	
	
	
	public void validate() {
		
		if(student.getSid() == null)addFieldError("sid_error", "学号不能为空");
		if(student.getSname() == null)addFieldError("sname_error", "名字不能为空");
		if(student.getPhoneNumber() == null)addFieldError("phoneNumber_error", "手机号码不能为空");
		if(student.getAddress() == null)addFieldError("address_error", "地址不能为空");
		if(student.getBirthday() == null)addFieldError("birthday", "生日不能为空");
		if(student.getDormintory() == null)addFieldError("dormintory", "寝室号不能为空");
		if(student.getNum() == 0)addFieldError("num_error", "序号不能为空");
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
