package com.example.servletjspdemo.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Character {
	@Id
	@GeneratedValue
	private int id;
	private String Name = "";
	private String LastName = "";
	private String Bloodline = "";
	private String BirthSign;
	private String Alignment;
	private String EpochOfBirth;

	public Character() {
		super();
	}

	public Character(String name, String lastName, String bloodline,
			String birthSign, String alignment, String epochOfBirth) {
		super();
		this.Name = name;
		this.LastName = lastName;
		this.Bloodline = bloodline;
		this.BirthSign = birthSign;
		this.Alignment = alignment;
		this.EpochOfBirth = epochOfBirth;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		this.Name = name;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		this.LastName = lastName;
	}

	public String getBloodline() {
		return Bloodline;
	}

	public void setBloodline(String bloodline) {
		this.Bloodline = bloodline;
	}

	public String getBirthSign() {
		return BirthSign;
	}

	public void setBirthSign(String birthSign) {
		this.BirthSign = birthSign;
	}

	public String getAlignment() {
		return Alignment;
	}

	public void setAlignment(String alignment) {
		this.Alignment = alignment;
	}

	public String getEpochOfBirth() {
		return EpochOfBirth;
	}

	public void setEpochOfBirth(String epochOfBirth) {
		this.EpochOfBirth = epochOfBirth;
	}
}