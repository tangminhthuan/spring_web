package cdweb.dao;

import cdweb.entity.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;




public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}