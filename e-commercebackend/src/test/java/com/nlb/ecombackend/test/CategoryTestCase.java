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
	public void testAddCategory(){		
		category = new Category();		
		category.setName("Telivision");
		category.setDescription("This is some description for telivision");
		category.setImageURL("CAT_1.png");
		
		assertEquals("successfully added a category inside the table", true, categoryDAO.add(category));
	}
	
}
