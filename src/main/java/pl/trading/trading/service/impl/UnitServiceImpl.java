package pl.trading.trading.service.impl;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.trading.trading.entity.Unit;
import pl.trading.trading.repository.UnitRepository;
import pl.trading.trading.service.UnitService;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class UnitServiceImpl implements UnitService {

    private final UnitRepository unitRepository;

    @Override
    public void save(Unit unit) {
        unitRepository.save(unit);
    }

    @Override
    public void update(Unit unit) {
        unitRepository.save(unit);
    }

    @Override
    public Unit findById(Long id) {
        return unitRepository.findById(id).get();
    }

    @Override
    public List<Unit> findAll() {
        return unitRepository.findAll();
    }

    @Override
    public List<Unit> findByUserEmail(String email) {
        return unitRepository.findUnitsByUserEmail(email);
    }


    @Override
    public void deleteById(Long id) {
        unitRepository.deleteById(id);
    }
}
