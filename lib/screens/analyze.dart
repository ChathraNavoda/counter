import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Analyze extends StatelessWidget {
  const Analyze({Key? key});

  @override
  Widget build(BuildContext context) {
    // Hardcoded data for expenses
    List<Expense> expenses = [
      Expense(category: 'Food', amount: 40),
      Expense(category: 'Rent', amount: 20),
      Expense(category: 'Entertainment', amount: 30),
      Expense(category: 'Other', amount: 10),
      // Add more expenses as needed
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              GoRouter.of(context).go("/profile");
            },
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(60),
            ),
          ),
          title: const Text("Analyze"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple.shade100,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Expense Analysis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Display analysis based on expenses
            for (Expense expense in expenses)
              ExpenseItem(category: expense.category, amount: expense.amount),
          ],
        ),
      ),
     bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
        ],
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            GoRouter.of(context).go("/profile");
          }
        },
      ),
    );
  }
}

class Expense {
  final String category;
  final double amount;

  Expense({required this.category, required this.amount});
}

class ExpenseItem extends StatelessWidget {
  final String category;
  final double amount;

  const ExpenseItem({Key? key, required this.category, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(category),
        Text('\$${amount.toStringAsFixed(2)}'), // Format amount as currency
      ],
    );
  }
}