import 'package:flutter/material.dart';
import '../../models/expense.dart';
import 'expense_item.dart';

class ExpensesList extends StatelessWidget{
  const ExpensesList({
    super.key,
    required this.expenses,
});
  final List<Expense> expenses;

  Widget build(BuildContext context)
  {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx,index)=> ExpenseItem(expense:expenses[index]),
    );
  }
}