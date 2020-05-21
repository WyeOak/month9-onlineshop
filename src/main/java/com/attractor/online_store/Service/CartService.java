package com.attractor.online_store.Service;

import com.attractor.online_store.Model.Cart;
import com.attractor.online_store.Model.User;
import com.attractor.online_store.Repo.CartRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class CartService {
    private CartRepository repository;

    public boolean checkUserCart(int uId) {
        return repository.existsByUser_Id(uId);
    }

    public int getUserCart(int uId) {
        return repository.findAllByUser_Id(uId).size();
    }

    public void saveCart(Cart c) {
        repository.save(c);
    }

    public Cart getUserCart(User user) {
        return repository.findByUser_Id(user.getId());
    }
}
