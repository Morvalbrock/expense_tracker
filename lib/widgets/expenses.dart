import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  //useing the data modual from expense class
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'FLutter course',
      amount: 18.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'cinema',
      amount: 17.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openaddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ExpensesTacker'),
        actions: [
          IconButton(
            onPressed: () {
              _openaddExpenseOverlay();
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
