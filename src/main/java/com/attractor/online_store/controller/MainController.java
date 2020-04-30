package com.attractor.online_store.controller;

import com.attractor.online_store.repository.ProductRepository;
import com.attractor.online_store.repository.ProductTypeRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    private final ProductRepository repo;
    private final ProductTypeRepository ptRepo;

    public MainController(ProductRepository repo, ProductTypeRepository ptRepo) {
        this.repo = repo;
        this.ptRepo = ptRepo;
    }

    @RequestMapping("/")
    public String root(Model model) {
        model.addAttribute("products", repo.findAll());
        repo.findAll().forEach(product -> System.out.println(product));
        return "index";
    }

    @RequestMapping("/types")
    public String getTypes(Model model) {
        model.addAttribute("types", ptRepo.findAll());
        return "types";
    }
}
