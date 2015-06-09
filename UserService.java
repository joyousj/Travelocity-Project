ackage com.travelocity.service;

import java.util.List;

import com.travelocity.model.User;

public interface UserService {
    
	public void insertUser(User user);
	
	public void updateUser(User user);
    
  public User getUser(String email);
    
  public User getUserByPassword(String password);
    
  public User getUserById(int id);
    
  public List<User> listUsers();
 
}
