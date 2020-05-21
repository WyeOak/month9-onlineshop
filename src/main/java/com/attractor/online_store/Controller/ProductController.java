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

    @RequestMapping("/brands")
    public String getTypes(Model model) {
        model.addAttribute("types", service.findAllProductTypes());
        return "brands";
    }

}
