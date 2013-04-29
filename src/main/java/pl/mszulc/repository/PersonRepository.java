package pl.mszulc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import pl.mszulc.entity.Person;

public interface PersonRepository extends JpaRepository<Person, Integer> {
    Page<Person> findByNameLike(String name, Pageable pageable);
}
