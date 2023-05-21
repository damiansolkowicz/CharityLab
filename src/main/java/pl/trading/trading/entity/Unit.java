package pl.trading.trading.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "unit")
public class Unit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;
    private String fullName;
    private  String abbreviation;
    @ManyToOne(fetch = FetchType.LAZY)
    private User user;
}
