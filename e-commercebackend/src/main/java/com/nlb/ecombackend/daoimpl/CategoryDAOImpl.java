package com.nlb.ecombackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import com.nlb.ecombackend.dto.Category;

public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();
	
	static {
		
		Category category = new Category();
		
		//adding first category
		category.setId(1);
		category.setName("Television");
		category.setDescription("This is some description for television");
		category.setImageURL("CAT_1.png");
		categories.add(category);
		
		//adding second category
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This is some description for mobile");
		category.setImageURL("CAT_2.png");
		categories.add(category);
		
		//adding third category
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("This is some description for laptop");
		category.setImageURL("CAT_3.png");
		categories.add(category);
	}
	
	
	@Override
	public List<Category> list() {
		
		return null;
	}

}
