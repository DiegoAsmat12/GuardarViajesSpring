package com.diegoasmat.controladores;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.diegoasmat.modelos.Expense;
import com.diegoasmat.servicios.ServicioExpenses;

@Controller
@RequestMapping("/expenses")
public class ControladorExpenses {

	private final ServicioExpenses servicioExpenses;
	
	public ControladorExpenses(ServicioExpenses servicioExpenses) {
		this.servicioExpenses = servicioExpenses;
	}
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String renderIndex(Model model, @ModelAttribute(name = "expense")Expense expense) {
		List<Expense> expenses = servicioExpenses.getAllExpenses();
		model.addAttribute("currentExpenses", expenses);
		
		return "index.jsp";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String postForm(@Valid @ModelAttribute(name = "expense")Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		}
		
		servicioExpenses.createExpense(expense);
		return "redirect:/expenses";
	}
	
	@GetMapping(value="/edit/{id}")
	public String showEditForm(Model model, @PathVariable("id")Long id) {
		Expense expense = servicioExpenses.getExpenseById(id);
		model.addAttribute("expense", expense);
		
		return "edit.jsp";
	}
	
	@PutMapping(value="/{id}")
	public String editExpense(@Valid @ModelAttribute(name="expense")Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "edit.jsp";
		}
		
		servicioExpenses.updateExpense(expense);
		return "redirect:/expenses";
	}
}
