package com.printaktobe.repos;

import com.printaktobe.domain.Sectionn;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface SectionnRepository extends CrudRepository<Sectionn, Long> {
    Sectionn findSectionByName(String name);
    List<Sectionn> findAllBySectionntype(String secttype);

}