package com.efoodstore.service;

import com.efoodstore.model.Cart;
import com.efoodstore.model.CartItem;

/**
 * Created by Ihcen & Ganesh on 01/06/2020.
 */

public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId (int productId);
}
