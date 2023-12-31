import '../data/model/Expanse.dart';
import 'package:flutter/material.dart';
//
// class ExpenseProvider extends ChangeNotifier {
//   List<Expense> _expenses = [];
//   double _totalAddedMoney = 0.0;
//   double _totalExpense = 0.0;
//
//   List<Expense> get expenses => List.unmodifiable(_expenses);
//   double get totalAddedMoney => _totalAddedMoney;
//   double get totalExpense => _totalExpense;
//   double get availableBalance => _totalAddedMoney - _totalExpense;
//
//   void addExpense(Expense expense) {
//     _expenses.add(expense);
//     if (expense.reason == 'Money Added') {
//       _totalAddedMoney += expense.amount;
//     } else {
//       _totalExpense += expense.amount;
//     }
//     notifyListeners();
//   }
//
//   void updateExpense(int index, Expense newExpense) {
//     _expenses[index] = newExpense;
//     if (newExpense.reason != 'Money Added') {
//       _totalExpense -= _expenses[index].amount; // Update total expense if category changes
//     }
//     _totalExpense += newExpense.amount; // Add new expense amount
//     notifyListeners();
//   }
//
//   void removeExpense(int index) {
//     _expenses.removeAt(index);
//     if (_expenses[index].reason != 'Money Added') {
//       _totalExpense -= _expenses[index].amount; // Update total expense if removing non-money added expense
//     }
//     notifyListeners();
//   }
//
//   double getMonthlyAddedMoney(DateTime month) {
//     return _expenses.where((expense) => expense.date.month == month.month && expense.date.year == month.year && expense.reason == 'Money Added').fold<double>(0.0, (sum, expense) => sum + expense.amount);
//   }
//
//   double getMonthExpense(DateTime month) {
//     return _expenses.where((expense) => expense.date.month == month.month && expense.date.year == month.year && expense.reason != 'Money Added').fold<double>(0.0, (sum, expense) => sum + expense.amount);
//   }
// }
// class ExpenseProvider extends ChangeNotifier {
//   final TextEditingController categoryName=TextEditingController();
//   final TextEditingController addBalance=TextEditingController();
//   List<Expense> _expenses = [];
//   // double _totalAddedMoney = 0.0;
//   // double _totalExpense = 0.0;
//   List<AddAmount> _addAmount=[];
//   List<AddAmount> get addAmount=>_addAmount;
//
//   void addBalancelogic(AddAmount addAmount)(
//       _addAmount.add(addAmount);
//       )
//
//   // List<Expense> get expenses => List.unmodifiable(_expenses);
//   // double get totalAddedMoney => _totalAddedMoney;
//   // double get totalExpense => _totalExpense;
//   // double get availableBalance => _totalAddedMoney - _totalExpense;
//
//   void addExpense(Expense expense) {
//     _expenses.add(expense);
//     if (expense.reason == 'Money Added') {
//       _totalAddedMoney += expense.amount;
//     } else {
//       _totalExpense += expense.amount;
//     }
//     notifyListeners();
//   }
//
//   void updateExpense(int index, Expense newExpense) {
//     _expenses[index] = newExpense;
//     if (newExpense.reason != 'Money Added') {
//       _totalExpense -= _expenses[index].amount; // Update total expense if category changes
//     }
//     _totalExpense += newExpense.amount; // Add new expense amount
//     notifyListeners();
//   }
//
//   void removeExpense(int index) {
//     _expenses.removeAt(index);
//     if (_expenses[index].reason != 'Money Added') {
//       _totalExpense -= _expenses[index].amount; // Update total expense if removing non-money added expense
//     }
//     notifyListeners();
//   }
//
//   double getMonthlyAddedMoney(DateTime month) {
//     return _expenses.where((expense) => expense.date.month == month.month && expense.date.year == month.year && expense.reason == 'Money Added').fold<double>(0.0, (sum, expense) => sum + expense.amount);
//   }
//
//   double getMonthExpense(DateTime month) {
//     return _expenses.where((expense) => expense.date.month == month.month && expense.date.year == month.year && expense.reason != 'Money Added').fold<double>(0.0, (sum, expense) => sum + expense.amount);
//   }
// }


// class ExpenseProvider extends ChangeNotifier {
//   final TextEditingController categoryName = TextEditingController();
//   final TextEditingController addBalance = TextEditingController();
//
//   List<AddAmount> _addAmount=[];
//   // List<AddAmount> get totalAddedMoney => _addAmount;
//   void addAmount(AddAmount addAmount){
//     _addAmount.add(addAmount);
//   }
//      double getTotalAmmount(){
//
//      }
// }

class ExpenseProvider with ChangeNotifier {
  // final TextEditingController categoryName = TextEditingController();
  // final TextEditingController addBalance = TextEditingController();
  ///
  // final List<Earning> _dailyEarnings = [];
  // final List<Expense> _dailyExpanse=[];
  // List<Expense> get totalExpanse=> _dailyExpanse;
  //
  // List<Earning> get totalAmount => _dailyEarnings;
  //
  // void addEarning(Earning addAmount) {
  //     _dailyEarnings.add(addAmount);
  //   notifyListeners();
  // }
  //
  // double getAddedMoney() {
  //   return _dailyEarnings.fold(0.0, (total, earning) => total + earning.amount);
  // }
  //
  // void addExpanse(Expense expense){
  //   _dailyEarnings.add(expense);
  //   notifyListeners();
  // }
  // double getTotalExpanse(){
  //   return _dailyExpanse.fold(0.0, (total, expanse) => total +expanse.amount);
  // }
 ///

  final List<Earning> _dailyEarnings = [];
  final List<Expense> _dailyExpenses = [];
  List<Earning> get totalEarnings => _dailyEarnings;
  List<Expense> get totalExpenses => _dailyExpenses;
  Expense? _editExpense;

  void startEditing(Expense expense){
    _editExpense=expense;
    notifyListeners();
  }
  void stopEditing(){
    _editExpense = null;
    notifyListeners();
  }

  bool isEditing(Expense expense) {
    return _editExpense == expense;
  }


  void addEarning(Earning earning) {
    _dailyEarnings.add(earning);
    notifyListeners();
  }

  double getAddedMoney() {
    return _dailyEarnings.fold(0.0, (total, earning) => total + earning.amount);
  }

  void addExpense(Expense expense) {
    _dailyExpenses.add(expense);
    notifyListeners();
  }

  double getTotalExpense() {
    return _dailyExpenses.fold(0.0, (total, expense) => total + expense.amount);
  }


}