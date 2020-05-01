package com.attractor.online_store.controller;

import com.attractor.online_store.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @Autowired
    ActionRepository actionRepo;
    @Autowired
    BrandRepository brandRepo;
    @Autowired
    CategoryRepository categoryRepo;
    @Autowired
    ProductRepository productRepo;
    @Autowired
    SupplierRepository supplierRepo;

    @RequestMapping("/")
    public String root(Model model) {
        model.addAttribute("products", productRepo.findAll());
        productRepo.findAll().forEach(product -> System.out.println(product));
        return "index";
    }

    @RequestMapping("/category")
    public String getTypes(Model model) {
        model.addAttribute("types", categoryRepo.findAll());
        return "types";
    }
}
