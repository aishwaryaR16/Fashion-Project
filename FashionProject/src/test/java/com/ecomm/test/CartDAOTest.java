package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CartDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.Category;

public class CartDAOTest 
{
static CartDAO cartDAO;
@BeforeClass
public static void initialize()
{
	AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
	myContext.scan("com.ecomm");
	myContext.refresh();
	
	cartDAO=(CartDAO)myContext.getBean("cartDAO");
}
@Ignore
@Test
public void addCartTest()
{
    Cart cart=new Cart();
	cart.setItemId(1);
	cart.setProductId(1002);
	cart.setProductName("Trousers");
	cart.setProductdesc("Casual Wear");
	
	assertTrue("Problem in inserting Product",cartDAO.addCart(cart));
}

@Test
public void deleteCartTest() {
	
	Cart cart=cartDAO.getCart(2);
	cart.setItemId(2);
	
	assertTrue("Problem is deleting Product",cartDAO.deleteCart(cart));
	
}
}
