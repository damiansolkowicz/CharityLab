package pl.charity.charity.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.charity.charity.entity.Donation;

import java.util.List;

@Repository
public interface DonationRepository extends JpaRepository<Donation,Long> {
    @Query("SELECT sum(d.quantity) FROM Donation d")
    Integer countBagsQuantity();
    @Query("SELECT count(d) FROM Donation d")
    Integer countDonationsQuantity();
    List<Donation> findDonationsByUserEmail(String email);
}
