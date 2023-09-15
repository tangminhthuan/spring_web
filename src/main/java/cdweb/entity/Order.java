package cdweb.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "orders")
public class Order implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String address;
    @Temporal(TemporalType.DATE)
    @Column(name = "createdate")
    Date createDate = new Date();
    @ManyToOne
    @JoinColumn(name = "username")
    Account account;

    @JsonIgnore
    @OneToMany(mappedBy = "order")
    List<OrderDetail> orderDetails;
}