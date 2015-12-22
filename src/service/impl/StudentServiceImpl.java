package service.impl;

import java.util.List;

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
		

	}

	@SuppressWarnings("unchecked")
	@Override
	public Student getStudentBySid(String sid) {
		
		Student student = null;
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = null;
		
		try{
			tx = session.beginTransaction();
			String hql = "from Student where sid=: sid";
			Query query = session.createQuery(hql);
			query.setParameter("sid", sid);
			List<Student> list = query.list();
			if(list != null && list.size() > 0){
				student = list.get(0);
			}
			
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
		return null;
		

	}

}
