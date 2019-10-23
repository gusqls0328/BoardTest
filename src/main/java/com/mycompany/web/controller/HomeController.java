package com.mycompany.web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.web.service.Login1Service01;
import com.mycompany.web.service.LoginResult;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private Login1Service01 service;
	
	
	@RequestMapping("/")
	public String home() {
		logger.debug("home 실행");
		return "home";
	}
	
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		
		
		
	}
	
	@PostMapping("/login")
	public String login(String mid, String mpassword, HttpSession session) {
		
		LoginResult result = service.login(mid, mpassword);
		
	}
	
	
	
	
	
}
