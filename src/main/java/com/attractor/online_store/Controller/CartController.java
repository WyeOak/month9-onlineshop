package com.attractor.online_store.Controller;

import com.attractor.online_store.Model.Cart;
import com.attractor.online_store.Model.CartProduct;
import com.attractor.online_store.Model.Product;
import com.attractor.online_store.Repo.CartProductRepository;
import com.attractor.online_store.Repo.CartRepository;
import com.attractor.online_store.Repo.ProductRepository;
import com.attractor.online_store.Repo.UserRepository;

import com.attractor.online_store.Service.CartService;
import com.attractor.online_store.Service.ProductService;
import com.attractor.online_store.domain.cart.Constants;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@AllArgsConstructor(access = AccessLevel.PRIVATE)
class CartController {
    private final ProductRepository repository;
    private final UserRepository userRepository;
    private final CartRepository cartRepository;
    private final CartProductRepository repo;
    private final ProductService service;
    private final CartService cService;

    @GetMapping("/cart")
    public String cart(Model model, @SessionAttribute(name = Constants.CART_ID, required = false)
            List<Product> cart, HttpServletRequest request) {
        var user = userRepository.findByEmail(request.getUserPrincipal().getName()).get();
        if (user != null) {
            model.addAttribute("cartItems", service.getUserCart(user.getId()));
        }

        return "cart";
    }

    // это метод для асинхронных запросов
    // демонстрация добавления в "корзину" через параметр @SessionAttribute cart_model
    @PostMapping("/cart")
    @ResponseBody
    public boolean addToListRest(@RequestParam String value, @SessionAttribute(name = Constants.CART_ID, required = false) List<Product> cart) {
        if (cart != null) {
            cart.add(repository.findById(Integer.parseInt(value)).get());
        }
        return true;
    }

    // метод для добавления в "корзину" через форму
    // демонстрация добавления через объект HttpSession session
    @PostMapping("/cart/add")
    public String addToList(@RequestParam String value, HttpSession session, HttpServletRequest uriBuilder) {
        int sId = Integer.parseInt(value);
        var user = userRepository.findByEmail(uriBuilder.getUserPrincipal().getName()).get();
        if(!cService.checkUserCart(user.getId())) {
            session.removeAttribute(Constants.CART_ID);
            Cart c = new Cart();
            c.setUser(userRepository.findByEmail(uriBuilder.getUserPrincipal().getName()).get());
            c.setSession(session.getId());
            cartRepository.save(c);
        }
        var cart = cService.getUserCart(user);
        CartProduct sc = new CartProduct();
        sc.setCart(cart);
        sc.setSession(session.getId());
        sc.setProduct(repository.findById(sId).get());
        repo.save(sc);

        if (session != null) {
            var attr = session.getAttribute(Constants.CART_ID);
            if (attr == null) {
                session.setAttribute(Constants.CART_ID, new ArrayList<Product>());
            }
            try {
                var list = (List<Product>) session.getAttribute(Constants.CART_ID);
                list.add(repository.findById(sId).get());
            } catch (ClassCastException ignored) {

            }
        }
        return "redirect:/";
    }

    @PostMapping("/cart/buy")
    public String buy(HttpSession session, HttpServletRequest request) {
        session.removeAttribute(Constants.CART_ID);
        var user = userRepository.findByEmail(request.getUserPrincipal().getName()).get();
        if (cService.checkUserCart(user.getId())) {
            cartRepository.delete(cService.getUserCart(user));
            return "redirect:/cart/feedback";
        }
        return "redirect:/";
    }

    @GetMapping("/cart/feedback")
    public String feedback() {
        return "review";
    }

    @PostMapping("cart/feedback")
    public String feedback(HttpSession session) {
        return "redirect:/";
    }


    // в идеале это должно быть @DeleteMapping, но web-формы не поддерживают
    // запросы с методами отличными от get и post
    // по этому у нас адрес метода немного "странный" :)
    @PostMapping("/cart/empty")
    public String emptyCart(HttpSession session, HttpServletRequest request) {
        session.removeAttribute(Constants.CART_ID);
        var user = userRepository.findByEmail(request.getUserPrincipal().getName()).get();
        if (cService.checkUserCart(user.getId())) {
            cartRepository.delete(cService.getUserCart(user));
        }
        return "redirect:/cart";
    }
}
