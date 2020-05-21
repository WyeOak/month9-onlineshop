package com.attractor.online_store.Repo;

import com.attractor.online_store.Model.CartProduct;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CartProductRepository extends JpaRepository<CartProduct, Integer> {


}
