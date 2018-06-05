package com.nlb.ecom.handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.nlb.ecom.model.RegisterModel;
import com.nlb.ecombackend.dao.UserDAO;
import com.nlb.ecombackend.dto.Address;
import com.nlb.ecombackend.dto.Cart;
import com.nlb.ecombackend.dto.User;

@Component
public class RegisterHandler {

	@Autowired
	private UserDAO userDAO;

	public RegisterModel init() {

		return new RegisterModel();
	}

	public void addUser(RegisterModel registerModel, User user) {

		registerModel.setUser(user);
	}

	public void addBilling(RegisterModel registerModel, Address billing) {

		registerModel.setBilling(billing);
	}


	 public String validateUser(User user, MessageContext error) {
		  String transitionValue = "success";
		  
		  //validating password
		   if(!user.getPassword().equals(user.getConfirmPassword())) {
		    error.addMessage(new MessageBuilder().error().source(
		      "confirmPassword").defaultText("Password does not match!").build());
		    transitionValue = "failure";    
		   }  
		   
		   //validating email
		   if(userDAO.getByEmail(user.getEmail())!=null) {
		    error.addMessage(new MessageBuilder().error().source(
		      "email").defaultText("Email address is already taken!").build());
		    transitionValue = "failure";
		   }
		  return transitionValue;
		 }
	 
	 

	public String saveAll(RegisterModel model) {
		String transitionvalue = "success";

		//fetch the user
		User user = model.getUser();
		if (user.getRole().equals("USER")) {
			Cart cart = new Cart();			
			cart.setUser(user);			
			user.setCart(cart);
		}

		//save the user
		userDAO.add(user);

		//get the address
		Address billing = model.getBilling();
		billing.setUserId(user.getId());
		billing.setBilling(true);

		//save the address
		userDAO.addAddress(billing);
		return transitionvalue;
	}
}
