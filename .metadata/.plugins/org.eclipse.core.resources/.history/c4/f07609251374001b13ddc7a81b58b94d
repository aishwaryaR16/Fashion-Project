package com.ecomm.dao;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecomm.model.Cart;

import antlr.collections.List;
@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO
{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean addCart(Cart cart) 
	{try
	{
	sessionFactory.getCurrentSession().save(cart);
	
	System.out.println("Product Added");
	return true;
	}
	catch(Exception e)
	{
	System.out.println("Exception Arised:"+e);	
	return false;
	}
}

	@Override
	public Cart getCart(int cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteCart(Cart cart) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List retrieveCart() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public java.util.List<Cart> retreiveCart(String string) {
		// TODO Auto-generated method stub
		return null;
	}

}
