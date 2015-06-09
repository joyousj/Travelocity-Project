package com.travelocity.webapp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.travelocity.model.User;
import com.travelocity.service.UserService;

@Controller
@Scope("session")
public class UserController {
	
	private UserService userService;
	private User user;
	
	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService us){
		this.userService = us;
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		return "main";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String doLogin(Model model, @RequestParam String email, @RequestParam String password, User checkUser, HttpSession ses) {
		
		this.user = this.userService.getUser(email);
		checkUser = this.userService.getUserByPassword(password);
		
		if(user.getId() == checkUser.getId()) {
			ses.setAttribute("key", "secretkey");
			model.addAttribute("user", this.user);
			return "redirect:/profile";
		}
		else {
			return "login";
		}
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		
		return "register";
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String doRegister(Model model, User user) {
		
		this.userService.insertUser(user);
		this.user = user;
		model.addAttribute("user", this.user);
		return "redirect:/profile";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model, HttpSession ses) {

		String key = (String) ses.getAttribute("key");
		if(key != null && key.equals("secretkey")) {
			model.addAttribute("user", this.user);
			return "profile";
		}
		else
			return "redirect:/error";
		
	}
	
	@RequestMapping(value = "/editProfile", method = RequestMethod.POST)
	public String editProfile(@RequestParam String first_name, @RequestParam String last_name, @RequestParam String company, long phone, @RequestParam String email, @RequestParam String password) {
		this.user.setFirst_name(first_name);
		this.user.setLast_name(last_name);
		this.user.setCompany(company);
		this.user.setPhone(phone);
		this.user.setEmail(email);
		this.user.setPassword(password);
		this.userService.updateUser(this.user);
		return "redirect:/profile";
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String error() {

		return "error";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req) {
		
		HttpSession ses = req.getSession();
		ses.invalidate();
		return "redirect:/login";
	}
	
}
