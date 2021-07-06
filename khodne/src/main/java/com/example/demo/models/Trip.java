package com.example.demo.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="trips")
public class Trip{
	@Id
	@GeneratedValue
	private Long id;
	@Column(name="pick_up_location")
	private String pickUpLocation;
	@Column(name="number_of_passengers")
	private String numberOfPassengers;
	private String destination;
	private int rider;
	private int driver;
	@Column(updatable=false)
	 private Date createdAt;
	 private Date updatedAt;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="user_id")
    private User user;

	public Trip() {}
	

	public Trip(String pickUpLocation, String numberOfPassengers, String destination, int rider, int driver,
			User user) {
		super();
		this.pickUpLocation = pickUpLocation;
		this.numberOfPassengers = numberOfPassengers;
		this.destination = destination;
		this.rider = rider;
		this.driver = driver;
		this.user = user;
	}


	public String getNumberOfPassengers() {
		return numberOfPassengers;
	}


	public void setNumberOfPassengers(String numberOfPassengers) {
		this.numberOfPassengers = numberOfPassengers;
	}


	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPickUpLocation() {
		return pickUpLocation;
	}
	public void setPickUpLocation(String pickUpLocation) {
		this.pickUpLocation = pickUpLocation;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public int getRider() {
		return rider;
	}
	public void setRider(int rider) {
		this.rider = rider;
	}
	public int getDriver() {
		return driver;
	}
	public void setDriver(int driver) {
		this.driver = driver;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public Long getId() {
		return id;
	}
	
}