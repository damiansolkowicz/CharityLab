package pl.trading.trading.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.trading.trading.entity.Unit;

import java.util.List;

public interface UnitRepository extends JpaRepository<Unit, Long> {
    List<Unit> findUnitsByUserEmail(String email);
}