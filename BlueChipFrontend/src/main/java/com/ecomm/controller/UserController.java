package com.ecomm.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Product;

@Controller
public class UserController 
{

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value="/login_success")
	public String loginSuccess(HttpSession session,Model m)
	{
		String page="";
		
		boolean loggedIn=false;
		
		
		SecurityContext sc=SecurityContextHolder.getContext();
		Authentication at=sc.getAuthentication();
		
		String username=at.getName();
		
		
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)at.getAuthorities();
		
		List<Product> listProducts=productDAO.listProduct();
		m.addAttribute("productlist",listProducts);
		
		List<Category> categoryList=categoryDAO.listCategory();
		session.setAttribute("categorylist",categoryList);
		
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role", role.getAuthority());
			
			if(role.getAuthority().equals("ROLE_USER"))
			{
				loggedIn=true;
				page="UserHome";
				session.setAttribute("username", username);
				session.setAttribute("loggedIn", loggedIn);
			}
			else
			{
				loggedIn=true;
				page="AdminHome";
				session.setAttribute("username", username);
				session.setAttribute("loggedIn", loggedIn);
			}
		}
		
		System.out.println("Success"+username);
		page="ProductDisplay";
		
		
		return page;
		
	}
	
}