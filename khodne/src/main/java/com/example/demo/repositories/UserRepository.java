package com.example.demo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User findByUsername(String username);
//    User findByEmail(String email);
    List<User> findAll();
    List<User> findByRolesIn(List<String> role);
    //list of users by role
    List<User> findByRoles_NameIn(List<String> roles);
    //Query by role object id
    List<User> findByRoles_Id(Long id);
    //
    List<User> findByLocation(String location);
    //
    List<User> findByLocationIsNot(String location);
}
