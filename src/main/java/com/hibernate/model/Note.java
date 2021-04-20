package com.hibernate.model;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "note")
public class Note {

	@Id
	private int id;
	private String titel;
	@Column(length = 1500)
	private String contant;
	private Date addDate;

	public Note() {
		super();
	}

	public Note(String titel, String contant, Date addDate) {
		super();
		this.id = new Random().nextInt(10000);
		this.titel = titel;
		this.contant = contant;
		this.addDate = addDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitel() {
		return titel;
	}

	public void setTitel(String titel) {
		this.titel = titel;
	}

	public String getContant() {
		return contant;
	}

	public void setContant(String contant) {
		this.contant = contant;
	}

	public Date getAddDate() {
		return addDate;
	}

	public void setAddDate(Date addDte) {
		this.addDate = addDte;
	}

}
