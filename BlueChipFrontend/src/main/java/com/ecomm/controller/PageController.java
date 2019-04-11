package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController 
{
	@RequestMapping(value="/login")
	public String showLoginPage()
	{
		System.out.println("I am in Login mapping method");
		return "Login";
	}
	@RequestMapping(value="/register")
	public String showRegisterPage()
	{
		System.out.println("I am in Register mapping method");
		return "Register";
	}
}
