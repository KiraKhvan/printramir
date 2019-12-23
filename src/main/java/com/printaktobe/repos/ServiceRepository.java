package com.printaktobe.repos;
import com.printaktobe.domain.Sectionn;
import com.printaktobe.domain.Service;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;


public interface ServiceRepository extends JpaRepository<Service, Long> {

    List<Service> findAllBySectionn(Sectionn sectionn);
    Optional findById(Long id);
    List<Service> findAllByServicetype(String servtype);

}