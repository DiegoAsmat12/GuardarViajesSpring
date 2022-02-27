package com.diegoasmat.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.diegoasmat.modelos.Expense;
import com.diegoasmat.repositorios.RepositorioExpenses;

@Service
public class ServicioExpenses {

	@Autowired
	RepositorioExpenses repositorioExpenses;
	
	public List<Expense> getAllExpenses(){
		return repositorioExpenses.findAll();
	}
	
	public Expense createExpense(Expense expense) {
		return repositorioExpenses.save(expense);
	}
	
}
