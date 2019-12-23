package com.printaktobe.repos;

import com.printaktobe.domain.Contact;
import com.printaktobe.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface ContactRepository extends CrudRepository<Contact, Long> {
    Contact findByUser(User user);
}
