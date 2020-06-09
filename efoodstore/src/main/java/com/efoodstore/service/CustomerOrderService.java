package com.efoodstore.service;

import com.efoodstore.model.CustomerOrder;

/**
 * Created by Ihcen & Ganesh on 01/06/2020.
 */

public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
