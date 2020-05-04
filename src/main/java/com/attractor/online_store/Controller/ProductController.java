package com.attractor.online_store.Controller;

import com.attractor.online_store.Service.ProductService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ProductController {

    private final ProductService service;

    @RequestMapping("/")
    public String root(Model model) {
        model.addAttribute("products", service.findAllProducts());
        return "index";
    }

    @RequestMapping("/ProductTypes")
    public String getTypes(Model model) {
        model.addAttribute("ProductTypes", service.findAllProductTypes());
        return "product_types";
    }
}
