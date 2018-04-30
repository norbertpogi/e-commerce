package com.nlb.ecombackend.dao;

import java.util.List;

import com.nlb.ecombackend.dto.Category;

public interface CategoryDAO {

	boolean add(Category category);
	List<Category> list();
	Category get(int id);
	
}
