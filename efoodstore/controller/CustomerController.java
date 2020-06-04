package com.emusicstore.controller;


import com.emusicstore.model.Product;
import com.emusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/customerList/all")
    public String getCustomers(Model model){
        List<customer> customers = customerService.getCustomerList();
        model.addAttribute("customers", customers);

        return "customerList";
    }

    @RequestMapping("/viewCustomer/{customerId}")
    public String viewCustomer(@PathVariable int customerId, Model model) throws IOException{
        Customer customer = customerService.getCustomerById(customerId);
        model.addAttribute("customer", customer);

        return "viewCustomer";
    }

    @RequestMapping("/customerList")
    public String getCustomerByCategory(@RequestParam("searchCondition") String searchCondition, Model model){
        List<Customer> customers = customerService.getCustomerList();
        model.addAttribute("customers", customers);
        model.addAttribute("searchCondition", searchCondition);

        return "customerList";
    }

} // The End of Class;
