package com.cn.bean;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cn.hibernateSessionFactory.HibernateSessionFactory;

import dao.Student;

public class StudentBean {
	private Session session;
	private Transaction transaction;
	private Query query;
	public boolean saveInfo(Student stu){
		session = new HibernateSessionFactory().getSession();
		transaction = session.beginTransaction();
		session.save(stu);
		transaction.commit();
		session.close();
		return true;
	}
	public List query(String type,Object value){
		session = new HibernateSessionFactory().getSession();
		transaction = session.beginTransaction();
		String hql = "from Student as s where s."+type+"=?";
		query = session.createQuery(hql);
		query.setParameter(0, value);
		List list = query.list();
		transaction.commit();
		session.close();		
		return list;
	}
	public List queryAll(){
		session = new HibernateSessionFactory().getSession();
		transaction = session.beginTransaction();
		String hql = "from Student";
		query = session.createQuery(hql);
		List list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
	public boolean deleteInfo(String id){
		session = new HibernateSessionFactory().getSession();
		transaction = session.beginTransaction();
		Student s = new Student();
		s = (Student)session.get(Student.class, id);
		session.delete(s);
		transaction.commit();
		session.close();
		return true;		
	}
	public boolean updateInfo(Student stu){
		session = new HibernateSessionFactory().getSession();
		transaction = session.beginTransaction();
		session.update(stu);
		System.out.println("--"+stu.getId() + "--" + stu.getName() + "--" + stu.getSex() + "--" + stu.getAge());
		transaction.commit();
		session.close();
		return true;
	}
}
