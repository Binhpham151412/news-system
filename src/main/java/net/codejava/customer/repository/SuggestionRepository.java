package net.codejava.customer.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import net.codejava.customer.entity.Suggestion;

public interface SuggestionRepository extends CrudRepository<Suggestion, Long> {

	@Query(value = "SELECT * FROM suggestion WHERE user_id = ?1 AND article_id = ?2", nativeQuery = true)
	Suggestion findByUserAndArticle(String user_id, Long article_id);
	
}
