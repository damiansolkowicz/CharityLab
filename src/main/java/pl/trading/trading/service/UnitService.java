package pl.trading.trading.service;


import pl.trading.trading.entity.Product;
import pl.trading.trading.entity.Unit;

import java.util.List;

public interface UnitService {

    void save(Unit unit);

    void update(Unit unit);

    Unit findById(Long id);

    List<Unit> findAll();

    void deleteById(Long id);
}
