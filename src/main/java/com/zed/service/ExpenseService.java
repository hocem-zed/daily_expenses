package com.zed.service;

import com.zed.model.Expense;

import java.util.List;

public interface ExpenseService {

    List<Expense> findAll();
}
