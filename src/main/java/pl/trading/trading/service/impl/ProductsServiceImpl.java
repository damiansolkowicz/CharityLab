package pl.trading.trading.service.impl;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.trading.trading.entity.Products;
import pl.trading.trading.repository.ProductsRepository;
import pl.trading.trading.service.ProductsService;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class ProductsServiceImpl implements ProductsService {

    private final ProductsRepository productsRepository;

    @Override
    public void save(Products products) {
        productsRepository.save(products);

    }

    @Override
    public void update(Products products) {
        productsRepository.save(products);

    }

    @Override
    public Products findById(Long id) {
        return productsRepository.findById(id).get();
    }

    @Override
    public List<Products> findAll() {
        return productsRepository.findAll();
    }

    @Override
    public void deleteById(Long id) {
        productsRepository.deleteById(id);
    }
}
