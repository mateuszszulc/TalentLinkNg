package pl.mszulc.service.impl;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.mszulc.service.PersonService;
import pl.mszulc.entity.Person;
import pl.mszulc.repository.PersonRepository;
import javax.inject.Inject;

@Service
public class PersonServiceImpl implements PersonService {

    @Inject
    protected PersonRepository personRepository;

    @Override
    @Transactional(readOnly = true)
    public Page<Person> findAll(int page, int size) {
        Pageable pageable = new PageRequest(page, size, new Sort(
                Direction.DESC, "id"));
        Page<Person> persons = personRepository.findAll(pageable);
        return persons;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<Person> findByNameLike(String name, int page, int size) {
        Pageable pageable = new PageRequest(page, size, new Sort(
                Direction.DESC, "id"));
        String q = "%" + name + "%";
        Page<Person> persons = personRepository.findByNameLike(q, pageable);
        return persons;
    }

    @Override
    @Transactional(readOnly = true)
    public Person findById(Integer id) {
        Person person = personRepository.findOne(id);
        return person;
    }

    @Override
    @Transactional
    public Person insert(Person person) {
        return personRepository.save(person);
    }

    @Override
    @Transactional
    public Person update(Person person) {
        return personRepository.save(person);
    }

    @Override
    @Transactional
    public void deleteById(Integer id) {
        personRepository.delete(id);
    }

}
