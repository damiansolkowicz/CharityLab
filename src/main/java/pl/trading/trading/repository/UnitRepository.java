package pl.trading.trading.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.trading.trading.entity.Unit;

public interface UnitRepository extends JpaRepository<Unit,Long> {
}