package com.attractor.online_store.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@Table(name = "product_types")
public class ProductType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(length = 128)
    private String name;
    @Column(length = 128)
    private String icon;
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "type")
    @OrderBy("name ASC")
    List<Product> products;
}