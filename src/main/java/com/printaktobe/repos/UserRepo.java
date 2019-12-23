package com.printaktobe.repos;

import com.printaktobe.domain.Role;
import com.printaktobe.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
    User findByRoles(Role role);

}