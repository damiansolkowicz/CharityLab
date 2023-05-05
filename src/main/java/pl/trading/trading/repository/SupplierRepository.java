package pl.trading.trading.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.trading.trading.entity.Supplier;

public interface SupplierRepository extends JpaRepository<Supplier, Long> {
}
