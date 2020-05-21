package com.attractor.online_store.Service;

import com.attractor.online_store.DTO.UserDTO;
import com.attractor.online_store.Model.User;
import com.attractor.online_store.Repo.UserRepository;
import com.attractor.online_store.domain.user.UserAlreadyRegisteredException;
import com.attractor.online_store.domain.user.UserNotFoundException;
import com.attractor.online_store.domain.user.UserRegisterForm;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserService {
    private UserRepository userRepository;
    private PasswordEncoder encoder;

    public boolean checkUser(UserRegisterForm form) {
       return userRepository.existsByLoginAndEmail(form.getLogin(), form.getEmail());
    }

    public boolean checkUserByEmail(String email) {
        return userRepository.existsByEmail(email);
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

    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email).get();
    }

    public void saveUser(User u) {
        userRepository.save(u);
    }

    public Optional<User> getByid(int id) {
        return userRepository.findById(id);
    }
}
