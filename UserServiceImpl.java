package com.travelocity.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.travelocity.dao.UserDAO;
import com.travelocity.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@Override
	public void insertUser(User user) {
		userDAO.insertUser(user);
	}
	
	@Override
	public void updateUser(User user) {
		userDAO.updateUser(user);
	}

	@Override
	public User getUser(String email) {
		return userDAO.getUser(email);
	}
	
	@Override
	public User getUserByPassword(String password) {
		return userDAO.getUserByPassword(password);
	}

	@Override
	public User getUserById(int id) {
		return userDAO.getUserById(id);
	}

	@Override
	public List<User> listUsers() {
		return userDAO.getUsers();
	}
	
	
	
}
