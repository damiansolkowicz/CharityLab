package pl.trading.trading.repository;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import pl.trading.trading.entity.Products;

import java.util.List;

public interface ProductsRepository extends JpaRepository<Products, Long> {

    @Override
    @EntityGraph(attributePaths = {"supplier"})
    List<Products> findAll();
}
