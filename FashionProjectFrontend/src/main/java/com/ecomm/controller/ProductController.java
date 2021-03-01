package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.model.Category;
import com.ecomm.model.Product;
import com.ecomm.dao.ProductDAO;


@Controller
public class ProductController

{
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/showProduct")
	public String showProduct(Model m)
	{
		List<Product> productList=(List<Product>) productDAO.retrieveProduct();

		m.addAttribute("productList", productList);
		return "Product";
	}
	
	@RequestMapping(value="/InsertProduct",method=RequestMethod.POST)
	public String InsertProduct(@RequestParam("productId")int productId,@RequestParam("productdesc")String productdesc,@RequestParam("productName")String productName,Model m)
	{
		Product product=new Product();
		product.setProductId(productId);
		product.setProductdesc(productdesc);
		product.setProductName(productName);
		
		productDAO.addProduct(product);
		
		List<Product> productList= product.retrieveProduct();
		m.addAttribute("productList", productList);
		return "Product";
	}
	
	@RequestMapping(value="/editProduct/{productId}")
	public String editProduct(@PathVariable("productId")int productId,Model m)
	{
		Product productObj=productDAO.getProduct(productId);
		m.addAttribute("product", productObj);
		return "ProductUpdate";
	}
	
	 @RequestMapping(value="/updateProduct",method=RequestMethod.POST)
	 	public String updateProduct(@RequestParam("productId")int productId, @RequestParam("productdesc")String productdesc,@RequestParam("productName")String productName,Model m)
	 	{
	 		Product product=productDAO.getProduct(productId);
	 		product.setProductdesc(productdesc);
	 		product.setProductName(productName);
	 		
	 		productDAO.updateProduct(product);
	 		
			List<Product> productList=productDAO.retrieveProduct();
	 		m.addAttribute("productList", productList);
	 		System.out.println("Product Table updated");
	 		return "Product";
	 	}

	 @RequestMapping("/deleteProduct/{productId}")
	  	public String deleteProduct(@PathVariable("productId") int productId, Model m) 
	 {

	     	 System.out.println("I am in delete page");
	       Product product=productDAO.getProduct(productId);
	       
	       productDAO.deleteProduct(product);
	       List<Product> productList=productDAO.retrieveProduct();
	       m.addAttribute("productList", productList);
	       
	       return "Product";
	     }
}


