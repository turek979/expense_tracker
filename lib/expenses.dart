import 'package:expense_tracker/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense_model.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<ExpenseModel> _registeredExpenses = [
    ExpenseModel(
        title: 'Lego',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.leisure),
    ExpenseModel(
        title: 'Notepad',
        amount: 5.99,
        date: DateTime.now(),
        category: Category.work),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text('Chart'),
            ExpensesList(expenses: _registeredExpenses)
          ],
        ),
      ),
    );
  }
}
