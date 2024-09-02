import 'package:project_test/models/transaction_model.dart';
import 'package:project_test/models/user_model.dart';

class HomeController {
  User user = User(name: "Jane Cooper", balance: 32546.90);

  List<Transaction> transactions = [
    Transaction(name: "Netflix", date: "Jun 12, 2023", amount: -68.32, category: "Entertainment"),
    Transaction(name: "Walmart", date: "Jun 23, 2023", amount: -88.22, category: "Shopping"),
    Transaction(name: "Masjeda", date: "Jul 05, 2023", amount: -50.63, category: "Shopping"),
  ];

  User getUser() {
    return user;
  }

  List<Transaction> getTransactions() {
    return transactions;
  }

  void sendMoney() {
    // kaj korte hbe
  }

  void requestMoney() {
    // kaj korte hbe

  }

  void topUp() {
    // kaj korte hbe
  }

  void withdraw() {
    // kaj korte hbe
  }
}
