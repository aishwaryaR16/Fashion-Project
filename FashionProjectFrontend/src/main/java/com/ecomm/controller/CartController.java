package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CartDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.UserDAO;
import com.ecomm.model.Cart;

public class CartController 
{
	@Autowired
	ProductDAO productDAO;
	@Autowired
    UserDAO userDAO;
	@Autowired
    CartDAO cartDAO;
	
	
	@RequestMapping("/showCart")
	public String showCart(Model m)
	{
		List<Cart> cartList=cartDAO.retreiveCart("userName");
		m.addAttribute("cartList",cartList);
		return "Cart";
		
	}
	@RequestMapping("/insertCart")
	public String insertCart(@RequestParam("itemId")int itemId,@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("productdesc")String productdesc)
	{
		Cart cart=new Cart();
		return "Cart";
		
	}
	
}
