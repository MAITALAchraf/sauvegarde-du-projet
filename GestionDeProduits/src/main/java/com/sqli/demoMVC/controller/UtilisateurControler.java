package com.sqli.demoMVC.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UtilisateurControler {

	
	@RequestMapping(value="Access_Denied",method=RequestMethod.GET)
	public String accessDeniedPage(ModelMap model){
		model.addAttribute("user",getPrincipale());
		return "accessDenied";
	}
	
	@RequestMapping(value = "/authentification", method = RequestMethod.GET) 
	 public ModelAndView authentification() { 
	  ModelAndView model = new ModelAndView(); 
	  model.setViewName("auth"); 
	  return model; 
	 } 
	
	private String getPrincipale(){
		String userName= "";
		Object principale = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		
		if(principale instanceof User){
			userName = ((User) principale).getUsername().toString();
		}
		else
			userName = principale.toString();
		
		return userName;
	}
}
