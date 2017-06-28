package com.loginapp.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.loginapp.dao.UserDAO;

@Repository
public class UserDAOImpl implements UserDAO{

	
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional(Transactional.TxType.REQUIRED)
	@Override
	public boolean isValidUser(String username, String password) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("SELECT u FROM User AS u WHERE u.username = :username AND u.password = :password");
		query.setParameter("username", username);
		query.setParameter("password", password);
		Object obj=query.uniqueResult();
		if(obj!=null)
		{
			return true;
		}
		return false;
	}
	
	

}
