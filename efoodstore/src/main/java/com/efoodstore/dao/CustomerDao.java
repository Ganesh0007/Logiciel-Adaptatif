package com.efoodstore.dao;

import com.efoodstore.model.Customer;

import java.util.List;

/**
 * Created by Ihcen on 01/06/2020.
 */

public interface CustomerDao {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);

}
