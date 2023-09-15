package cdweb.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "products")
public class Product implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotEmpty(message = "Thiếu id")
    int id;

    @NotEmpty(message = "Thiếu tên")
    String name;
    @Column(name = "image")
    String image;

    Double price;
    @Column(name = "detail")
    String detail;
    @Temporal(TemporalType.DATE)
    @Column(name = "createdate")
    Date createDate = new Date();
    Boolean available = true;
    @ManyToOne
    @JoinColumn(name = "categoryid")
    Category category;
    @JsonIgnore
    @OneToMany(mappedBy = "product")
    List<OrderDetail> orderDetails;
}
