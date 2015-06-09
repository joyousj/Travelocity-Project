package com.travelocity.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.travelocity.model.EventSpace;

@Repository
@Transactional
public class EventSpaceDAOImpl implements EventSpaceDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	@Override
	public EventSpace getEventSpace(String name) {
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(EventSpace.class);
		cr.add(Restrictions.like("name", name));
		return (EventSpace) cr.list().get(0);
	}
	
	@Override
	public EventSpace getEventSpaceById(int id) {
		return (EventSpace)sessionFactory.getCurrentSession().get(EventSpace.class, id);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<EventSpace> getEventSpaceByPrice(int range) {
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(EventSpace.class);
		cr.add(Restrictions.between("price", range, (range+49)));
		cr.addOrder(Order.asc("price"));
		return cr.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<EventSpace> getEventSpaceByLocation(String location) {
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(EventSpace.class);
		cr.add(Restrictions.like("location", location));
		cr.addOrder(Order.asc("price"));
		return cr.list();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<EventSpace> getEventSpaceByPriceAndLocation(int range, String location) {
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(EventSpace.class);
		Criterion spacePrice = Restrictions.between("price", range, (range+49));
		Criterion spaceLocation = Restrictions.like("location", location);
		LogicalExpression exp = Restrictions.and(spacePrice, spaceLocation);
		cr.add(exp);
		cr.addOrder(Order.asc("price"));
		return cr.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<EventSpace> getEventSpaces() {
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(EventSpace.class);
		return cr.list();
	}


	@Override
	public EventSpace getDescription(String description) {
		Criteria cr = sessionFactory.getCurrentSession().createCriteria(EventSpace.class);
		cr.add(Restrictions.like("description", description));
		return (EventSpace) cr.list().get(0);
	}

}
