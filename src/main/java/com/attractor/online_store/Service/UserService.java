package com.attractor.online_store.Service;

import com.attractor.online_store.DTO.UserDTO;
import com.attractor.online_store.Model.User;
import com.attractor.online_store.Repository.UserRepository;
import com.attractor.online_store.User.UserAlreadyRegisteredException;
import com.attractor.online_store.User.UserNotFoundException;
import com.attractor.online_store.User.UserRegisterForm;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserService {
    private UserRepository userRepository;
    private PasswordEncoder encoder;

    public boolean checkUser(UserRegisterForm form) {
        return userRepository.existsByLoginAndEmail(form.getLogin(), form.getEmail());
    }

    public void register(UserRegisterForm form) {
        if(checkUser(form)) {
            throw  new UserAlreadyRegisteredException();
        }
        var user = User.builder()
                .email(form.getEmail())
                .login(form.getLogin())
                .password(encoder.encode(form.getPassword()))
                .build();
        userRepository.save(user);
    }

    public UserDTO getByEmail(String email) {
        var user = userRepository.findByEmail(email)
                .orElseThrow(UserNotFoundException::new);
        return UserDTO.from(user);
    }
}
