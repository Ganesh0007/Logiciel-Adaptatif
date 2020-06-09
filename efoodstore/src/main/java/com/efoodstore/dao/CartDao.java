package com.efoodstore.dao;

import com.efoodstore.model.Cart;

import java.io.IOException;

/**
 * Created by Ihcen on 01/06/2020.
 */

public interface CartDao {

    Cart getCartById (int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
}
