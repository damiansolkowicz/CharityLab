package pl.charity.charity.service;


import pl.charity.charity.entity.Category;

import java.util.List;

public interface CategoryService {
    void save(Category category);
    void update(Category category);
    Category byFindId(Long id);
    List<Category> findAll();
    void deleteById(Long id);
}
