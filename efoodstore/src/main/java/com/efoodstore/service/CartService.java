package com.efoodstore.service;

import com.efoodstore.model.Cart;

/**
 * Created by Ihcen & Ganesh on 01/06/2020.
 */

public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
