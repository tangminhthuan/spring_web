package cdweb.dao;

import cdweb.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;




public interface OrderDAO extends JpaRepository<Order, Long>{
}
