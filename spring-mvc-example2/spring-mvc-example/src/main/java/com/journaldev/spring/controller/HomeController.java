package com.journaldev.spring.controller;


import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.spring.model.User;
import com.journaldev.spring.model.User1;
@Controller
public class HomeController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView user(Locale locale) {
		
		User user =new User();
		user.setGender("M");
		user.setPassword("password");
		user.setUserName("Sai");
		
		
		System.out.println("Home Page Requested, locale = " + locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

	//	model.addAttribute("serverTime1", formattedDate);

		ModelAndView modelAndView=new ModelAndView("user","command",user);
		
		return modelAndView;
	}

	@RequestMapping(value = "/User", method = RequestMethod.POST)
	public String users(@ModelAttribute("SpringWeb") User user, ModelMap model) {
		System.out.println("User Page addUser Requested");
		model.addAttribute("userName", user.getUserName());
		//model.addAttribute("password1",user.getPassword1());
		model.addAttribute("password",user.getPassword());
		model.addAttribute("address", user.getAddress());
		
		model.addAttribute("receivePaper",user.isReceivePaper());
		model.addAttribute("gender",user.getGender());
		model.addAttribute("country",user.getCountry());
		model.addAttribute("skills",user.getSkills());
		
		return "users";
	}
	
	@ModelAttribute("countryList")
	public Map<String, String> getCountryList()
	
	{
		Map<String, String> countryList=new HashMap<String, String>();
		countryList.put("US","United States");
		countryList.put("CH", "China");
		countryList.put("IN", "India");
		countryList.put("MY","Malaysia");
		countryList.put("SG","Singapore");
		
		return countryList;
		
		
	}
	
//	@ModelAttribute("webFrameworkList")
	//public List<String> getWebFrameworkList() {
							//	System.out.println("User Page Requested");
							//	model.addAttribute("userName", user.getUserName());
							//	model.addAttribute("password",user.getPassword());
		
									//ADD WEBFRAMEWORK LIsT ITEMS
		
		
							//			return "user";
	//}
	
}

 