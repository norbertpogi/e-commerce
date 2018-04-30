package com.nlb.ecombackend.dao;

import java.util.List;

import com.nlb.ecombackend.dto.Address;
import com.nlb.ecombackend.dto.Cart;
import com.nlb.ecombackend.dto.User;

public interface UserDAO {
	
	boolean addUser(User user);
	User getByEmal(String email);
	
	//add an addresss	
	boolean addAddress(Address address);
	Address getBillingAddress(User user);
	List<Address> listShippingAddress(User user);
	
	//alternative
	/*Address getBillingAddress(int userId);
	List<Address> listShippingAddress(int userId);*/
	
	
	boolean updateCart(Cart cart);

}
