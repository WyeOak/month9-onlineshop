package com.attractor.online_store.Repository;

import com.attractor.online_store.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {
    boolean existsByLoginAndEmail(String login, String email);

    Optional<User> findByEmail(String email);
}
