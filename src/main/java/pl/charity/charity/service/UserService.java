package pl.charity.charity.service;


import pl.charity.charity.dto.UserDto;
import pl.charity.charity.entity.User;

public interface UserService {
    void saveUser(UserDto userDto);

    User findByEmail(String email);

}
