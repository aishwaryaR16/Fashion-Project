package com.ecomm.test;

import static org.junit.Assert.assertTrue;

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
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		userDAO=(UserDAO)myContext.getBean("userDAO");
	}
	
	@Ignore
	@Test
	public void registerUserTest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("Ram");
		user.setPassword("123456");
		user.setCustomerName("ramcharan");
		user.setEnabled(true);
		user.setEmailId("ram@gmail.com");
		user.setAddress("Gorakpur");
		user.setMobileNo("876745190");
		user.setRole("User");
		
		assertTrue("Problem in Inserting UserDetail :",userDAO.registerUser(user));
	}

}
