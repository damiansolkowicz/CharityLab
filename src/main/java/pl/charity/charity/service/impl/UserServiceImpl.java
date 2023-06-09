package pl.charity.charity.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import pl.charity.charity.dto.UserDto;
import pl.charity.charity.entity.Role;
import pl.charity.charity.entity.User;
import pl.charity.charity.repository.RoleRepository;
import pl.charity.charity.repository.UserRepository;
import pl.charity.charity.service.UserService;


import java.util.Arrays;
import java.util.List;

@Slf4j
@Service
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private PasswordEncoder passwordEncoder;

    public UserServiceImpl(UserRepository userRepository,
                           RoleRepository roleRepository,
                           PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public void saveUser(UserDto userDto, String roleName) {
        log.info("Zapisuje usera");
        User user = new User();
        user.setName(userDto.getFirstName() + " " + userDto.getLastName());
        user.setEmail(userDto.getEmail());

        user.setPassword(passwordEncoder.encode(userDto.getPassword()));
        Role role = roleRepository.findByName(roleName);
        if (role == null) {
            role = checkRoleExist(roleName);
        }
        user.setRoles(Arrays.asList(role));
        userRepository.save(user);
    }

    @Override
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public List<User> findAllByRoles(Role roles) {
       return userRepository.findAllByRoles(roles);
    }

    @Override
    public User findByRoles(String roles) {
        return null;
    }

    @Override
    public void update(User user) {
        userRepository.save(user);
    }

    @Override
    public Integer countAdminUsers() {
        return userRepository.countAdminUsers();
    }
    public  Integer countRegularUsers(){
        return  userRepository.countRegularUsers();
    }

    private UserDto convertEntityToDto(User user) {
        UserDto userDto = new UserDto();
        String[] name = user.getName().split(" ");
        userDto.setFirstName(name[0]);
        userDto.setLastName(name[1]);
        userDto.setEmail(user.getEmail());
        return userDto;
    }

    private Role checkRoleExist(String roleName) {
        Role role = new Role();
        role.setName(roleName);
        return roleRepository.save(role);
    }


}
