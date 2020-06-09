package com.efoodstore.service;

import com.efoodstore.model.Customer;

import java.util.List;

/**
 * Created by Ihcen & Ganesh on 01/06/2020.
 */

public interface CustomerService {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);
}
