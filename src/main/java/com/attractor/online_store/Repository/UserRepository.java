package com.attractor.online_store.Repository;

import com.attractor.online_store.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {
    boolean existsByLoginAndEmail(String login, String email);
}
