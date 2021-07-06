package com.example.demo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Trip;

@Repository
public interface TripRepository extends CrudRepository<Trip,Long>{
List<Trip> findAll();
List<Trip> findByRider(Long id);
}
