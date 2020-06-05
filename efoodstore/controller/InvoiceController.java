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
@RequestMapping("/invoice")
public class InvoiceController {

    @Autowired
    private InvoiceService invoiceService;

    @RequestMapping("/invoiceList/all")
    public String getInvoice(Model model){
        List<Invoice> invoices = invoiceService.getInvoiceList();
        model.addAttribute("invoices", invoices);

        return "invoiceList";
    }

    @RequestMapping("/viewInvoice/{invoiceId}")
    public String viewInvoice(@PathVariable int invoiceId, Model model) throws IOException{
        Invoice invoice = invoiceService.getInvoiceById(invoiceId);
        model.addAttribute("invoice", invoice);

        return "viewInvoice";
    }

    @RequestMapping("/invoiceList")
    public String getInvoiceByCategory(@RequestParam("searchCondition") String searchCondition, Model model){
        List<Invoice> invoices = invoiceService.getInvoiceList();
        model.addAttribute("invoices", invoices);
        model.addAttribute("searchCondition", searchCondition);

        return "invoiceList";
    }

} // The End of Class;
