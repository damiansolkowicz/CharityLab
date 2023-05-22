package pl.trading.trading.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Min;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.checkerframework.common.aliasing.qual.Unique;
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
    private String street;
    private String flatNumber;
    private String postCode;
    @Min(9)
    private String phoneNumber;
    @Email
    private String email;
    @Unique
    @PESEL
    private String pesel;

    public String getFullName() {
        return name + " " + surname;
    }

    public String getFullAddress() {return street + " " + flatNumber + " " + postCode + " " + city;}

    @ManyToOne(fetch = FetchType.LAZY)
    private User user;
}
