package com.hcl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.model.BillDetails;
import com.hcl.model.User;
import com.hcl.service.UserService;

@RestController
public class UserController {
	
	@Autowired
	public UserService service;
	

	@GetMapping("/")
	public ModelAndView mainPage() {
		return new ModelAndView("index");
	}
	
	@GetMapping("/add")
	public ModelAndView adding() {
		return new ModelAndView("register");
	}
	
	
	
	@PostMapping("/add")
	public ModelAndView registers(String username, String password,User user,BillDetails bdts,Model model) {

		if (service.addusers(username,password,user,bdts)) {
			return new ModelAndView("redirect:/success");
		}

		else {
			model.addAttribute("error","User with same name already registered");
			return new ModelAndView("error");
		}
	}
	
	

	@GetMapping("/login")
	public ModelAndView loginUser() {
		return new ModelAndView("login");
	}
	
	
	@PostMapping("/login")
	public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpServletRequest request,Model model) {
		if (service.loginUser(username, password)) {
			request.getSession().setAttribute("name", username);
			
			return new ModelAndView("redirect:/products");
			
		} else {
			model.addAttribute("error","Invalid Credentials");
			return new ModelAndView("login");
		}
		
		

	}
	
	
	@GetMapping("/signout")
	public ModelAndView signout(HttpServletRequest request) {
		request.getSession().invalidate();
		return new ModelAndView("redirect:/");
	}
	
	
	
	
	@GetMapping("/success")
	public ModelAndView rssucess() {
		return new ModelAndView("success");
	}
	

	@GetMapping("/error")
	public ModelAndView errorPage() {
		return new ModelAndView("error");
	}
	

	
	@GetMapping("/about")
	public ModelAndView about() {
		
			return new ModelAndView("about");
		
	}
	
	
	}
		


