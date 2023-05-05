package pl.trading.trading.service;


import pl.trading.trading.entity.Products;
import pl.trading.trading.entity.Supplier;

import java.util.List;

public interface ProductsService {

    void save(Products products);
    void update(Products products);

    Products findById(Long id);

    List<Products> findAll();
    void deleteById(Long id);
}
