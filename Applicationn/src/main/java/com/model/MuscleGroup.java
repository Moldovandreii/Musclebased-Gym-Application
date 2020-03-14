package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MuscleGroup {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String name;
	private int numberOfEx;
	private int recoveryDays;
	
	public MuscleGroup() {
		
	}
	
	public int getRecoveryDays() {
		return recoveryDays;
	}

	public void setRecoveryDays(int recoveryDays) {
		this.recoveryDays = recoveryDays;
	}

	public MuscleGroup(String name) {
		super();
		this.name = name;
	}

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

	public int getNumberOfEx() {
		return numberOfEx;
	}

	public void setNumberOfEx(int numberOfEx) {
		this.numberOfEx = numberOfEx;
	}

	@Override
	public String toString() {
		return "MuscleGroup [id=" + id + ", name=" + name + ", numberOfEx=" + numberOfEx + "]";
	}
	
	
}
