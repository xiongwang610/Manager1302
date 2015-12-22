package entity;

import java.io.Serializable;
import java.util.Date;

public class Words implements Serializable {
	
	private int word_id;//留言id
	private String content; //留言内容
	private Date date;//留言时间
	private String sid; //学号
	private Student student;
	

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Words(){
		
	}
	
	public Words(String content,Date date,String sid,Student student){
		this.content = content;
		this.date = date;
		this.sid = sid;
		this.student = student;
	}

	
	public int getWord_id() {
		return word_id;
	}

	public void setWord_id(int word_id) {
		this.word_id = word_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}
	
}
