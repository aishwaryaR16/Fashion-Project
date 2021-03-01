package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Product;

public class ProductDAOTest 
{
	static ProductDAO productDAO;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		productDAO=(ProductDAO)myContext.getBean("productDAO");
	}

	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductId(1005);
		product.setProductdesc("HandBags");
		product.setProductName("Lavie Bags");

		assertTrue("Problem in inserting Product",productDAO.addProduct(product));
	}
	

@Test
public void retrieveProductTest()
{
	List<Product> productList=(List<Product>)productDAO.retrieveProduct();
	
	assertTrue("Problem in Retrieving the Product List",productList.size()>0);
	
	for(Product product:productList)
	{
		System.out.println(product);
	}
}

@Test
	public void updateProductTest() {
		
		Product product=(Product)productDAO.getProduct(1001);
		product.setProductdesc("Casual Wear");
		System.out.println("ProductId:"+product.getProductId());
		System.out.println("ProductDesc:"+product.getProductdesc());
		
		assertTrue("Problem is updating Product",productDAO.updateProduct(product));
		
	}
@Test
public void deleteProductTest()
{
	Product product=productDAO.getProduct(1004);
	product.setProductId(1004);
	
	assertTrue("Problem is deleting Product",productDAO.deleteProduct(product));
	
}

}

