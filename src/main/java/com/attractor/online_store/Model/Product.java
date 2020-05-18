package com.attractor.online_store.Model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.*;

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
    @NotBlank
    @Size(min = 4)
    @Column(length = 128)
    private String name;
    @NotBlank
    @Column(length = 128)
    private String image;
    @NotNull
    @Column(length = 128)
    private String description;
    @PositiveOrZero
    @Column(length = 128)
    private Integer qty;
    @Positive
    @Column
    private float price;
    @NotNull
    @ManyToOne
    @JoinColumn(name = "productType_id")
    private ProductType type;


    @Override
    public String toString() {
        return String.format("%s, %s, %s, %d, %.2f",
                this.name, this.image, this.description, this.qty, this.price);
    }

}
