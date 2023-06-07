package pl.charity.charity.service;

import jakarta.persistence.criteria.CriteriaBuilder;
import pl.charity.charity.entity.Institution;

import java.util.List;

public interface InstitutionService {
    void save(Institution institution);
    void update(Institution institution);
    Institution findById(Long id);
    List<Institution> findAll();
    void deleteById(Long id);

}
