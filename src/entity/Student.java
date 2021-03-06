package entity;

import java.io.Serializable;
import java.util.Date;

public class Student implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String sid;  //学号
	private String sname; //姓名
	private String phoneNumber; //手机号
	private String address; //家庭地址
	private String birthday; //出生日期 
	private String url;  //生活照url
	private String dormintory; //宿舍号
	private int num; //班级序号
	
	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public Student(){
		
	}
	
	
	public Student(String sid, String sname, String phoneNumber, String address, String birthday, String url,
			String dormintory,int num) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.birthday = birthday;
		this.url = url;
		this.dormintory = dormintory;
		this.num = num;
	}


	public String getSid() {
		return sid;
	}
	
	public void setSid(String sid) {
		this.sid = sid;
	}
	
	public String getSname() {
		return sname;
	}
	
	public void setSname(String sname) {
		this.sname = sname;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getBirthday() {
		return birthday;
	}
	
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	public String getUrl() {
		return url;
	}
	
	public void setUrl(String url) {
		this.url = url;
	}
	
	public String getDormintory() {
		return dormintory;
	}
	
	public void setDormintory(String dormintory) {
		this.dormintory = dormintory;
	}
	
	
}
