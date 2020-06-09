package com.efoodstore.service.impl;

import com.efoodstore.dao.CartDao;
import com.efoodstore.model.Cart;
import com.efoodstore.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Ihcen & Ganesh on 01/06/2020.
 */

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    public void update(Cart cart) {
        cartDao.update(cart);
    }
}
