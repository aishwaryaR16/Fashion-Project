package com.ecomm.dao;

import com.ecomm.model.Cart;

import antlr.collections.List;

public interface CartDAO 
{
	public boolean addCart(Cart cart);
	public Cart getCart(int cartId);
	public boolean deleteCart(Cart cart);
	public List retrieveCart();
	public java.util.List<Cart> retreiveCart(String string);

}
