package com.diegoasmat.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.diegoasmat.modelos.Expense;
import com.diegoasmat.repositorios.RepositorioExpenses;

import java.util.Optional;

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
	
	public Expense getExpenseById(Long id) {
		Optional<Expense> expense = repositorioExpenses.findById(id);
		if(expense.isPresent()) {
			return expense.get();
		}
		return null;
	}
	
	public Expense updateExpense(Expense expense) {
		Expense expenseObtenido = getExpenseById(expense.getId());
		if(expenseObtenido!=null) {
			return repositorioExpenses.save(expense);
		}
		return null;
	}
	
	public void deleteExpense(Long id) {
		repositorioExpenses.deleteById(id);
	}
}
