package com.attractor.online_store.Repository;

import com.attractor.online_store.Model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Integer> {
}
