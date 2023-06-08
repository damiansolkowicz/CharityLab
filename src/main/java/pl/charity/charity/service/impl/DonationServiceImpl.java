package pl.charity.charity.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.charity.charity.entity.Donation;
import pl.charity.charity.repository.DonationRepository;
import pl.charity.charity.service.DonationService;


import java.util.List;
@RequiredArgsConstructor
@Service
public class DonationServiceImpl implements DonationService {

    private final DonationRepository donationRepository;



    @Override
    public void save(Donation donation) {
        donationRepository.save(donation);

    }

    @Override
    public void update(Donation donation) {
    donationRepository.save(donation);
    }

    @Override
    public Donation findById(Long id) {
        return donationRepository.findById(id).get();
    }

    @Override
    public List<Donation> findAll() {
        return donationRepository.findAll();
    }

    @Override
    public void deleteById(Long id) {
donationRepository.deleteById(id);
    }

    @Override
    public Integer countBagsQuantity() {
        return donationRepository.countBagsQuantity();
    }

    @Override
    public Integer countDonationsQuantity() {
        return donationRepository.countDonationsQuantity();
    }

    @Override
    public List<Donation> findDontationByUserEmail(String email) {
        return donationRepository.findDonationsByUserEmail(email);
    }

    @Override
    public List<Donation> findByUserEmail(String email) {
        return donationRepository.findDonationsByUserEmail(email);
    }
}
