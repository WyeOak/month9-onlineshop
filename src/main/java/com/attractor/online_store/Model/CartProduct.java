package com.attractor.online_store.Model;

import lombok.*;

import javax.persistence.*;

@Data
@AllArgsConstructor(access = AccessLevel.PACKAGE)
@Builder
@ToString
@NoArgsConstructor
@Entity
@Table(name = "Cart_product")
public class CartProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "Product_id")
    private Product product;

    @ManyToOne
    @JoinColumn(name = "cart_id")
    private Cart cart;

    @Column(name = "qty")
    private int qty;

    @Column(name = "sum")
    private double sum;

    @Column(name = "session")
    private String session;

}
