package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController 
{
	@RequestMapping("/login")
	public String showLoginPage(Model m)
	{
		System.out.println("== I am in My Controller - Login Page");
		m.addAttribute("pagename","Sign In Page");
		return "Login";
	}
	@RequestMapping("/contactus")
	public String showContactUsPage(Model m)
	{
		System.out.println("== I am in My Controller -ContactUs Page");
		m.addAttribute("pagename","ContactUs");
		return "ContactUs";
	}


	

	@RequestMapping("/aboutus")
	public String showAboutUsPage(Model m)
	{
		System.out.println("== I am in My Controller - AboutUs Page");
		m.addAttribute("pagename","AboutUs");
		return "AboutUs";
	}

	@RequestMapping("/productdisplay")
	public String showProductDisplayPage(Model m)
	{
		System.out.println("== I am in My Controller - ProductDisplay Page");
		m.addAttribute("pagename","ProductDisplay");
		return "ProductDisplay";
	}

	@RequestMapping("/adminhome")
	public String showAdminHomePage(Model m)
	{
		System.out.println("== I am in My Controller - AdminHome Page");
		m.addAttribute("pagename","AdminHome");
		return "AdminHome";
	}
	
	@RequestMapping("/userhome")
	public String showUserHomePage(Model m)
	{
		System.out.println("== I am in My Controller - UserHome Page");
		m.addAttribute("pagename","UserHome");
			return	"UserHome";
	}
	
	@RequestMapping("/signout")
	public String showSignOutPage(Model m)
	{
		System.out.println("== I am in My Controller -SignOut Page");
		m.addAttribute("pagename","SignOut");
			return	"SignOut";
	}
	
	@RequestMapping("/tshirtdetail")
	public String showTshirtDetailPage(Model m)
	{
		System.out.println("== I am in My Controller - TshirtDetail Page");
		m.addAttribute("pagename","TshirtDetail");
		return "TshirtDetail";
	}

	@RequestMapping("/tshirt")
	public String showTshirtPage(Model m)
	{
		System.out.println("== I am in My Controller - Tshirt Page");
		m.addAttribute("pagename","Tshirt");
		return "Tshirt";
	}
	@RequestMapping("/caprees")
	public String showCapreesPage(Model m)
	{
		System.out.println("== I am in My Controller - Caprees Page");
		m.addAttribute("pagename","Caprees");
		return "Caprees";
	}
	@RequestMapping("/Dresses")
	public String showDressesPage(Model m)
	{
		System.out.println("== I am in My Controller - Dresses Page");
		m.addAttribute("pagename","Dresses");
		return "Dresses";
	}
	@RequestMapping("/trousers")
	public String showTrousersPage(Model m)
	{
		System.out.println("== I am in My Controller - Trousers Page");
		m.addAttribute("pagename","Trousers");
		return "Trousers";
	}
	
}
