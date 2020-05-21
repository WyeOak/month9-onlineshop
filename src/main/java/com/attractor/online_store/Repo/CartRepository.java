package com.attractor.online_store.Repo;

import com.attractor.online_store.Model.Cart;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CartRepository extends JpaRepository<Cart, Integer> {

    boolean existsByUser_Id(int userId);

    List<Cart> findAllByUser_Id(int userId);

    void deleteByUser_id(int id);
}
