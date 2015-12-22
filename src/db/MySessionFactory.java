package db;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class MySessionFactory {
	
	
	private static SessionFactory sessionFactory; //会话工厂
	
	
	//构造方法私有化保证单例模式
	private MySessionFactory(){
		
	}
	
	public static void createTable(){
		Configuration config = new Configuration().configure();
		ServiceRegistry service = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
		sessionFactory = config.buildSessionFactory(service);
		Session session = sessionFactory.getCurrentSession();
		SchemaExport export = new SchemaExport(config);
		
		export.create(true,true);
	}
	
	//获取sessionFactory实例
	public static SessionFactory getSessionFactory(){
		
		if(sessionFactory == null){
			
			Configuration config = new Configuration().configure();
			ServiceRegistry service = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
			sessionFactory = config.buildSessionFactory(service);
			return sessionFactory;
			
		}else{
			
			return sessionFactory;
		}		
	}
	
	
}
