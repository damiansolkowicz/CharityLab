package pl.trading.trading.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.trading.trading.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
