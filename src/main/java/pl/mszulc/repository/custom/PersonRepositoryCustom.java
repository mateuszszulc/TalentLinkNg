package pl.mszulc.repository.custom;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import pl.mszulc.entity.Person;

public interface PersonRepositoryCustom {
    Page<Person> findByNameLike(String name, Pageable pageable);
}
