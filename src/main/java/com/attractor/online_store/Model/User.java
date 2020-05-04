package com.attractor.online_store.Model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Data
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotBlank
    @Size(min = 4, message = "Login must contain min 4 symbols")
    @Column(length = 128)
    private String login;
    @NotBlank
    @Column(length = 128)
    private @Email String email;
    @NotBlank
    @Column(length = 128)
    @Size(min = 6, message = "Password must contain min 6 symbols")
    private String password;
}