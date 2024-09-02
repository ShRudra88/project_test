class Transaction {
  final String name;
  final String date;
  final double amount;
  final String category;

  Transaction({
    required this.name,
    required this.date,
    required this.amount,
    required this.category,
  });
}

class User {
  final String name;
  final double balance;

  User({
    required this.name,
    required this.balance,
  });
}
