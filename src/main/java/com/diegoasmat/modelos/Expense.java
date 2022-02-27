package com.diegoasmat.modelos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

@Entity
@Table(name = "expenses")
public class Expense {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	@Size(min=3,max=100, message = "El nombre debe tener al menos 3 caracteres.")
	private String name;
	
	@NotNull
	@Size(min=3,max=100, message = "El vendedor debe tener al menos 3 caracteres.")
	private String vendor;
	
	@NotNull
	@Positive(message = "El valor debe ser mayor a 0.")
	private double amount;
	
	@NotNull
	@Size(min=5,max = 200, message = "La descripción debe tener al menos 5 caracteres.")
	private String description;
	
	public Expense() {};
	
	public Expense(String name, String vendor, double amount, String descrition) {
		this.name=name;
		this.vendor=vendor;
		this.amount=amount;
		this.description=descrition;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVendor() {
		return vendor;
	}

	public void setVendor(String vendor) {
		this.vendor = vendor;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
