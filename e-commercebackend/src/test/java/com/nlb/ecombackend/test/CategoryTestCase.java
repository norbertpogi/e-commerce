package com.nlb.ecombackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.nlb.ecombackend.dao.CategoryDAO;
import com.nlb.ecombackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;

	private static CategoryDAO categoryDAO;

	private Category category;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.nlb.ecombackend");
		context.refresh();
		
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}
	
	@Test
	public void testCrudCategory() {
		
		//add operation
		category = new Category();		
		category.setName("Desktop");
		category.setDescription("This is some description for Desktop");
		category.setImageURL("CAT_1.png");
		
		assertEquals("successfully added a category inside the table", true, categoryDAO.add(category));
		
		category = new Category();		
		category.setName("Telivision");
		category.setDescription("This is some description for telivision");
		category.setImageURL("CAT_2.png");
		
		assertEquals("successfully added a category inside the table", true, categoryDAO.add(category));
		
		category = new Category();		
		category.setName("Laptop");
		category.setDescription("This is some description for laptop");
		category.setImageURL("CAT_3.png");
		
		assertEquals("successfully added a category inside the table", true, categoryDAO.add(category));
	
		//fetching and updating the category
		category = categoryDAO.get(3);
		
		category.setName("PC");
		
		assertEquals("successfully fetch a single category from the table!", 
				true,categoryDAO.update(category));
	
	
		//delete the category		
		assertEquals("successfully fetch a single category from the table!", 
			true,categoryDAO.delete(category));
		
		//fetching the list
		assertEquals("successfully fetch the list of category from the table!", 
				2,categoryDAO.list().size());
		
}
	/*@Test
	public void testListCategory() {
		
		assertEquals("successfully fetch the list of category from the table!", 
				2,categoryDAO.list().size());
	}*/
	
	/*@Test
	public void testDeleteCategory() {
		category = categoryDAO.get(3);
		
		assertEquals("successfully fetch a single category from the table!", 
				true,categoryDAO.delete(category));
	}
	*/
	
	/*@Test
	public void testUpdateCategory() {
		category = categoryDAO.get(3);
		
		category.setName("PC");
		
		assertEquals("successfully fetch a single category from the table!", 
				true,categoryDAO.update(category));
	}
	*/
	
	/*@Test
	public void testGetCategory() {
		category = categoryDAO.get(3);
		assertEquals("successfully fetch a single category from the table!", 
				"Desktop", category.getName());
	}*/
	
	/*	
	@Test
	public void testAddCategory(){		
		category = new Category();		
		category.setName("Desktop");
		category.setDescription("This is some description for Desktop");
		category.setImageURL("CAT_3.png");
		
		assertEquals("successfully added a category inside the table", true, categoryDAO.add(category));
	}*/
	

}
