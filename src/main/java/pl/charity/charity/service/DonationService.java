package pl.charity.charity.service;


import pl.charity.charity.entity.Donation;

import java.util.List;

public interface DonationService {
    void save(Donation donation);
    void update(Donation donation);
    Donation findById(Long id);
    List<Donation> findAll();
    void deleteById(Long id);
    Integer countBagsQuantity();
    Integer countDonationsQuantity();
}
