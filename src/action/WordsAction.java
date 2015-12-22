package action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.interceptor.validation.SkipValidation;

import com.opensymphony.xwork2.ActionContext;

import entity.Student;
import entity.Words;
import service.impl.StudentService;
import service.impl.StudentServiceImpl;
import service.impl.WordsService;
import service.impl.WordsServiceImpl;

public class WordsAction extends SuperAction {
	
	private static int MAX = 8; //分页查询时每页获取的最多条记录
	
	private int word_id; //留言id
	private String sid; //学号
	private Words words = new Words();
	private Student student;
	
	//分页查询words
	@SkipValidation
	public String getWordsbyPages(){
		
		WordsService wordsService = new WordsServiceImpl();
		System.out.println(word_id);
		int size = wordsService.getSize();
		if(word_id == 0 && size >= 8) word_id = size - 8;
		if(word_id >= 8) word_id = word_id - 9;
		if(word_id !=0 && word_id < 8 ) 
		{
			word_id = 0;
			MAX = word_id ;
			}
		List<Words> list = wordsService.getWordsbyPages(word_id, MAX);
		session.setAttribute("words", list);
		
		return "query";
	}
	
	
	//根据学号查words
	@SkipValidation
	public String getWordsbySid(){
		
		WordsService words = new WordsServiceImpl();
		List<Words> list = words.getWordsbySid(sid);
		System.out.println(list.size());
		session.setAttribute("words", list);
		
		return "query";
	}
	
	
	//添加留言
	public String addWords(){
		
		WordsService wordsService = new WordsServiceImpl();
		words.setDate(new Date());
		words.setStudent(student);
		wordsService.addWords(words);
		
		return "addWords_success";
	}
	
	
	//验证添加留言时留言和学号不能为空且学号不能写错
	@Override
	public void validate() {
		
		if(words.getContent() == null)	addFieldError("content_error", "留言内容不能为空");
		if(words.getSid() == null) {
			addFieldError("sid_error", "学号不能为空");
		}else{
			StudentService studentService  = new StudentServiceImpl();
			Student student = studentService.getStudentBySid(words.getSid());
			if(student.equals(null)) addFieldError("sid_error", "学号错误");
		}
		
	}
	
	
	
	public int getWord_id() {
		return word_id;
	}
	public void setWord_id(int word_id) {
		this.word_id = word_id;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	
	
}
