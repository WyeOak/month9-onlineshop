package com.attractor.online_store.repository;

import com.attractor.online_store.model.Action;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ActionRepository extends JpaRepository<Action, Integer> {
}
