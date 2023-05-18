package pl.trading.trading.service.impl;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.trading.trading.entity.Supplier;
import pl.trading.trading.repository.SupplierRepository;
import pl.trading.trading.service.SupplierService;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class SupplierServiceImpl implements SupplierService {

    private final SupplierRepository supplierRepository;

    @Override
    public void save(Supplier supplier) {
        supplierRepository.save(supplier);

    }

    @Override
    public void update(Supplier supplier) {
        supplierRepository.save(supplier);

    }

    @Override
    public Supplier findById(Long id) {
        return supplierRepository.findById(id).get();
    }

    @Override
    public List<Supplier> findAll() {
        return supplierRepository.findAll();
    }

    @Override
    public List<Supplier> findSupplierByUserEmail(String email) {
        return supplierRepository.findSuppliersByUserEmail(email);
    }

    @Override
    public void deleteById(Long id) {
        supplierRepository.deleteById(id);
    }
}
