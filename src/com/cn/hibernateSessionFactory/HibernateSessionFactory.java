package com.cn.hibernateSessionFactory;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateSessionFactory {
	public SessionFactory createSessionFactory(){
		Configuration configuration = new Configuration();
		Configuration cfg = configuration.configure("hibernate.cfg.xml");
		SessionFactory sessionFactory = cfg.buildSessionFactory();
		return sessionFactory;
	}
	public Session getSession(){
		SessionFactory sessionFactory = createSessionFactory();
		Session session = sessionFactory.openSession();
		return session;
	}

}
