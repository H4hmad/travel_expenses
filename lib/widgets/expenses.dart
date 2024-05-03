import 'package:flutter/material.dart';
import 'package:travel_expenses/models/expense.dart';
import 'package:travel_expenses/widgets/expenses_list/expenses_list.dart';
import 'package:travel_expenses/widgets/new_eexpense.dart';

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
        category: Category.experience)
  ];

  void _openAddExpenseItemOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (modalContext) => NewExpense(
        onAddExpense: _addExpense,
      ),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _myExpenses.add(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel Expenses Tracker  "),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _openAddExpenseItemOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          // const Text("Travel Expenses App!"),
          const Text("Chard goes here"),
          const SizedBox(height: 30),
          Expanded(
            child: ExpensesList(allExpenses: _myExpenses),
          ),
        ],
      ),
    );
  }
}
