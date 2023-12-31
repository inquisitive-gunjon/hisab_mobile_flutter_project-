class Earning{
  final String categoryName;
  final double amount;

  const Earning({required this.categoryName, required this.amount,});

}

class Expense {
  final String categoryName;
  final DateTime date;
  final String reason;
  final double amount;

  const Expense({required this.categoryName, required this.date, required this.reason, required this.amount});
}