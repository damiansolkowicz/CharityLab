package pl.trading.trading.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.pl.PESEL;


@Entity
@Getter
@Setter
@ToString
@Table(name = "supplier")
public class Supplier {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String surname;
    private String city;
    @Email
    private String email;
    @PESEL
    private String pesel;

    public String getFullName() {
        return name + " " + surname;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    private User user;
}
