package com.attractor.online_store.Service;

import com.attractor.online_store.DTO.ProductDTO;
import com.attractor.online_store.DTO.ProductTypeDTO;
import com.attractor.online_store.Repository.ProductRepository;
import com.attractor.online_store.Repository.ProductTypeRepository;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ProductService {
    private final ProductRepository smartphoneRepository;
    private final ProductTypeRepository brandRepository;

    public List<ProductDTO> findAllProducts() {
        return smartphoneRepository.findAll().stream()
                .map(ProductDTO::from).collect(Collectors.toList());
    }

    public List<ProductTypeDTO> findAllProductTypes() {
        return brandRepository.findAll().stream()
                .map(ProductTypeDTO::from).collect(Collectors.toList());
    }
}
