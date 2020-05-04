package com.attractor.online_store.Repository;

import com.attractor.online_store.Model.ProductType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductTypeRepository extends JpaRepository<ProductType, Integer> {
}
