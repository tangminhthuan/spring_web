package cdweb.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "orderdetails")
public class OrderDetail implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    Double price;
    Integer quantity;
    @ManyToOne
    @JoinColumn(name = "productid")
    Product product;
    @ManyToOne
    @JoinColumn(name = "orderid")
    Order order;
}
