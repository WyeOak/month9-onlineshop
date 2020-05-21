package com.attractor.online_store.Repo;

import com.attractor.online_store.Model.Product;
import com.attractor.online_store.Model.ProductType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductTypeRepository extends JpaRepository<ProductType, Integer> {

    @Query("select s from Product s inner join ProductType b on s.type = b and b.id =:s")
    List<Product> select(int s);

}
