package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Product;
import com.ecomm.model.Supplier;

public class SupplierDAOTest 
{
	static SupplierDAO supplierDAO;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		supplierDAO=(SupplierDAO)myContext.getBean("supplierDAO");

	}

	@Test
	public void addSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierId(1004);
		supplier.setSupplierName("Fastrack");
		supplier.setSupplierDesc("Bags ");

		assertTrue("Problem in inserting Product",supplierDAO.addSupplier(supplier));
	}
	

@Test
	public void updateSupplierTest() {
		
		Supplier supplier=(Supplier)supplierDAO.getSupplier(1001);
		supplier.setSupplierDesc("Casual Wear");
		System.out.println("SupplierId:"+supplier.getSupplierId());
		System.out.println("SupplierDesc:"+supplier.getSupplierDesc());
		
		assertTrue("Problem is updating Supplier",supplierDAO.updateSupplier(supplier));
		
	}


@Test
public void retrieveSupplierTest()
{
	List<Supplier> supplierList=(List<Supplier>)supplierDAO.retrieveSupplier();
	
	assertTrue("Problem in Retrieving the Supplier List",supplierList.size()>0);
	
	for(Supplier supplier:supplierList)
	{
		System.out.println(supplier);
	}
}

@Test
public void deleteSupplierTest()
{
	Supplier supplier=supplierDAO.getSupplier(1003);
	supplier.setSupplierId(1003);
	
	assertTrue("Problem is deleting Supplier",supplierDAO.deleteSupplier(supplier));
	
}
	
}

	