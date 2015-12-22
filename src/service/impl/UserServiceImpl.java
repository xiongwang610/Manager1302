package service.impl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import db.MySessionFactory;
import entity.User;

public class UserServiceImpl implements UserService {

	
	/**
	 * 验证用户登录看是否存在用户并且密码是否正确
	 */
	public boolean loginUser(User user) {
		
		SessionFactory sessionFactory = MySessionFactory.getSessionFactory();
		Session session  = sessionFactory.getCurrentSession(); //获取会话对象 需要在xml文件中配置
		Transaction tx = null;
		
		try{
			tx = session.beginTransaction();
			String hql = "from User where userName=? and password=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, user.getUserName());
			query.setParameter(1, user.getPassword());
			List<User> list = query.list();
			tx.commit();
			
			if(list.isEmpty() || list.size() == 0){
				
				return false;
			}else{
				
				return true;
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
			return false;
		}finally {
			
			if(tx != null){
				tx = null;
			}
		}
		
	}

}
