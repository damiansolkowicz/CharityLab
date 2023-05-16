package pl.trading.trading.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;


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
    private double quantity;
    private double toPay;
    private LocalDate localDate;
    @ManyToOne
    private Unit unit;

    @ManyToOne(fetch = FetchType.LAZY)
    @NotNull
    private Supplier supplier;


}
