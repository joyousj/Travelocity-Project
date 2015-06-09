package com.travelocity.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.travelocity.dao.EventSpaceDAO;
import com.travelocity.model.EventSpace;

@Service
@Transactional
public class EventSpaceServiceImpl implements EventSpaceService {
	
	@Autowired
	private EventSpaceDAO eventSpaceDAO;
	
	public void setEventSpaceDAO(EventSpaceDAO eventSpaceDAO) {
		this.eventSpaceDAO = eventSpaceDAO;
	}

	@Override
	public EventSpace getEventSpace(String name) {
		return eventSpaceDAO.getEventSpace(name);
	}

	@Override
	public EventSpace getEventSpaceById(int id) {
		return eventSpaceDAO.getEventSpaceById(id);
	}
	
	@Override
	public List<EventSpace> getEventSpaceByPrice(int range) {
		return eventSpaceDAO.getEventSpaceByPrice(range);
	}
	
	@Override
	public List<EventSpace> getEventSpaceByLocation(String location) {
		return eventSpaceDAO.getEventSpaceByLocation(location);
	}
	
	@Override
	public List<EventSpace> getEventSpaceByPriceAndLocation(int range, String location) {
		return eventSpaceDAO.getEventSpaceByPriceAndLocation(range, location);
	}

	@Override
	public List<EventSpace> listEventSpaces() {
		return eventSpaceDAO.getEventSpaces();
	}

	@Override
	public EventSpace getDescription(String description) {
		return eventSpaceDAO.getDescription(description);
	}

}
