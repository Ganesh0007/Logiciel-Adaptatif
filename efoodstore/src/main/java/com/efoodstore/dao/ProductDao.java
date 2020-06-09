package com.efoodstore.dao;

import com.efoodstore.model.Product;

import java.util.List;

/**
 * Created by Ihcen on 01/06/2020.
 */

public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
