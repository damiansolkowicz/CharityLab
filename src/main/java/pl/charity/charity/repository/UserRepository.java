package pl.charity.charity.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.charity.charity.entity.Role;
import pl.charity.charity.entity.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
    List<User> findAllByRoles(Role role);

    @Query("SELECT count(d) FROM Donation d")
    Integer countDonationsQuantity();


    @Query("SELECT COUNT(u) FROM User u JOIN u.roles r WHERE r.name = 'ADMIN'")
    Integer countAdminUsers();
    @Query("SELECT COUNT(u) FROM User u JOIN u.roles r WHERE r.name = 'USER'")
    Integer countRegularUsers();
}
