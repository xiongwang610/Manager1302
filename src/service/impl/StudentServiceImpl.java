package service.impl;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import db.MySessionFactory;
import entity.Student;

public class StudentServiceImpl implements StudentService {
	
	
	private SessionFactory sessionFactory;
	
	public StudentServiceImpl(){
		
		sessionFactory = MySessionFactory.getSessionFactory();
	}
	
	@Override
	public void saveStudent(Student student) {
		
			Session session = sessionFactory.getCurrentSession();
			Transaction tx = null;
			try{
				tx = session.beginTransaction();
				session.save(student);
				tx.commit();
			}catch(Exception e){
				if(tx != null){
					tx = null;
				}
				throw e;
			}
	}

	@SuppressWarnings("unchecked")
	@Override
	public Student getStudentBySid(String sid) {
		
		Student student = null;
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = null;
		
		try{
			tx = session.beginTransaction();
			String hql = "from Student where sid=:sid";
			Query query = session.createQuery(hql);
			query.setParameter("sid", sid);
			student = (Student) query.uniqueResult();
			tx.commit();
		}catch(Exception e){
			if(tx != null){
				tx.rollback();
			}
			
			throw e;
		}
		
		return student;
	}

	@Override
	public List<Student> getStudentByPage(int first, int max) {
		
		List<Student> list = null;
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Query query = session.createQuery("from Student");
			list = query.list();
			tx.commit();
		}catch(Exception e){
			if(tx != null){
				tx = null;
			}
			System.out.println(e);
		}
		return list;
		

	}

	@Override
	public String saveFile(File file, String fileFileName,String image_url) throws IOException {
		
		String fileName = new Date().getTime() + fileFileName;
		File image_file  = new File(image_url); 
		if(!image_file.exists()){
			image_file.mkdir();
		}
		FileUtils.copyFile(file, new File(image_file,fileName));
		return fileName;
	}

	@Override
	public void updateStudent(Student student) {
		
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.saveOrUpdate(student);
			tx.commit();
		}catch(Exception e){
			if(tx != null){
				tx.rollback();
			}
			System.out.println(e);
		}
		
		
	}

}
