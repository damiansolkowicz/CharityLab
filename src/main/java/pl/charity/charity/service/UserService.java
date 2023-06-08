package pl.charity.charity.service;


import pl.charity.charity.dto.UserDto;
import pl.charity.charity.entity.User;

public interface UserService {
    void saveUser(UserDto userDto,String roleName);

    User findByEmail(String email);

    void update(User user);
}
