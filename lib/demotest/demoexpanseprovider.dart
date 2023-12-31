import 'package:flutter/material.dart';

class Expense {
  String category;
  String date;
  String description;
  double amount;

  Expense({required this.category, required this.date, required this.description, required this.amount});
}

class ExpenseModel extends ChangeNotifier {
  double totalMoney = 0.0;
  List<Expense> expenses = [];

  void addMoney(double amount) {
    totalMoney += amount;
    notifyListeners();
  }

  void addExpense(Expense expense) {
    if (totalMoney >= expense.amount) {
      totalMoney -= expense.amount;
      expenses.add(expense);
      notifyListeners();
    } else {
      // Handle insufficient funds
    }
  }
}