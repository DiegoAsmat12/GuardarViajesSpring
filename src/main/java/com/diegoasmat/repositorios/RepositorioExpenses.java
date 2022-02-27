package com.diegoasmat.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.diegoasmat.modelos.Expense;

@Repository
public interface RepositorioExpenses extends CrudRepository<Expense, Long>{
	
	List<Expense> findAll();

}
