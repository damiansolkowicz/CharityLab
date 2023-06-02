package pl.charity.charity.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.charity.charity.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
