package com.zed.controller;

import com.zed.model.Expense;
import com.zed.service.ExpenseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class MasterController {

    @Autowired
    ExpenseService expenseService;

    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView("home");
        mav.addObject("message", "List of expenses");
        List<Expense> expenses = this.expenseService.findAll();
        System.out.println(expenses);
        mav.addObject("expenses", expenses);
        return mav;
    }

    @RequestMapping("/expense")
    public ModelAndView addExpense() {
        ModelAndView mav = new ModelAndView("expense");
        mav.addObject("expense", new Expense());
        return mav;
    }

    @PostMapping("/expense")
    public String save(@ModelAttribute("expense") Expense expense) {
        System.out.println(expense);
        expenseService.save(expense);
        return "redirect:/";
    }

    @GetMapping("/expense/{id}")
    public ModelAndView edit(@PathVariable("id") Long id) {
        ModelAndView mav = new ModelAndView("expense");
        Optional<Expense> expense = expenseService.findById(id);
        mav.addObject("expense", expense);
       return mav;
    }

    @RequestMapping("/expense/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        expenseService.delete(id);
        return "redirect:/";
    }

}
