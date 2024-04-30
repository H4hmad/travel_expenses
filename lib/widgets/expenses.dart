import 'package:flutter/material.dart';
import 'package:travel_expenses/models/expense.dart';
import 'package:travel_expenses/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _myExpenses = [
    Expense(
      title: 'ValentineEEE Dinner',
      amount: 399.9,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
        title: 'Sky Diving',
        amount: 500.9,
        date: DateTime.now(),
        category: Category.eexperience)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Travel Expenses App!"),
          const Text("Chard goes here"),
          Expanded(
            child: ExpensesList(allExpenses: _myExpenses),
          ),
        ],
      ),
    );
  }
}
