package com.attractor.online_store.Model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.List;

@Data
@Builder
@AllArgsConstructor(access = AccessLevel.PACKAGE)
@NoArgsConstructor
@Entity
@Table(name = "Product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
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
    private int qty;
    @Positive
    @Column
    private double price;
    @NotNull
    @ManyToOne
    @JoinColumn(name = "type_id")
    private ProductType type;

    @OneToMany(mappedBy = "id")
    List<CartProduct> carts;


    @Override
    public String toString() {
        return String.format("id=%d, name=%s, image=%s, description=%s, qty=%d, price=%.2f", this.id,
                 this.name, this.image, this.description, this.qty, this.price);
    }

}
