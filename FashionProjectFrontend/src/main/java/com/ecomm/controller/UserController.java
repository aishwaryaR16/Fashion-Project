package com.ecomm.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.UserDAO;
import com.ecomm.model.Product;
import com.ecomm.model.UserDetail;

@Controller
public class UserController 
{

	@Autowired
	UserDAO userDAO;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@RequestMapping(value="/login_success")
	public String successLoggedIn(HttpSession session)
	{
		String page="";
		
		SecurityContext sContext=SecurityContextHolder.getContext();
		Authentication authentication=sContext.getAuthentication();
	
		String username=authentication.getName();
		session.setAttribute("username", username);
		
		
		
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role", role.getAuthority());
			
			if(role.getAuthority().equals("ROLE_ADMIN"))
				page="AdminHome";
			else
				page="UserHome";
			
		}
		
		return page;
	}
	
	
	
	@RequestMapping(value="/logout")
	public String loggedOut()
	{
		String page="Logout";
		
		
		return page;
	}
	
	@RequestMapping("/register")
	public String showRegisterPage(Model m)
	{
		System.out.println("== I am in My Controller - Register Page===");
		m.addAttribute("page name", "Register");
		return "Register";
	}
	
	@RequestMapping(value="/registerUser")
	public String addUser(@RequestParam("username")String username,@RequestParam("password")String password,@RequestParam("customerName")String customerName, @RequestParam("emailId")String emailId,@RequestParam("mobileNo")String mobileNo,@RequestParam("address")String address,Model m)
	{
		
		UserDetail user= new UserDetail();
		user.setUsername(username);
		user.setPassword(password);
		user.setEnabled(true);
        user.setCustomerName(customerName);
		user.setEmailId(emailId);
		user.setMobileNo(mobileNo);
		user.setAddress(address);
		user.setRole("ROLE_USER");


		
		String encodedPassword=bCryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		
		
		if(userDAO.registerUser(user))
		{
			System.out.println("User Registered");
			return "Login";
			}
		else
		{
			m.addAttribute("errorinfo", "Error while Registering");

	           return "Register";
		}
		
		
	}
}