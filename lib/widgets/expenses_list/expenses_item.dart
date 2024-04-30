import 'package:flutter/material.dart';
import 'package:travel_expenses/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            Text(expense.title),
            Row(
              children: [
                Text(
                  "${expense.amount.toStringAsFixed(2)} ",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
