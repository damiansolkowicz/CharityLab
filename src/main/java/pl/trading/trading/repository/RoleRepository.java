package pl.trading.trading.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.trading.trading.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);
}
