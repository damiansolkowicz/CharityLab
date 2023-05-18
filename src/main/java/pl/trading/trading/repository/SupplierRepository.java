package pl.trading.trading.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.trading.trading.entity.Supplier;

import java.util.List;

public interface SupplierRepository extends JpaRepository<Supplier, Long> {
    List<Supplier> findSuppliersByUserEmail(String email);
}