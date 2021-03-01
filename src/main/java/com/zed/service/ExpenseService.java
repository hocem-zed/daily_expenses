package com.zed.service;

import com.zed.model.Expense;

import java.util.List;
import java.util.Optional;

public interface ExpenseService {

    List<Expense> findAll();
    void save(Expense expense);
    Optional<Expense> findById(Long id);
    void delete(Long id);
}
