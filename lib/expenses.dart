import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Groceries',
        amount: 15.99,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Taxi',
        amount: 10.99,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        title: 'Lunch',
        amount: 8.99,
        date: DateTime.now(),
        category: Category.food),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Chart'),
          const Text('Expenses List...'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
