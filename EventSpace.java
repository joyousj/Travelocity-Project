package com.travelocity.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="EVENTSPACE")
public class EventSpace {
	
	@Id
    @GeneratedValue
    @Column(name="ID")
    private Integer id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="PRICE")
	private Integer price;
	
	@Column(name="LOCATION")
	private String location;
	
	@Column(name="Description")
	private String description;

	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
