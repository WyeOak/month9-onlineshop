package com.attractor.online_store.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "suppliers")
public class Supplier {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(length = 128)
    private String supplier;
    @Column(length = 128)
    private String address;
    @Column(length = 128)
    private String contacts;
}
