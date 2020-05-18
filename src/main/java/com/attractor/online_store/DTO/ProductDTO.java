package com.attractor.online_store.DTO;

import com.attractor.online_store.Model.Product;
import lombok.*;

@Getter
@Setter
@ToString
@Builder(access = AccessLevel.PRIVATE)
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class ProductDTO {

    private int id;
    private String name;
    private String image;
    private ProductTypeDTO productTypeDTO;
    private String description;
    private double price;

    public static ProductDTO from(Product product) {
        return builder()
                .id(product.getId())
                .name(product.getName())
                .productTypeDTO(ProductTypeDTO.from(product.getType()))
                .description(product.getDescription())
                .image(product.getImage())
                .price(product.getPrice())
                .build();
    }

}
