package com.ecomm.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest 
{
	static UserDAO userDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	
	
	@Test
	public void registerUserTest()
	{
		UserDetail user=new UserDetail();
		
		user.setUsername("tarun");
		user.setPassword("pass123");
		user.setEmailId("tarun@gmail.com");
		user.setMobileNo("8274784223");
		user.setRole("ROLE_USER");
		user.setAddress("Hyderabad");
		
		assertTrue("Problem in Registering the User: ",userDAO.registerUser(user));
	}
	
	@Ignore
	@Test
	public void updateUserTest()
	{
		UserDetail user=userDAO.getUserDetail("tarun");
		
		user.setAddress("chennai");
		user.setMobileNo("6436545467");
		
		assertTrue("Problem in Updating User: ",userDAO.updateUser(user));
		
	}
	

}
