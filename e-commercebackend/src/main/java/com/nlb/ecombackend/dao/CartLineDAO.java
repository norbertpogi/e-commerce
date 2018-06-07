package com.nlb.ecombackend.dao;


import java.util.List;

import com.nlb.ecombackend.dto.Cart;
import com.nlb.ecombackend.dto.CartLine;


public interface CartLineDAO {
	//common moethds from previously coded one
	public CartLine get(int id);
	public boolean add(CartLine cartLine);
	public boolean update(CartLine cartLine);
	public boolean delete(CartLine cartLine);
	public List <CartLine> list(int cartdId);
	
	// other business method related to the cart lines
	public List<CartLine> listAvailable(int cartId);
	public CartLine getByCartAndProduct(int cartId, int productId);
	
	//update a cart
	boolean updateCart(Cart cart);

}
