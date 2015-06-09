package com.travelocity.webapp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.travelocity.service.EventSpaceService;

@Controller
@Scope("session")
public class EventSpaceController {
	
	private EventSpaceService eventSpaceService;
	
	@Autowired(required=true)
	@Qualifier(value="eventSpaceService")
	public void setEventSpaceService(EventSpaceService ess){
		this.eventSpaceService = ess;
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model, HttpSession ses) {

		String key = (String) ses.getAttribute("key");
		if(key != null && key.equals("secretkey"))
			return "search";
		else
			return "redirect:/error";
	}
	
	@RequestMapping(value = "/results", method = RequestMethod.POST)
	public String results(Model model, @RequestParam(required=false) String location, 
			@RequestParam(required=false) Integer range) {
		
		if(location != null && range != null)
			model.addAttribute("both", this.eventSpaceService.getEventSpaceByPriceAndLocation(range, location));
		if(location != null && range == null)
			model.addAttribute("location", this.eventSpaceService.getEventSpaceByLocation(location));
		if(range != null && location == null)
			model.addAttribute("range", this.eventSpaceService.getEventSpaceByPrice(range));
		return "results";
	}
	
	@RequestMapping(value = "/details/{name}/{description}", method = RequestMethod.GET)
	public String results(@PathVariable("name") String name, /*@PathVariable("description") String description,*/ Model model, HttpSession ses) {
		
		String key = (String) ses.getAttribute("key");
		if(key != null && key.equals("secretkey")) {
			model.addAttribute("eventSpace", this.eventSpaceService.getEventSpace(name));
			//model.addAttribute("eventSpace", this.eventSpaceService.getDescription(description));
			return "details";
		}
		else
			return "redirect:/error";
		
	}

}
