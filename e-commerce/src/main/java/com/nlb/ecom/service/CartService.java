package com.nlb.ecom.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nlb.ecom.model.UserModel;
import com.nlb.ecombackend.dao.CartLineDAO;
import com.nlb.ecombackend.dto.Cart;
import com.nlb.ecombackend.dto.CartLine;

@Service("cartService")
public class CartService {
	
	@Autowired
	private CartLineDAO cartLineDAO;

	@Autowired
	private HttpSession session;
	
	//returns the cart of the user who has logged in
	private Cart getCart() {
		
		return ((UserModel)session.getAttribute("userModel")).getCart();
		
	}
	
	//return the entire cartLines
	public List<CartLine> getCartLines() {
		return cartLineDAO.list(this.getCart().getId());
	}
	
	
	
}
