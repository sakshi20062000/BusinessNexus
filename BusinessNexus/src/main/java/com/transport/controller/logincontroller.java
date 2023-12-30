package com.transport.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.transport.entites.user;

import com.transport.services.ServiceUser;

import org.springframework.beans.factory.annotation.Autowired;


@Controller
public class logincontroller {
	
	@Autowired
	ServiceUser serviceUser;
	
	@RequestMapping(path = "/Register", method=RequestMethod.GET)
	public String showForm(Model model) {
		
		System.out.println("Kishor");
	
		return "Register";
	}
	
	/*
	 * @RequestMapping(path = "/Register", method = RequestMethod.POST) public
	 * String handleForm(@ModelAttribute user user) { String hashedPassword =
	 * BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12));
	 * user.setPassword(hashedPassword); System.out.println("Register Page"); //
	 * userRepo.register(user); return "redirect:/Register"; }
	 */
	@RequestMapping(path = "/login", method=RequestMethod.GET)
	public String showLog(Model model) {
		user user = new user();
		model.addAttribute(user);
		return "login";
	}
	
	@RequestMapping(path = "/RegisterPage", method = RequestMethod.POST)
	public String login(@RequestParam("EmailAddress")String emailAddress, @RequestParam ("password")String password,@RequestParam("username")String username,@RequestParam("category")String category,@RequestParam("about")String about) {
		     user user1=new user();
		     user1.setEmailAddress(emailAddress);
		     user1.setPassword(password);
		     user1.setUserName(username);
		     user1.setCategory(category);
		     user1.setTextinformation(about);
		     user dbUser = serviceUser.save(user1);   
		    				/*
				 * Boolean IsPasswordMatch =BCrypt.checkpw(password, dbUser.getPassword());
				 * if(IsPasswordMatch) { return "home"; }else { return "redirect:/login"; }
				 */
		     return "Home";
	}	
}



