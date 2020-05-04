package com.attractor.online_store.DTO;

import com.attractor.online_store.Model.ProductType;
import lombok.*;

@Getter
@Setter
@ToString
@Builder(access = AccessLevel.PRIVATE)
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public  class ProductTypeDTO {
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