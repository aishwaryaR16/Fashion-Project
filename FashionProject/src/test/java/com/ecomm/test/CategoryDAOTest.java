package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

public class CategoryDAOTest 
{
	static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		categoryDAO=(CategoryDAO)myContext.getBean("categoryDAO");
	}

	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCategoryId(1003);
		category.setCategoryName("Watches");
		category.setCategoryDesc("Women's branded Watches");
			
		assertTrue("Problem in inserting Category",categoryDAO.addCategory(category));
	}

	@Test
	public void deleteCategoryTest() {
		
		Category category=categoryDAO.getCategory(1002);
		category.setCategoryId(1002);
		
		assertTrue("Problem is deleting Category",categoryDAO.deleteCategory(category));
		
	}
	@Test
	public void updateCategoryTest() {
		
		Category category=(Category)categoryDAO.getCategory(1001);
		category.setCategoryDesc("Casual Wear");
		System.out.println("CategoryId:"+category.getCategoryId());
		System.out.println("CategoryDesc:"+category.getCategoryDesc());
		
		assertTrue("Problem is updating Category",categoryDAO.updateCategory(category));
		
	}
		
	@Test
	public void retrieveCategoriesTest()
	{
		List<Category> categoryList=(List<Category>)categoryDAO.retrieveCategories();
		
		assertTrue("Problem in Retrieving the Category List",categoryList.size()>0);
		
		for(Category category:categoryList)
		{
			System.out.println(category);
		}
	}
	}
