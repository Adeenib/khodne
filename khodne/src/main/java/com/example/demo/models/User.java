package com.example.demo.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;


@Entity
@Table(name="users")
public class User {
 
 @Id
 @GeneratedValue
 private Long id;
 private String email;
 @Size(min=3)
 private String username;
 @Size(min=5)
 private String password;
 @Transient
 private String passwordConfirmation;
 @Min(2)
 private Integer capacity;
 @Size(min=5)
 private String phone;
 @Size(min=2)
 private String car_type;
 @Size(min=2)
 private String location;

 
 
 
 @Column(updatable=false)
 private Date createdAt;
 private Date updatedAt;
 @ManyToMany(fetch = FetchType.EAGER)
 @JoinTable(
     name = "users_roles", 
     joinColumns = @JoinColumn(name = "user_id"), 
     inverseJoinColumns = @JoinColumn(name = "role_id"))
 private List<Role> roles;
 @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
 private List<Trip> trips;// trips
 
 public User() {
 }
 


public Long getId() {
	return id;
}
public void setId(Long id) {
	this.id = id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPasswordConfirmation() {
	return passwordConfirmation;
}
public void setPasswordConfirmation(String passwordConfirmation) {
	this.passwordConfirmation = passwordConfirmation;
}
public Integer getCapacity() {
	return capacity;
}
public void setCapacity(Integer capacity) {
	this.capacity = capacity;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getCar_type() {
	return car_type;
}
public void setCar_type(String car_type) {
	this.car_type = car_type;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public List<Role> getRoles() {
	return roles;
}
public void setRoles(List<Role> roles) {
	this.roles = roles;
}
public List<Trip> getTrips() {
	return trips;
}
public void setTrips(List<Trip> trips) {
	this.trips = trips;
}
public Date getCreatedAt() {
	return createdAt;
}
public Date getUpdatedAt() {
	return updatedAt;
}
@PrePersist
 protected void onCreate(){
     this.createdAt = new Date();
 }
 @PreUpdate
 protected void onUpdate(){
     this.updatedAt = new Date();
 }
}


