package pl.charity.charity.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.charity.charity.entity.Category;
import pl.charity.charity.repository.CategoryRepository;
import pl.charity.charity.service.CategoryService;


import java.util.List;
@RequiredArgsConstructor
@Service
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;



    @Override
    public void save(Category category) {
        categoryRepository.save(category);
    }

    @Override
    public void update(Category category) {categoryRepository.save(category);
    }

    @Override
    public Category byFindId(Long id) {
        return categoryRepository.findById(id).get();
    }

    @Override
    public List<Category> findAll() {
        return categoryRepository.findAll();
    }

    @Override
    public void deleteById(Long id) {categoryRepository.deleteById(id);
    }
}
