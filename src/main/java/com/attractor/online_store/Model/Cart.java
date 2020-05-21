package com.attractor.online_store.Model;


import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Data
@AllArgsConstructor(access = AccessLevel.PACKAGE)
@Builder
@NoArgsConstructor
@Entity
@Table(name = "Cart")
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToOne
    private User user;

    @Column
    @NotBlank
    private String session;

    @OneToMany(mappedBy = "cart")
    public List<CartProduct> carts;

    @Override
    public String toString() {
        return String.format("%s %s %s", this.user, this.session, this.carts);
    }

}