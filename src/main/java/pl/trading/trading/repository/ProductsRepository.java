package pl.trading.trading.repository;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import pl.trading.trading.entity.Product;

import java.util.List;

public interface ProductsRepository extends JpaRepository<Product, Long> {

    @Override
    @EntityGraph(attributePaths = {"supplier"})
    List<Product> findAll();

    @EntityGraph(attributePaths = {"unit", "supplier"})
    List<Product> findBySupplierId(Long id);

    @EntityGraph(attributePaths = {"unit", "supplier"})
    List<Product> findBySupplierPesel(String pesel);
    @EntityGraph(attributePaths = {"unit", "supplier"})
    List<Product> findByUserEmail(String mail);
}
