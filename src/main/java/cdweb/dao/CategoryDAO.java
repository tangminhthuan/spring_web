package cdweb.dao;

import cdweb.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;




public interface CategoryDAO extends JpaRepository<Category, String>{
}
