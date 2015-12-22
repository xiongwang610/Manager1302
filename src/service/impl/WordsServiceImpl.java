package service.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import db.MySessionFactory;
import entity.Words;

public class WordsServiceImpl implements WordsService {
	
	
	private SessionFactory sessionFactory;
	
	public WordsServiceImpl() {
		
		sessionFactory = MySessionFactory.getSessionFactory();
	}
	
	
	/*
	 * 添加留言
	 * @see service.impl.WordsService#addWords(entity.Words)
	 */
	public void addWords(Words words) {
		
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = null;
		
		try{
			
			tx = session.beginTransaction();
			session.save(words);
			tx.commit();
		}catch(Exception e){
			
			if(tx != null){
				tx.rollback();
			}
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 分页查询留言
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Words> getWordsbyPages(int first, int max) {
		
		List<Words> list = null;
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = null;
		
		try{
			
			tx = session.beginTransaction();
			String hql = "from Words";
			Query query = session.createQuery(hql);
			query.setFirstResult(first);
			query.setMaxResults(max);
			list = query.list();
			tx.commit();
			
		}catch(Exception e){
			
			if(tx != null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	
	
	/**
	 * 根据学号查询留言
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Words> getWordsbySid(String sid) {
		
		List<Words> list = null;
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = null;
		
		try{
			
			tx = session.beginTransaction();
			String hql = "from Words where sid=:sid";
			Query query = session.createQuery(hql);
			query.setParameter("sid", sid);
			list = query.list();
			tx.commit();
		}catch(Exception e){
			
			if(tx != null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}

	
	/**
	 * 获取表中总记录数
	 */
	@Override
	public int getSize() {
		
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = null;
		int size = 0;
		
		try{
			
			tx = session.beginTransaction();
			String hql = "from Words";
			Query query = session.createQuery(hql);
			size = query.list().size();
			tx.commit();
		}catch(Exception e){
			System.out.println("出错了");
			if(tx != null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return size;
		
	}

}
