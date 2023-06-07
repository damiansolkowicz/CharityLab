package pl.charity.charity.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.charity.charity.entity.Institution;
import pl.charity.charity.repository.InstitutionRepository;
import pl.charity.charity.service.InstitutionService;

import java.util.List;
@Service
@RequiredArgsConstructor
public class InstitutionServiceImpl implements InstitutionService {
   private final InstitutionRepository institutionRepository;
    @Override
    public void save(Institution institution) {
        institutionRepository.save(institution);

    }

    @Override
    public void update(Institution institution) {
        institutionRepository.save(institution);
    }

    @Override
    public Institution findById(Long id) {
        return  institutionRepository.findById(id).get();
    }

    @Override
    public List<Institution> findAll() {
        return institutionRepository.findAll();
    }

    @Override
    public void deleteById(Long id) {
    institutionRepository.deleteById(id);
    }


}
