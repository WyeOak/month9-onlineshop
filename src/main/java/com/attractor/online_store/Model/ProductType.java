package com.attractor.online_store.Model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;

@Data
@Entity
@Table(name = "Type")
public class ProductType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotBlank
    @Size(min = 4, max = 16, message = "Name must contains 4 >< 16 symbols")
    @Column(length = 128)
    private String name;
    @NotNull
    @Column(length = 128)
    private String icon;
    @NotEmpty
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "id")
    @OrderBy("name ASC")
    List<Product> products;

    @Override
    public String toString() {
        return String.format("%s, %s, %s",
                this.name, this.icon, this.products);
    }
}
