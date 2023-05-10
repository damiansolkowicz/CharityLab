package pl.trading.trading.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private double price;
    private  double quantity;
    private double toPay;
    @ManyToOne
    @NotNull
    private  Unit unit;

    @ManyToOne(fetch = FetchType.LAZY)
    @NotNull
    private Supplier supplier;


/* @ManyToMany
    @JoinTable(
            name = "products_suppliers",
            joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "supplier_id"))
    @NotEmpty
    private List<Supplier> suppliers = new ArrayList<>();*/

}
