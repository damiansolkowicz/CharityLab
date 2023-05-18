package pl.trading.trading.service;


import pl.trading.trading.entity.Unit;

import java.util.List;

public interface UnitService {

    void save(Unit unit);

    void update(Unit unit);

    Unit findById(Long id);

    List<Unit> findAll();

    List<Unit> findByUserEmail(String email);

    void deleteById(Long id);
}
