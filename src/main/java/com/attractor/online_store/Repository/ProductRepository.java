package com.attractor.online_store.Repository;

import com.attractor.online_store.Model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Integer> {
    Page<Product> findAllByTypeContains(Pageable pageable, String brand);
    Page<Product> findAllByNameContains(Pageable pageable, String name);
    Page<Product> findAllByPriceIsLessThanEqual(Pageable pageable, float price);
    Page<Product> findAllByDescriptionContains(Pageable pageabel, String descr);
}
