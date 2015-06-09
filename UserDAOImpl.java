package com.travelocity.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelocity.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	@Override
	public void insertUser(User user) {
		sessionFactory.getCurrentSession().save(user);
	}
	
	@Override
	public void updateUser(User user) {
		//sessionFactory.getCurrentSession().save(user);
		sessionFactory.getCurrentSession().update(user);
		/*Session session = sessionFactory.openSession();
		session.beginTransaction();
		String query = "update User set first_name='"+  user.getFirst_name() +"' where id='1'";
		Query q = session.createSQLQuery(query);
		q.executeUpdate();
		session.close();*/
	}

	@Override
	public User getUser(String email) {
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(User.class);
		cr.add(Restrictions.like("email", email));
		return (User) cr.list().get(0);
	}
	
	@Override
	public User getUserByPassword(String password) {
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(User.class);
		cr.add(Restrictions.like("password", password));
		return (User) cr.list().get(0);
	}

	@Override
	public User getUserById(int id) {
		return (User)sessionFactory.getCurrentSession().get(User.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getUsers() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
		return criteria.list();
	}
	
}
