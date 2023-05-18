package pl.trading.trading.service;


import pl.trading.trading.dto.UserDto;
import pl.trading.trading.entity.User;

public interface UserService {
    void saveUser(UserDto userDto);

    User findByEmail(String email);

}
