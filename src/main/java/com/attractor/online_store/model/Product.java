package com.attractor.online_store.model;

import lombok.*;
import javax.persistence.*;

@Data
@Builder
@AllArgsConstructor(access = AccessLevel.PACKAGE)
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @ManyToOne
    @JoinColumn(name = "brand_id")
    private Brand brand;

    @Column(length = 128)
    private String product;

    @Column(length = 128)
    private String image;

    @Column
    private float price;

    @Column(length = 128)
    private String description;





    @Override
    public String toString() {
        return String.format("%s, %s, %s, %s, %s, %.2f, %s,",
                this.id, this.category, this.brand, this.product,
                this.image, this.price,this.description);
    }

}
