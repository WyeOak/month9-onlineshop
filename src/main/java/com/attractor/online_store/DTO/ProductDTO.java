package com.attractor.online_store.DTO;

import com.attractor.online_store.Model.Product;
import com.attractor.online_store.Model.ProductType;
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
    private ProductTypeDTO typeDTO;
    private String description;
    private double price;

    public static ProductDTO from(Product product) {
        return builder()
                .id(product.getId())
                .name(product.getName())
                .typeDTO(ProductTypeDTO.from(product.getType()))
                .description(product.getDescription())
                .image(product.getImage())
                .price(product.getPrice())
                .build();
    }

    @Getter
    @Setter
    @ToString
    @Builder(access = AccessLevel.PRIVATE)
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    @NoArgsConstructor(access = AccessLevel.PRIVATE)
    public static class ProductTypeDTO {
        private int id;
        private String name;
        private String icon;

        public static ProductTypeDTO from(ProductType productType) {
            return builder()
                    .id(productType.getId())
                    .name(productType.getName())
                    .icon(productType.getIcon())
                    .build();
        }
    }
}
