package com.attractor.online_store.Service;

import com.attractor.online_store.Model.User;
import com.attractor.online_store.Repository.UserRepository;
import com.attractor.online_store.User.UserRegisterForm;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserService {
    private UserRepository userRepository;

    public void saveUser(UserRegisterForm form) {
        User u = new User();
        u.setLogin(form.getLogin());
        u.setEmail(form.getEmail());
        u.setPassword(form.getPassword());
        userRepository.save(u);
    }

    public boolean checkUser(UserRegisterForm form) {
       return userRepository.existsByLoginAndEmail(form.getLogin(), form.getEmail());
    }
}
