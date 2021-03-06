package com.attractor.online_store.Service;

import com.attractor.online_store.DTO.ProductDTO;
import com.attractor.online_store.Model.Product;
import com.attractor.online_store.Model.User;
import com.attractor.online_store.Repo.CartRepository;
import com.attractor.online_store.Repo.ProductRepository;
import com.attractor.online_store.Repo.ProductTypeRepository;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class ProductService {
    private final ProductRepository productRepository;
    private final ProductTypeRepository productTypeRepository;
    private final CartRepository cartRepository;

    public List<ProductDTO.ProductTypeDTO> findAllProductTypes() {
        return productTypeRepository.findAll().stream()
                .map(ProductDTO.ProductTypeDTO::from).collect(Collectors.toList());
    }

    public Page<ProductDTO> getProducts(Pageable pageable) {
        return productRepository.findAll(pageable).map(ProductDTO::from);
    }

    public List<Product> getUserCart(int userId) {
        return productRepository.findAllByUserId(userId);
    }

    public void deleteUserCart(User user) {
        cartRepository.deleteAll();
    }

    public Page<ProductDTO> searchProducts(Pageable pageable, String param, String text) {
        Page<ProductDTO> sm;
        if(param.equals("by name")) {
            sm = productRepository.findAllByNameContains(pageable, text).map(ProductDTO::from);
        } else if(param.equals("by type")) {
            sm = productRepository.findAllByType_Name(pageable, text).map(ProductDTO::from);
        } else if(param.equals("by price")) {
            sm = productRepository.findAllByPriceIsLessThanEqual(pageable, Double.parseDouble(text.trim())).map((ProductDTO::from));
        } else {
            sm = productRepository.findAllByDescriptionContains(pageable, text).map(ProductDTO::from);
        }
        return sm;
    }


}
