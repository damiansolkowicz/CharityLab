package pl.charity.charity.service;


import pl.charity.charity.dto.UserDto;
import pl.charity.charity.entity.Role;
import pl.charity.charity.entity.User;

import java.util.List;

public interface UserService {
    void saveUser(UserDto userDto,String roleName);

    User findByEmail(String email);

    public List<User> findAllByRoles(Role roles);
     User findByRoles(String roles);

    void update(User user);
    Integer countAdminUsers();
    Integer countRegularUsers();
}
