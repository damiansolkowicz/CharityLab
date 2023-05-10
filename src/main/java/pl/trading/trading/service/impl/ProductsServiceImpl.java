package pl.trading.trading.service.impl;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.trading.trading.entity.Product;
import pl.trading.trading.repository.ProductsRepository;
import pl.trading.trading.service.ProductsService;

import java.util.List;
import java.util.function.Supplier;

@Service
@Transactional
@RequiredArgsConstructor
public class ProductsServiceImpl implements ProductsService {

    private final ProductsRepository productsRepository;

    @Override
    public void save(Product product) {productsRepository.save(product);}

    @Override
    public void update(Product product) {productsRepository.save(product);}
    @Override
    public Product findById(Long id) {return productsRepository.findById(id).get();}

    @Override
    public List<Product> findAll() {return productsRepository.findAll();}

    @Override
    public void deleteById(Long id) {productsRepository.deleteById(id);}

    @Override
    public List<Product> findBySupplierId(Long id) {return productsRepository.findBySupplierId(id);
    }

    @Override
    public List<Product> findBySupplierPesel(String pesel) {
        return productsRepository.findBySupplierPesel(pesel);
    }


}
