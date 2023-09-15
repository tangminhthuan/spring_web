package cdweb.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.List;

@SuppressWarnings("serial")
@Data
@Entity

@Table(name = "accounts")
public class Account implements Serializable {
    @Id
    @NotEmpty(message = "Thiếu username")
    String username;

    @NotEmpty(message = "Thiếu password")
    @Size(min = 8)
    String password;

    @NotEmpty(message = "Thiếu tên")
    String fullname;

    @Email(message = "Email không hợp lệ")
    String email;

    String photo;
    boolean admin = false;
    boolean activated = true;
    @JsonIgnore
    @OneToMany(mappedBy = "account")
    List<Order> orders;

}
