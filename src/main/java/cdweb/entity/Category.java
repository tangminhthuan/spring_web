package cdweb.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import java.io.Serializable;
import java.util.List;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "categories")
public class Category implements Serializable {
    @Id
    @NotEmpty(message = "Thiếu id")
    String id;

    @NotEmpty(message = "Thiếu tên")
    String name;
    @JsonIgnore
    @OneToMany(mappedBy = "category")
    List<Product> products;
}
