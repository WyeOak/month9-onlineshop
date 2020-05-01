package com.attractor.online_store.model;

import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;

@Data
@Builder
@AllArgsConstructor(access = AccessLevel.PACKAGE)
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Action {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 128)
    private String time;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    @ManyToOne
    @JoinColumn(name = "supplier_id")
    private Supplier supplier;

    @Column(length = 128)
    private int qty;

    @Column
    private float price;

    @Column(length = 128)
    private String description;

    @Override
    public String toString() {
        return "Action{" +
                "id=" + id +
                ", time=" + time +
                ", product=" + product +
                ", supplier=" + supplier +
                ", qty=" + qty +
                ", price=" + price +
                ", description='" + description + '\'' +
                '}';
    }
}
