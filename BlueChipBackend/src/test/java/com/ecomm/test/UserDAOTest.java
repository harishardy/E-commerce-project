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
	
	@Ignore
	@Test
	public  void registerUserTest()
	{
		UserDetail user=new UserDetail();
		
		user.setUsername("ragav");
		user.setPassword("pass123");
		user.setEmailId("ragav@gmail.com");
		user.setMobileNo("9374869223");
		user.setRole("ROLE_ADMIN");
		user.setAddress("Chennai");
		user.setEnabled(true);
		
		assertTrue("Problem in Registering the User: ",userDAO.registerUser(user));
	}
	
	
	
	@Test
	public void updateUserTest()
	{
		UserDetail user=userDAO.getUserDetail("tarun");
		
		user.setAddress("kerala");
		user.setMobileNo("6436545467");
		
		assertTrue("Problem in Updating User: ",userDAO.updateUser(user));
		
	}
	
	

}
