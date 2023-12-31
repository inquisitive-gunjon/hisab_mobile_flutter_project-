import 'package:flutter/material.dart';
import '../data/model/Expanse.dart';
import '../provider/expanseProvider.dart';

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final expenseProvider = ExpenseProvider();
//   final TextEditingController reasonController = TextEditingController();
//   final TextEditingController amountController = TextEditingController();
//   DateTime? selectedMonth;
//
//   void _addExpense() {
//     final reason = reasonController.text;
//     final amount = double.parse(amountController.text);
//     final expense = Expense(date: DateTime.now(), reason: reason, amount: amount);
//     expenseProvider.addExpense(expense);
//     reasonController.clear();
//     amountController.clear();
//   }
//
//   void _editExpense(int index) {
//     final oldExpense = expenseProvider.expenses[index];
//     reasonController.text = oldExpense.reason;
//     amountController.text = oldExpense.amount.toString();
//     showModalBottomSheet<void>(
//       context: context,
//       builder: (context) =>
//           EditExpenseBottomSheet(
//             initialReason: oldExpense.reason,
//             initialAmount: oldExpense.amount,
//             onConfirm: (newReason, newAmount) => {
//               expenseProvider.updateExpense(index, Expense(date: oldExpense.date, reason: newReason, amount: newAmount)),
//               Navigator.pop(context),
//             },
//           ),
//     );
//   }
//
//   void _deleteExpense(int index) {
//     showDialog<void>(
//         context: context,
//         builder: (context) =>
//             AlertDialog(
//             title: Text('Confirm Delete'),
//             content: Text('Are you sure you want to delete this expense?'),
//             actions: <Widget>[
//             TextButton(
//             onPressed: () => Navigator.pop(context),
//     child: Text('Cancel'),
//     ),
//     TextButton(
//     onPressed: () {
//     expenseProvider.removeExpense(index);
//     Navigator.pop(context);
//     }, child: Text('Delete'),
//     ),)
//
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final expenseProvider = ExpenseProvider();
//   final TextEditingController reasonController = TextEditingController();
//   final TextEditingController amountController = TextEditingController();
//   DateTime? selectedMonth;
//
//
//   }

  class Sfr extends StatefulWidget {
    const Sfr({super.key});

    @override
    State<Sfr> createState() => _SfrState();
  }

  class _SfrState extends State<Sfr> {
    final expenseProvider = ExpenseProvider();
    final TextEditingController reasonController = TextEditingController();
    final TextEditingController amountController = TextEditingController();
    DateTime? selectedMonth;


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          
        ),
      ) ;
    }
  }
