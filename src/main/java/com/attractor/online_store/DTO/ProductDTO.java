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
    private ProductTypeDTO brand;
    private String description;
    private float price;

    public static ProductDTO from(Product smartphone) {
        return builder()
                .id(smartphone.getId())
                .name(smartphone.getName())
                .brand(ProductTypeDTO.from(smartphone.getType()))
                .description(smartphone.getDescription())
                .image(smartphone.getImage())
                .price(smartphone.getPrice())
                .build();
    }
}
