package com.attractor.online_store.domain.user;

import com.attractor.online_store.Model.User;
import lombok.*;

import javax.persistence.*;

@Data
@Entity
@Builder
@Table(name = "PasswordResetToken")
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PACKAGE)
public class PasswordResetToken {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String token;

    @OneToOne(targetEntity = User.class, fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "user_id")
    public User user;

}
