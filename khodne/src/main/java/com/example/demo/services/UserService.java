package com.example.demo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.models.Role;
import com.example.demo.models.Trip;
import com.example.demo.models.User;
import com.example.demo.repositories.RoleRepository;
import com.example.demo.repositories.TripRepository;
import com.example.demo.repositories.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private TripRepository tripRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
    public UserService(UserRepository userRepository, RoleRepository roleRepository, TripRepository tripRepository, BCryptPasswordEncoder bCryptPasswordEncoder)     {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.tripRepository = tripRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }
    
    
    // 1
    public void saveWithRiderRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_RIDER"));
        userRepository.save(user);
    }
    //driver
    public void saveWithDriverRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_DRIVER"));
        userRepository.save(user);
    }
     
     // 2 admin
    public void saveUserWithAdminRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
        userRepository.save(user);
    }    
    
    // 3
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    
//    public User findByEmail(String username) {
//        return userRepository.findByEmail(username);
//    }
    //user by id 
    public User findUserById(Long id) {
    	return userRepository.findById(id).orElse(null);
    }
    public List<User> getAllUsers(){
    	return userRepository.findAll();
    	
    }
    public User updateUser(User u) {
    	return userRepository.save(u);
    }
    public void destroyUser(Long id) {
    	userRepository.deleteById(id);
    }
    ///////////////////////////////////
    public Trip createTrip(Trip trip) {
    	return tripRepository.save(trip); //must take rider's id 
    }
    
    public List<Trip> getAllTrips(){
    	return tripRepository.findAll();
    	
    }
    public Trip findTripById(Long id) {
    	return tripRepository.findById(id).orElse(null);
    	
    }
    public void deleteTrip(Long id) {
    	Optional<Trip> optionalTrip = tripRepository.findById(id);
		if (optionalTrip.isPresent()) {
			Trip t = optionalTrip.get();
			tripRepository.delete(t);
		}

	}
    public Role findRoleByName(String name) {
    		return roleRepository.findByName(name);
	}
    }
