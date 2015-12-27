package action;

import java.util.Date;

import org.apache.struts2.interceptor.validation.SkipValidation;
import org.hibernate.Session;

import com.opensymphony.xwork2.ModelDriven;

import db.MySessionFactory;
import entity.Student;
import entity.User;
import entity.Words;
import service.impl.UserService;
import service.impl.UserServiceImpl;
import service.impl.WordsService;
import service.impl.WordsServiceImpl;

public class UserAction extends SuperAction implements ModelDriven<User>{

	
	private User user = new User();
	
	
	/**
	 * 登录判断是否存在用户
	 * @return
	 */
	public String login(){		
		
//		WordsService service = new WordsServiceImpl();
//		Student student = new Student("0121310870318","熊旺","13797048269","长沙",null,null,"c334");
//		Words words = new Words("我爱软件1302", new Date(),student.getSid(),student);
//		Words words1 = new Words("I love 1302", new Date(),student.getSid(),student);
//		Words words2 = new Words("My favorite class is 1302", new Date(),student.getSid(),student);
//		Words words3 = new Words("1302 is beat", new Date(),student.getSid(),student);
//		Words words4 = new Words("1302 is my family", new Date(),student.getSid(),student);
//		service.addWords(words);
//		service.addWords(words1);
//		service.addWords(words2);
//		service.addWords(words3);
//		service.addWords(words4);
//		System.out.println("存储成功");
		MySessionFactory.createTable();
		return SUCCESS;
//		UserService service = new UserServiceImpl();
//		if(service.loginUser(user)){
//			
//			super.session.setAttribute("userName", user.getUserName());
//			return "login_success";
//			
//		}else{
//			
//			//如果用户不存在或密码错误则返回到登录页面
//			addFieldError("userName", "用户不存在或密码错误");
//			return INPUT;
//		}
	
	}
	
	@SkipValidation
	public String logout(){
		
		super.session.removeAttribute("userName");
		return "logout_success";
		
	}

	public void validate() {
		
		if("".equals(user.getUserName())){
			addFieldError("userName", "用户名不能为空");
		}
		if("".equals(user.getPassword())){
			addFieldError("password", "密码不能为空");
		}
		
	}
	
	public User getModel() {
		
		return user;
	}
	
}
