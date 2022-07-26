package net.codejava.customer.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import net.codejava.customer.entity.Account;


public interface AccountRepository extends CrudRepository<Account, Long>{

	@Query(value = "select * from account where email = ?1 and password = ?2", nativeQuery = true)
	Account login(String email, String password);
}
