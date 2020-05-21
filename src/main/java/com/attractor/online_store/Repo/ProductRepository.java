package com.attractor.online_store.Repo;

import com.attractor.online_store.Model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Integer> {
    Page<Product> findAllByType_Name(Pageable pageable, String type);
    Page<Product> findAllByNameContains(Pageable pageable, String name);
    Page<Product> findAllByPriceIsLessThanEqual(Pageable pageable, double price);
    Page<Product> findAllByDescriptionContains(Pageable pageable, String description);

    @Query("select s from Product s inner join CartProduct sc on sc.product = s inner join Cart c on c.user.id =:userId")
    List<Product> findAllByUserId(int userId);

}
