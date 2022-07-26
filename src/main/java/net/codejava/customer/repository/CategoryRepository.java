package net.codejava.customer.repository;

import org.springframework.data.repository.CrudRepository;

import net.codejava.customer.entity.Category;

public interface CategoryRepository extends CrudRepository<Category, Long>{

}
