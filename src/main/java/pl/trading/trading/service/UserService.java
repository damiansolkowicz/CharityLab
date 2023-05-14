package pl.trading.trading.service;



import pl.trading.trading.entity.User;



public interface UserService {
    void save(User user);
    User findByEmail(String email);
}



