import 'package:flutter/material.dart';
import 'package:project_test/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController _controller = HomeController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = _controller.getUser();
    final transactions = _controller.getTransactions();

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Good morning, 👋",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    user.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Total balance",
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "\$${user.balance.toStringAsFixed(2)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _controller.sendMoney,
                        child: _buildIconButton(Icons.send, "Send"),
                      ),
                      GestureDetector(
                        onTap: _controller.requestMoney,
                        child: _buildIconButton(Icons.request_page, "Request"),
                      ),
                      GestureDetector(
                        onTap: _controller.topUp,
                        child: _buildIconButton(Icons.add, "Top Up"),
                      ),
                      GestureDetector(
                        onTap: _controller.withdraw,
                        child: _buildIconButton(Icons.money_off, "Withdraw"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Quick Transactions
            const Text(
              "Quick Transaction",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(child: Text("K")),
                const CircleAvatar(child: Text("F")),
                const CircleAvatar(child: Text("D")),
                const CircleAvatar(child: Text("S")),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Recent Activity
            const Text(
              "Recent Activity",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final transaction = transactions[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      child: const Icon(
                        Icons.account_balance_wallet,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(transaction.name),
                    subtitle: Text(transaction.date),
                    trailing: Text(
                      "\$${transaction.amount.toStringAsFixed(2)}",
                      style: TextStyle(
                        color: transaction.amount < 0
                            ? Colors.red
                            : Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.blue),
        ),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
