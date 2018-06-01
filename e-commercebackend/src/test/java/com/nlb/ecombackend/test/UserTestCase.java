package com.nlb.ecombackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.nlb.ecombackend.dao.UserDAO;
import com.nlb.ecombackend.dto.Address;
import com.nlb.ecombackend.dto.Cart;
import com.nlb.ecombackend.dto.Category;
import com.nlb.ecombackend.dto.User;


public class UserTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;	
	private User user = null;
	private Cart cart = null;
	private Address address = null;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.nlb.ecombackend");
		context.refresh();		
		userDAO = (UserDAO)context.getBean("userDAO");
	}
	
	/*@Test
	public void testGetAddress() {
		user = userDAO.getByEmal("norbert@gmail.com");
		
		assertEquals("Failed to fetch the list of address and size does not match!", 2, 
				userDAO.listShippingAddress(user).size());
		
		assertEquals("Failed to fetch the billing address and size does not match!", "quezon city", 
				userDAO.getBillingAddress(user).getCity());	
		
	}*/
	
	/*@Test
	public void testAddress() {
		
		user = userDAO.getByEmal("norbert@gmail.com");

		// we are going to add shipping address
		address = new Address();		
		address.setAddressLineOne("18-1 fisheries st, vasra quezon city");
		address.setAddressLineTwo("30 corporate center pasig city");
		address.setCity("pasig city");
		address.setState("Pasig");
		address.setCountry("Philippines");
		address.setPostalCode("1431");		
		//set shiping to true
		address.setShipping(true);
		
		address.setUser(user);
		assertEquals("Failed to add shippingAddress!", true, userDAO.addAddress(address));	
		
	}*/
	
	
	/*@Test
	public void testAddress() {
		// we need to add an user
		user = new User();		
		user.setFirstName("Norbert");
		user.setLastName("Bautista");
		user.setEmail("norbert@gmail.com");
		user.setContactNumber("1234512345");
		user.setRole("USER");		
		user.setPassword("123456");
		
		//add the user
		assertEquals("Failed to add user!", true, userDAO.addUser(user));	
		
		// we are going to add address

		address = new Address();		
		address.setAddressLineOne("18-1 fisheries st, vasra quezon city");
		address.setAddressLineTwo("30 corporate center pasig city");
		address.setCity("quezon city");
		address.setState("Philippines");
		address.setPostalCode("1401");
		address.setBilling(true);		
		
		address.setUser(user);
		assertEquals("Failed to add address!", true, userDAO.addAddress(address));		
		
		// we are going to add shipping address
		address = new Address();		
		address.setAddressLineOne("18-1 fisheries st, vasra quezon city");
		address.setAddressLineTwo("30 corporate center pasig city");
		address.setCity("quezon city");
		address.setState("Philippines");
		address.setCountry("Philippines");
		address.setPostalCode("1401");		
		//set shiping to true
		address.setShipping(true);
		
		address.setUser(user);
		assertEquals("Failed to add shippingAddress!", true, userDAO.addAddress(address));		
	}*/
	
	/*@Test
	public void testUpdateCart() {
		//fetch the user by its email
		user = userDAO.getByEmail("kn@gmail.com");
		
		//get the cart of the user
		cart = user.getCart();
		
		cart.setGrandTotal(55555);
		cart.setCartLines(2);
		
		assertEquals("Failed to update cart!", true, userDAO.updateCart(cart));
	}*/
	
	
	/*@Test
	public void testAdd(){
		
		user = new User();		
		user.setFirstName("Norbert");
		user.setLastName("Bautista");
		user.setEmail("norbert@gmail.com");
		user.setContactNumber("1234512345");
		user.setRole("USER");		
		user.setPassword("123456");
		
	if(user.getRole().equals("USER")) {
			
			//create a cart for this user
			cart = new Cart();
			cart.setUser(user);
			
			// attache cart with the user
			user.setCart(cart);
			
		}
	// add the user
		assertEquals("Failed to add user!", true, userDAO.addUser(user));
	}*/
		
}

	
	
			
/*			
		// add the user
		assertEquals("Failed to add user!", true, userDAO.addUser(user));
		
		address = new Address();		
		address.setAddressLineOne("18-1 fisheries st, vasra quezon city");
		address.setAddressLineTwo("30 corporate center pasig city");
		address.setCity("quezon city");
		address.setState("Philippines");
		address.setPostalCode("1401");
		address.setBilling(true);
		
		//link the user with the address using user id
		address.setUserId(user.getId());
		
		// add the user
		assertEquals("Failed to add address!", true, userDAO.addAddress(address));
		
		if(user.getRole().equals("USER")) {
			
			//create a cart for this user
			cart = new Cart();
			cart.setUser(user);

			// add the user
			assertEquals("Failed to add cart!", true, userDAO.addCart(cart));
			
			// add shipping address for this user
			address = new Address();		
			address.setAddressLineOne("18-1 fisheries st, vasra quezon city");
			address.setAddressLineTwo("30 corporate center pasig city");
			address.setCity("quezon city");
			address.setState("Philippines");
			address.setCountry("Philippines");
			address.setPostalCode("1401");
			
			//set shiping to true
			address.setShipping(true);

			// link it with the user
			address.setUserId(user.getId());
			
			// add the shipping address
			assertEquals("Failed to add shipping address!", true, userDAO.addAddress(address));*/
						
		


























