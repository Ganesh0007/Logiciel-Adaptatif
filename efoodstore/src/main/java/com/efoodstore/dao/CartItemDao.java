package com.efoodstore.dao;

import com.efoodstore.model.Cart;
import com.efoodstore.model.CartItem;

/**
 * Created by Ihcen on 01/06/2020.
 */

public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId (int productId);

}
